using Testing.Reports.Fields;

using System;
using System.Collections.Generic;
using System.Xml.Serialization;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports
{
    /// <summary>
    /// A report filled out by ONE person for ONE facility. 
    /// Can contain multiple reports done at different times, however.
    /// </summary>
    public class Report : IXmlSerializable
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
        /// To avoid conflics, append a username or something on the front to make sure
        /// we never have any overlap within a case file.
        /// </summary>
        public string reportID { get; set; }
        /// <summary>
        /// name of the person doing the report
        /// </summary>
        public string licensorName { get; private set; }
        /// <summary>
        /// last time the report was modified
        /// </summary>
        public DateTime lastModified { get; set; }

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
        public List<Form> forms { get; }

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
        private Report()
        {
            this.caseFile = null;
            this.reportID = "UNNAMED";
            this.licensorName = "NO_LICENSOR_ASSIGNED";

            this.forms = new List<Form>();
        }

        internal void SetCaseFile(CaseFile caseFile)
        {
            this.caseFile = caseFile;
            foreach (Form form in this.forms)
                form.SetReport(this);
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

        //--save/load--//
        public void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();
            this.reportID = reader.ReadElementContentAsString();
            this.licensorName = reader.ReadElementContentAsString();

            
            //now we're into fields
            reader.ReadStartElement();
            reader.MoveToContent();


            while (reader.NodeType != XmlNodeType.EndElement)
            {
                Type type = Type.GetType(reader.GetAttribute("type"));

                XmlSerializer ser = new XmlSerializer(type);
                Form form = (Form)ser.Deserialize(reader);
                reader.MoveToContent();

                this.forms.Add(form);
            }

            reader.ReadEndElement();
            //now we're done with the fields.
        }

        public void WriteXml(XmlWriter writer)
        {
            //write basic header
            writer.WriteElementString("reportID", this.reportID);
            writer.WriteElementString("licensorName", this.licensorName);

            
            //write all the forms contained within
            writer.WriteStartElement("forms");
            foreach (Form form in this.forms)
            {
                writer.WriteComment(form.name);
                writer.WriteStartElement(form.GetType().Name);
                form.WriteXml(writer);
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
            sb.AppendLine("id: " + this.reportID);
            sb.AppendLine("licensor name: " + this.licensorName);

            foreach (Form form in this.forms)
                sb.AppendLine(form.ToString());

            return sb.ToString();
        }
    }
}
