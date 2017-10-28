using System.Collections.Generic;

namespace Testing.Reports
{
    /// <summary>
    /// class that contains all the reports from MULTIPLE people assigned to ONE location
    /// </summary>
    class CaseFile
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
    }
}
