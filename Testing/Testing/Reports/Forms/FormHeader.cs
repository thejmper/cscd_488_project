using Testing.Reports.Fields;

namespace Testing.Reports.Forms
{
    /// <summary>
    /// class for the generic header that goes at the top of every form!
    /// </summary>
    class FormHeader : ElementGroup
    {
        //--member fields--//

            //--public stuff--//
        public System.DateTime lastModified;

        //--private stuff--//
        private FieldString facilityNamefield;
        private FieldInteger facilityLicenseNoField;
        private FieldDateTime inspectionDateField;
        private FieldString licensorNameField;

        public FormHeader() : base("header")
        {
            //create the basic controls
            this.facilityNamefield = new FieldStringDescription("facilityName", "Assisted Living Facility Name");
            this.facilityLicenseNoField = new FieldIntegerDescription("faclityLicenseNo", "License Number");
            this.inspectionDateField = new FieldDateTime("inspectionDateTime", System.DateTime.Now, "Inspection Date");
            this.licensorNameField = new FieldStringDescription("licensorName", "Licensor Name");

            this.AddElementInternal(facilityNamefield);
            this.AddElementInternal(facilityLicenseNoField);
            this.AddElementInternal(inspectionDateField);
            this.AddElementInternal(licensorNameField);
        }

        public void Update(Form form)
        {
            this.facilityNamefield.SetData(form.facilityName);
            this.facilityLicenseNoField.SetData(form.facilityLicenseNo);
            this.licensorNameField.SetData(form.licensorName);
        }
    }
}
