using System;
using System.Collections.Generic;

using System.Windows;
using System.Windows.Controls;
using System.Xml;

using WpfApp1.FormItems;
using WpfApp1.Users;

namespace WpfApp1.Case
{
    public class CaseFile : ElementGroup<Report>
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
        /// user IDs of all users who're allowed to access and edit this report! 
        /// </summary>
        public List<String> assignedUserIDs { get; private set; }

        //--UI stuff--//
        public override UIElement UIelement
        {
            get
            {
                textBlock.Text = this.ToString();
                return textBlock;
            }
        }
        private TextBlock textBlock;

        //--Construction--/
        public CaseFile(string name, string facilityName, int facilitylicesnseNumber) : base(name)
        {
            this.facilityName = facilityName;
            this.facilitylicenseNumber = facilitylicesnseNumber;

            this.textBlock = new TextBlock();
            this.textBlock.Text = this.ToString();
        }
        protected CaseFile() : this("Unnamed", "unnamed", 0)
        {

        }

        //--opening--//
        /// <summary>
        /// opens this case file for viewing/editing.
        /// If the user's assigned to this case file but is not a user, he can only edit his specific portion,
        /// if he's an admin, he can view and edit the entire thing.
        /// if he's neither, he can only view.
        /// </summary>
        /// <param name="user"></param>
        public void OpenAsUser(User user)
        {
            this.SetReadOnly(true);
            if (user.isAdmin)
            {
                this.SetReadOnly(false);
            }
            else if (assignedUserIDs.Contains(user.id))
            {
                Report report = this.elementList.Find(item => item.name.Equals(user.name));
                report.SetReadOnly(false);
            }
        }
        


        //--list manipulation--//
        internal Report AssignUser(User user)
        {
            if (assignedUserIDs.Contains(user.id))
                throw new ArgumentException("ERROR: User'" + user.ToString() + "' already assigned to this case file!");

            Report report = new Report(user.id, user.id, user.name, this);
            this.AddElementInternal(report);

            return report;
        }      
        //--cloning. Shouldn't be used!--//
        protected override ElementGroup<Report> CloneInner()
        {
            throw new NotImplementedException("Don't clone case files.");
        }

        //--save/load--//
        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("facilityName", this.facilityName);
            writer.WriteElementString("facilityLicenseNumber", this.facilitylicenseNumber.ToString());
            base.WriteXMLInner(writer);
        }
        protected override void ReadXMLInner(XmlReader reader)
        {
            this.facilityName = reader.ReadElementContentAsString();
            this.facilitylicenseNumber = Int32.Parse(reader.ReadElementContentAsString());
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
