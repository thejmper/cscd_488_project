using System;
using System.Collections.Generic;

using System.Windows;
using System.Windows.Controls;
using System.Xml;

using WpfApp1.FormItems;
using WpfApp1.Reports.Syncers;
using WpfApp1.Users;

namespace WpfApp1.Case
{   
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
        /// user IDs of all users who're allowed to access and edit this report! 
        /// </summary>
        public List<String> assignedUserIDs { get; private set; }
        /// <summary>
        /// last time the case file data specifically (not reports within the case file) was modified
        /// </summary>
        public DateTime lastModified { get; set; }

        /// <summary>
        /// whether the case is closed.
        /// </summary>
        public bool closed { get; set; }

        /// <summary>
        /// UNIQUE case ID. created when the case-file is created from the server-side
        /// and asasigned to users.
        /// </summary>
        public string caseID;

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
            lastModified = DateTime.Now;


            this.assignedUserIDs = new List<string>();
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
            if (user.isAdmin)
            {
                this.SetReadOnly(false);
            }
            else if (assignedUserIDs.Contains(user.name))
            {
                Report report = this.elementList.Find(item => item.licensorID.Equals(user.id));
                report.SetReadOnly(false);
            }
        }

        public Report AddReport(string reportID, string licensorName)
        {
            if (reports.Exists(item => item.reportID.Equals(reportID)))
                throw new System.ArgumentException("Report id: " + reportID + " aready assigned to this report!");


            Report report = new Report("unnamed", licensorName, "noID", this); // TODO: Correct this
            this.reports.Add(report);

            return report;
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

        //--list manipulation--//
        internal Report AssignUser(User user)
        {
            if (!assignedUserIDs.Contains(user.id))
            {
                assignedUserIDs.Add(user.id);
                //throw new ArgumentException("ERROR: User'" + user.ToString() + "' already assigned to this case file!");
            }

            Report report = new Report(user.id +"_Report", user.name, user.id, this);
            this.AddElementInternal(report);
            DatabaseAssignUser(user);


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
        protected override void WriteXMLInner(XmlWriter writer)
        {
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

        //--Database stuff--//

        public Report UpdateReport(string reportID, DateTime lastModified)
        {
            foreach (Report report in this.reports)
            {
                if (report.reportID == reportID)
                {
                    report.lastModified = lastModified;
                    return report;
                }
            }
            throw new System.ArgumentException("Report id: " + reportID + " does not exist in this case file!");
        }

        public Report GetReport(string reportID)
        {
            foreach (Report report in this.reports)
            {
                if (report.reportID == reportID)
                {
                    return report;
                }
            }
            throw new System.ArgumentException("Report id: " + reportID + " does not exist in this case file!");
        }

        public Boolean HasReport(string reportID)
        {
            foreach (Report report in this.reports)
            {
                if (report.reportID == reportID)
                {
                    return true;
                }
            }
            return false;
        }

        public void Sync(User user)
        {
            //CaseFileSyncer syncer = new CaseFileSyncer();
            //CaseFile tempCaseFile = syncer.SyncCaseFile(this, user);
            //caseID = tempCaseFile.caseID;
            //facilityName = tempCaseFile.facilityName;
            //facilitylicenseNumber = tempCaseFile.facilitylicenseNumber;
            //reports = tempCaseFile.reports;
        }

        public void DatabaseAssignUser(User user)
        {
            //CaseFileSyncer syncer = new CaseFileSyncer();
            //syncer.AssignUser(user, this);
        }
    }
}
