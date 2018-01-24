using WpfApp1.Case;
using WpfApp1.Reports.Fields;

namespace WpfApp1.Reports.Forms
{
    /// <summary>
    /// class for the generic header that goes at the top of every form!
    /// </summary>
    public class FormHeader : ElementGroup
    {
        //--member fields--//

        //--public stuff--//
        public System.DateTime lastModified;

        //--private stuff--//
        private FieldString facilityNamefield;
        private FieldInteger facilityLicenseNoField;
        private FieldDateTime inspectionDateField;
        private FieldString licensorNameField;

        public static FormHeader GenerateNewHeader()
        {
            FormHeader header = new FormHeader();
            header.facilityNamefield = new FieldString("facilityName", "Assisted Living Facility Name");
            header.facilityLicenseNoField = new FieldInteger("faclityLicenseNo", "License Number");
            header.inspectionDateField = new FieldDateTime("inspectionDateTime", System.DateTime.Now, "Inspection Date");
            header.licensorNameField = new FieldString("licensorName", "Licensor Name");

            header.AddElementInternal(header.facilityNamefield);
            header.AddElementInternal(header.facilityLicenseNoField);
            header.AddElementInternal(header.inspectionDateField);
            header.AddElementInternal(header.licensorNameField);

            return header;
        }

        protected FormHeader() : base("header")
        {

        }



        public void Update(Form form)
        {
            //this.facilityNamefield.SetData(form.facilityName);
            //this.facilityLicenseNoField.SetData(form.facilityLicenseNo);
            //this.licensorNameField.SetData(form.licensorName);
        }
    }
}
