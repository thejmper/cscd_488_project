using System;
using System.Xml;

using Testing.Reports.Fields;
using Testing.Reports.Forms;

namespace Testing.Reports
{
    /// <summary>
    /// represents ONE form that a user might fill out as part of his report.
    /// </summary>
    public class Form: ElementGroup, IReportElement
    {
        //--member fields--//
        //stuff unique to this form!
        /// <summary>
        /// report this form is attached too!
        /// </summary>
        private Report report;
        /// <summary>
        /// last time this report was modified.
        /// </summary>
        public DateTime inspectionDate { get { return this.header.lastModified; } }

        //stuff we get from the report!
        /// <summary>
        /// name of the facility we're reporting on.
        /// </summary>
        public string facilityName
        {
            get
            {
                if (report == null)
                    return "NO_REPORT_ASSIGNED";
                else
                    return report.facilityName;
            }
        }
        /// <summary>
        /// id of the facility we're reporting on.
        /// </summary>
        public int facilityLicenseNo
        {
            get
            {
                if (report == null)
                    return 0000000000;
                else
                    return report.facilityLicenseNo;
            }
        }
        /// <summary>
        /// name of the agent filling out this report
        /// </summary>
        public string licensorName
        {
            get
            {
                if (report == null)
                    return "NO_REPORT_ASSIGNED";
                else
                    return report.licensorName;
            }
        }

        //important fields we need to keep track of!
        /// <summary>
        /// unique header form that'll need its data updated from time to time!
        /// </summary>
        private FormHeader header;

        //--creation--//
        public Form(string name): base(name)
        {
            //pre-load form stuff!
            this.header = FormHeader.GenerateNewHeader();
            this.AddElementInternal(this.header);

        }
        private Form(): base()
        {

        }
        public override IReportElement Clone(string name)
        {
            Form form = new Form(name);
            return form;
        }
        public override IReportElement Clone()
        {
            return base.Clone(this.name);
        }




        /// <summary>
        /// sets this form's report so it can point all its data correctly!
        /// </summary>
        /// <param name="report"></param>
        internal void SetReport(Report report)
        {
            this.report = report;
            this.header.Update(this);
        }

        //--save/load--//
        public override void ReadXml(XmlReader reader)
        {
            base.ReadXml(reader);
        }
        public override void WriteXml(XmlWriter writer)
        {
            base.WriteXml(writer);
        }

        public override string ToString()
        {
            return base.ToString();
        }
    }
}
