﻿using System;
using System.Collections.Generic;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace Testing.Reports
{
    /// <summary>
    /// class that contains all the reports from MULTIPLE people assigned to ONE location
    /// </summary>
    public class CaseFile: IXmlSerializable
    {
        //------Member Fields------//
        /// <summary>
        /// UNIQUE case ID. created when the case-file is created from the server-side
        /// and asasigned to users.
        /// </summary>
        public string caseID;
        
        //--faciilty data--//
        /// <summary>
        /// name of the facility in question.
        /// </summary>
        public string facilityName { get; private set; }
        /// <summary>
        /// id number of the facility
        /// </summary>
        public int facilityLicenseNo { get; private set; }

        //--sub-reports--//
        private List<Report> reports;

        //--creation--//
        public CaseFile(string caseID, string facilityName, int facilityLicenseNo)
        {
            this.caseID = caseID;
            this.facilityName = facilityName;
            this.facilityLicenseNo = facilityLicenseNo;

            this.reports = new List<Report>();
        }
        private CaseFile()
        {
            this.caseID = "NONE_ASSIGNED";
            this.facilityName = "NONE_ASSIGNED";
            this.facilityLicenseNo = -1;

            this.reports = new List<Report>();
        }

        //--merging--//
        /// <summary>
        /// merges a given report into this case file
        /// </summary>
        /// <param name="report"></param>
        public void Merge(Report report)
        {
            //guard conditions
            if (!report.caseFile.caseID.Equals(this.caseID))
                throw new ArgumentException("Cannot merge report into casefile, it's attached to another case file!");

            Report oldReport = reports.Find(item => item.reportID.Equals(report.reportID));
            if (oldReport == null)
                throw new ArgumentException("Cannot merge report into casefile, the case file has no reccord of that report!");

            reports.Remove(oldReport);
            reports.Add(report);
        }

        //--report manupulation--//
        /// <summary>
        /// generates a new report for this case file.
        /// TOOD: make sure the licensor this report is attached to 
        /// is actually allowed to work on this case!
        /// </summary>
        /// <param name="reportID"></param>
        /// <param name="licensorName"></param>
        /// <returns></returns>
        public Report AddReport(string reportID, string licensorName)
        {
            if (reports.Exists(item => item.reportID.Equals(reportID)))
                throw new System.ArgumentException("Report id: " + reportID + " aready assigned to this report!");


            Report report = new Report(this, reportID, licensorName);
            this.reports.Add(report);

            return report;
        }

        //--save/load--//
        public void ReadXml(XmlReader reader)
        {
            //header
            reader.ReadStartElement();
            this.caseID = reader.ReadElementContentAsString();
            this.facilityName = reader.ReadElementContentAsString();
            this.facilityLicenseNo = Int32.Parse(reader.ReadElementContentAsString());

            //inner content
            //now we're into reports
            reader.ReadStartElement();
            reader.MoveToContent();

            while (reader.NodeType != XmlNodeType.EndElement)
            {
                XmlSerializer ser = new XmlSerializer(typeof(Report));
                Report report = (Report)ser.Deserialize(reader);
                reader.MoveToContent();

                this.reports.Add(report);
                //report.SetCaseFile(this);
            }

            reader.ReadEndElement();
            //now we're done with the reports.
        }
        public void WriteXml(XmlWriter writer)
        {
            //header
            writer.WriteElementString("caseID", this.caseID);
            writer.WriteElementString("facilityName", this.facilityName);
            writer.WriteElementString("facilityLicenseNo", this.facilityLicenseNo.ToString());

            //inner content
            writer.WriteStartElement("reports");
            foreach (Report report in this.reports)
            {
                writer.WriteComment(report.reportID);
                writer.WriteStartElement(report.GetType().Name);
                report.WriteXml(writer);
                writer.WriteEndElement();
            }
            writer.WriteEndElement();
        }
        public XmlSchema GetSchema()
        {
            return null;
        }

        public override string ToString()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.AppendLine("id: " + this.caseID);
            sb.AppendLine("Facility: " + this.facilityName);
            sb.AppendLine("Facility License No: " + this.facilityLicenseNo.ToString());

            sb.AppendLine("");
            foreach(Report report in this.reports)
            {
                sb.AppendLine(report.ToString());
                sb.AppendLine("");
            }

            return sb.ToString();
        }
    }
}
