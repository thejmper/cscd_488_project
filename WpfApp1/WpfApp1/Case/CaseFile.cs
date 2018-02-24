using System;
using System.Collections.Generic;

using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Markup;
using System.Windows.Media;
using System.Xml;

using WpfApp1.FormItems;
using WpfApp1.Users;
using WpfApp1.Utils;

namespace WpfApp1.Case
{   
    /// <summary>
    /// Represents a single temporal incident at a single physical location, but containing reports 
    /// from one or more users. This class manages all the save/load logic and everything else that's 
    /// needed for a casefile to work without asking the user to do anything with it.
    /// </summary>
    public class CaseFile : TabbedGroup<Report>
    {
        //--member fields--//
        /// <summary>
        /// facility name for this case file
        /// </summary>
        public string facilityName { get; private set; }
        /// <summary>
        /// license number of the facility we're investigating
        /// </summary>
        public int facilitylicenseNumber { get; private set; }
        /// <summary>
        /// Is this casefile open for editing.
        /// </summary>
        public bool isOpen { get; private set; }

        /// <summary>
        /// user IDs of all users who're allowed to access and edit this report! 
        /// </summary>
        public List<String> assignedUserIDs { get; private set; }
        /// <summary>
        /// list of all the reports that have been created for this report.
        /// (delgaged to the internal and usually inacessable element list
        /// because elementList is not a very obvious name. reports give
        /// a better impression of what this field actually does.)
        /// </summary>
        public List<Report> reports
        {
            get
            {
                return this.elementList;
            }
        }

        //--Construction--/
        /// <summary>
        /// EVC for public use.
        /// </summary>
        /// <param name="name">name of this casefile</param>
        /// <param name="facilityName">name of the facility around which this casefile is built</param>
        /// <param name="facilitylicesnseNumber">license number of this case file.</param>
        public CaseFile(string name, string facilityName, int facilitylicesnseNumber) : base(name)
        {
            this.facilityName = facilityName;
            this.facilitylicenseNumber = facilitylicesnseNumber;

            this.isOpen = true;

            this.assignedUserIDs = new List<string>();
        }
        /// <summary>
        /// internal constructor used for the serializer method.
        /// </summary>
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
        /// <summary>
        /// merges a local slave casefile into the master casefile held on the server. The casefile instance
        /// that calls this method is considered the master, and the local copy isn't changed. This should only be
        /// called by the master version and then merged into the server.
        /// 
        /// If a the same report exists on both copies, the more recentlly updated one will be prioritized. 
        /// If a report exists only on the local copy, it will be added to the master copy.
        /// 
        /// If the local copy's ID doesn't match the ID of the master copy, an exception will be thrown 
        /// as that just doesn't make any sense.
        /// </summary>
        /// <param name="other">local case file to merge into this one.</param>
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


        //--list manipulation--//
        /// <summary>
        /// Assigns a user to the casefile, and returns the report that user is associated with.
        /// 
        /// Throws an exception if the user is already assigned to the casefile.
        /// </summary>
        /// <param name="user">the user we're trying to assign</param>
        /// <returns>A report associated with the given user.</returns>
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
        /// <summary>
        /// manages logic to add a report to this casefile. Not publically accessible.
        /// </summary>
        /// <param name="element"></param>
        protected override void AddElementInternal(Report element)
        {
            element.caseFile = this;
            base.AddElementInternal(element);
        }

        //--cloning. Shouldn't be used!--//
        /// <summary>
        /// Don't use this. Casefiles shouldn't ever be cloned. This will throw an exception if you try to use it.
        /// </summary>
        /// <returns></returns>
        protected override ElementGroup<Report> CloneInner()
        {
            throw new NotImplementedException("Don't clone case files.");
        }

        //--save/load--//
        /// <summary>
        /// writes the inner part of a casefile's XML.
        /// </summary>
        /// <param name="writer"></param>
        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("facilityName", this.facilityName);
            writer.WriteElementString("facilityLicenseNumber", this.facilitylicenseNumber.ToString());

            writer.WriteElementString("numUsers", this.assignedUserIDs.Count.ToString());
            foreach (string id in assignedUserIDs)
                writer.WriteElementString("id", id);


            base.WriteXMLInner(writer);
        }
        /// <summary>
        /// reads the inner part of a casefile's XML.
        /// </summary>
        /// <param name="reader"></param>
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
        /// overridable loading class. DO NOT USE, it needs to be here because this class extends IXMLserializeable, 
        /// but this method doesn't handle the checksum
        /// </summary>
        /// <param name="reader"></param>
        public override void ReadXml(XmlReader reader)
        {
            base.ReadXml(reader);
            this.SetReadOnly(true);
        }

        //print!
        /// <summary>
        /// prints this casefile to paper.
        /// </summary>
        public void Print()
        {
            //call up a print dialog to figure out what print device
            //we're using (paper printer, document printer, etc)
            //and the paper dimentions
            PrintDialog pd = new PrintDialog();
			if(pd.ShowDialog() != true){
				return;
			}

            //size of the page we're printing too.
            Size pageSize = new Size(pd.PrintableAreaWidth, pd.PrintableAreaWidth);

            //use a FixedDocument to make sure we have proper control over the format
            FixedDocument doc = new FixedDocument();
            doc.DocumentPaginator.PageSize = pageSize;

            //add each report to the document
            foreach(Report rep in this.elementList)
            {
                //...which means adding each report's forms to the print document
                foreach(Form form in rep.GetForms())
                {
                    //each formn needs to go on a page...
                    FixedPage page = new FixedPage();
                    page.Width = pageSize.Width;
                    page.Height = pageSize.Height;

                    //fetch the form's stackpanel (it's UI element) and format it so it
                    //doesn't run off the page or anything
                    StackPanel stackPanel = (StackPanel)form.UIelement.CloneElement();
                    stackPanel.Width = pageSize.Width;

                    //we have to do this dumb stuff to make the form display right
                    //It's effectivly magic, don't touch this or you'll break things
                    page.Children.Add(stackPanel);
                    page.Measure(pageSize);
                    page.Arrange(new Rect(new Point(), pageSize));
                    page.UpdateLayout();

                    //now that the page is setup, we can add it to the document
                    PageContent content = new PageContent();
                    ((IAddChild)content).AddChild(page);
                    doc.Pages.Add(content);
                }
            }
            
            //now that the document's all assembled, we can print it!
            pd.PrintDocument(doc.DocumentPaginator, "myDocument");
        }

        //--debugging/testing--//
        /// <summary>
        /// gives a simple string representation of this casefile. Shouldn't need to be used.
        /// </summary>
        /// <returns></returns>
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
