using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Markup;
using System.Windows.Media;
using System.Xml;
using System.Xml.Serialization;
using WpfApp1.FormItems;
using WpfApp1.Users;
using WpfApp1.Utils;

namespace WpfApp1.Case
{   
    public class CaseFile : TabbedGroup<Report>
    {
        private const string CHECKSUM_NODE_NAME = "checksum";

        //--member fields--//
        /// <summary>
        /// facility name for this case file
        /// </summary>
        public string facilityName { get; private set; }
        /// <summary>
        /// license number of the facility we're investigating
        /// </summary>
        public int facilitylicenseNumber { get; private set; }
        public bool isOpen { get; private set; }

        /// <summary>
        /// user IDs of all users who're allowed to access and edit this report! 
        /// </summary>
        public List<String> assignedUserIDs { get; private set; }

        public List<Report> reports
        {
            get
            {
                return this.elementList;
            }
        }

        //--UI stuff--//

        //--Construction--/
        public CaseFile(string name, string facilityName, int facilitylicesnseNumber) : base(name)
        {
            this.facilityName = facilityName;
            this.facilitylicenseNumber = facilitylicesnseNumber;

            this.isOpen = true;

            this.assignedUserIDs = new List<string>();
        }
        protected CaseFile() : this("Unnamed", "unnamed", 0)
        {

        }

        //--opening--//
        /// <summary>
        /// opens this case file for viewing/editing, and returns the report this user's working on.
        /// If the user's assigned to this case file but is not a user, he can only edit his specific portion,
        /// if he's an admin, he can view and edit the entire thing.
        /// if he's neither, he can only view.
        /// </summary>
        /// <param name="user"></param>
        public Report OpenAsUser(User user)
        {
            if (user.isAdmin)
            {
                this.SetReadOnly(false);
                return null;
            }
            else if (assignedUserIDs.Contains(user.id))
            {
                Report report = this.elementList.Find(item => item.licensorID.Equals(user.id));
                report.SetReadOnly(false);
                return report;
            }
            this.SetReadOnly(true);
            return null;
        }
        
        //--merging--//
        public void MergeIntoSelf(CaseFile other)
        {
            if (!this.name.Equals(other.name))
                throw new ArgumentException("ERROR case file " + name + "does not match " + other.name + ". They cannot be merged.");

            foreach (Report report in other.reports)
            {
                Report localCopy = this.elementList.Find(x => x.name.Equals(report.name));
                if (localCopy == null)
                    this.AddElementInternal(report);
                else if(report.lastModified > localCopy.lastModified)
                {
                    this.RemoveElementInternal(localCopy);
                    this.AddElementInternal(report);
                }
            }
        }

        //--closing--//

        //--list manipulation--//
        public Report AssignUser(User user)
        {
            if (assignedUserIDs.Contains(user.id))
                throw new ArgumentException("ERROR: User'" + user.ToString() + "' already assigned to this case file!");

            assignedUserIDs.Add(user.id);

            Report report = new Report(user.id +"_Report", user.name, user.id, this);
            this.AddElementInternal(report);



            return report;
        }

        //--list manipulation--//
        protected override void AddElementInternal(Report element)
        {
            element.caseFile = this;
            base.AddElementInternal(element);
        }

        //--cloning. Shouldn't be used!--//
        protected override ElementGroup<Report> CloneInner()
        {
            throw new NotImplementedException("Don't clone case files.");
        }

        //--save/load--//
        public static void SaveCaseFile(CaseFile caseFile, string filename)
        {
            //save the casefile to a string so we can get its char data, but do NOT
            //save it to a file yet. We want to keep it in memory until we can find the checksum
            //and make sure nobody messes with this that they shouldn't.
            StringBuilder sb = new StringBuilder();
            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (StringWriter writer = new StringWriter(sb))
            {
                ser.Serialize(writer, caseFile);
            }

            //create a temp XML document.
            XmlDocument doc = new XmlDocument();
            doc.LoadXml(sb.ToString());


            //use that to find the char count of the case file's XML SANS <?xml.... tag at the top
            int checksum = doc.DocumentElement.OuterXml.Length;

            XmlNode checksumNode = doc.CreateNode("element", CHECKSUM_NODE_NAME, "");
            checksumNode.InnerText = checksum.ToString();
            doc.DocumentElement.AppendChild(checksumNode);

            

            doc.Save(filename);
        }
        public static CaseFile LoadCaseFile(string filename)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(filename);

            int checksum = -1;
            XmlNodeList childNodes = doc.DocumentElement.ChildNodes;
            for(int i = childNodes.Count-1; i >= 0; i--)
            {
                if (childNodes[i].Name.Equals(CHECKSUM_NODE_NAME))
                {
                    XmlNode checksumNode = childNodes[i];
                    checksum = int.Parse(checksumNode.InnerText);
                    doc.DocumentElement.RemoveChild(checksumNode);
                }
            }

            if (doc.DocumentElement.OuterXml.Length != checksum)
                throw new ArgumentException("ERROR: checksum does not match! File '" + filename + "' is corrupt!");

            CaseFile cf;

            XmlSerializer ser = new XmlSerializer(typeof(CaseFile));
            using (TextReader reader = new StringReader(doc.InnerXml))
            {
                cf = (CaseFile)ser.Deserialize(reader);
            }

            return cf;
        }
        protected override void WriteXMLInner(XmlWriter writer)
        {
            //writer.WriteAttributeString("checkSum", "0");
            writer.WriteElementString("facilityName", this.facilityName);
            writer.WriteElementString("facilityLicenseNumber", this.facilitylicenseNumber.ToString());

            writer.WriteElementString("numUsers", this.assignedUserIDs.Count.ToString());
            foreach (string id in assignedUserIDs)
                writer.WriteElementString("id", id);


            base.WriteXMLInner(writer);
        }
        protected override void ReadXMLInner(XmlReader reader)
        {
            this.facilityName = reader.ReadElementContentAsString();
            this.facilitylicenseNumber = Int32.Parse(reader.ReadElementContentAsString());

            int idCount = Int32.Parse(reader.ReadElementContentAsString());
            for (int i = 0; i < idCount; i++)
                this.assignedUserIDs.Add(reader.ReadElementContentAsString());
            base.ReadXMLInner(reader);
        }
        /// <summary>
        /// overridable loader!
        /// </summary>
        /// <param name="reader"></param>
        public override void ReadXml(XmlReader reader)
        {
            base.ReadXml(reader);
            this.SetReadOnly(true);
        }

        //print!
        public void Print()
        {
            PrintDialog pd = new PrintDialog();
			if(pd.ShowDialog() != true){
				return;
			}

            Size pageSize = new Size(pd.PrintableAreaWidth, pd.PrintableAreaWidth);



            FixedDocument doc = new FixedDocument();
            doc.DocumentPaginator.PageSize = pageSize;

            foreach(Report rep in this.elementList)
            {
                foreach(Form form in rep.GetForms())
                {
                    FixedPage page = new FixedPage();
                    page.Width = pageSize.Width;
                    page.Height = pageSize.Height;

                    StackPanel stackPanel = (StackPanel)form.UIelement.CloneElement();
                    stackPanel.Width = pageSize.Width;

                    page.Children.Add(stackPanel);
                    page.Measure(pageSize);
                    page.Arrange(new Rect(new Point(), pageSize));
                    page.UpdateLayout();

                    PageContent content = new PageContent();
                    ((IAddChild)content).AddChild(page);
                    doc.Pages.Add(content);
                }
            }

            

            pd.PrintDocument(doc.DocumentPaginator, "myDocument");
        }

        //--debugging/testing--//
        public override string ToString()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.AppendLine("CaseID: " + this.name);
            sb.AppendLine("Facilty Name: " + this.facilityName);
            sb.AppendLine("Facility License Number: " + this.facilitylicenseNumber.ToString());

            sb.AppendLine("Reports: " + this.elementList.Count);

            return sb.ToString();
        }
    }
}
