using Testing.Reports.Fields;

using System;
using System.Collections.Generic;

namespace Testing.Reports
{
    /// <summary>
    /// A report filled out by ONE person for ONE facility. 
    /// Can contain multiple reports done at different times, however.
    /// </summary>
    class Report
    {
        //--member fields--//
        //stuff unique to this report!
        /// <summary>
        /// the case file we're assigned to!
        /// </summary>
        internal CaseFile caseFile { get; private set; }
        /// <summary>
        /// UNIQUE id of this report WITHIN THE CASE FILE. the same report Id
        /// can be reused many times so long as each reuse is in a different case file.
        /// 
        /// To avoid conflics, append a username or something on the front to make sure
        /// we never have any overlap within a case file.
        /// </summary>
        public string reportID { get; private set; }
        /// <summary>
        /// name of the person doing the report
        /// </summary>
        public string licensorName { get; private set; }
        /// <summary>
        /// unique id of this report!
        /// </summary>
        public string reportName { get; private set; }
        
        //stuff we get from the case file
        /// <summary>
        /// facility we're reporting on. Gotten from the caseFile.
        /// </summary>
        public string facilityName { get { return this.caseFile.facilityName; } }
        /// <summary>
        /// license number of the facility we're reporting on. Gotten from case file.
        /// </summary>
        public int facilityLicenseNo { get { return this.caseFile.facilityLicenseNo; } }

        //stuff that lives in the report
        private List<Form> forms;

        /// <summary>
        /// creates a report. Internal only Should be called *only* from the case-file level, that way
        /// we can ensure data integrity.
        /// </summary>
        /// <param name="caseFile"></param>
        /// <param name="reportID"></param>
        /// <param name="licensorName"></param>
        internal Report(CaseFile caseFile, string reportID, string licensorName)
        {
            this.caseFile = caseFile;
            this.reportID = reportID;
            this.licensorName = licensorName;

            this.forms = new List<Form>();
        }

        /// <summary>
        /// generates the proper name for a form, links it up, and
        /// returns it!
        /// </summary>
        /// <param name="formTemplate"></param>
        /// <returns></returns>
        public Form AddForm(Form formTemplate)
        {
            string name = formTemplate.name;
            int suffix = 0;

            
            //add the proper suffix!
            do
            {
                suffix++;
            } while (this.forms.Exists(item => item.name.Equals(name + suffix.ToString())));

            Form newForm = (Form)formTemplate.Clone(name + suffix.ToString());
            newForm.SetReport(this);
            this.forms.Add(newForm);

            return newForm;          
        }

    }
}
