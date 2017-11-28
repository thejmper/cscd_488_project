using System;
using System.Windows;
using System.Windows.Controls;
using WpfApp1.FormItems;

namespace WpfApp1.Case
{
    class Report : ElementGroup<Form>
    {
        //--member fields--//
        public override UIElement UIelement
        {
            get
            {
                label.Text = this.ToString();
                return this.label;
            }
        }

        //inhereted.
        public string facilityName
        {
            get
            {
                if (this.caseFile == null)
                    return "Unassigned";
                else
                    return caseFile.facilityName;
            }
        }
        public int facilitylicenseNumber
        {
            get
            {
                if (this.caseFile == null)
                    return 0;
                else
                    return caseFile.facilitylicenseNumber;
            }
        }

        //unique to this report
        public string licensorName { get; private set; }

        //label used to display this report
        private TextBlock label;
        private CaseFile caseFile;
        //--construction--//
        internal Report(string name, string userFullName, CaseFile caseFile): base(name)
        {

            this.caseFile = caseFile;
            this.licensorName = userFullName;

            this.label = new TextBlock();
            this.label.Text = this.ToString();
        }
        protected Report(): this("unnamed", "nameless", null)
        {

        }
        
        //--form manipulation--//
        public Form AddForm(Form formTemplate)
        {
            string name = formTemplate.name;
            int suffix = 0;

            do
            {
                suffix++;
            } while (this.elementList.Exists(item => item.name.Equals(name + suffix.ToString())));

            Form newForm = (Form)formTemplate.Clone(name + suffix.ToString());
            this.AddElementInternal(newForm);
            return newForm;
        }
        

        protected override ElementGroup<Form> CloneInner()
        {
            throw new NotImplementedException();
        }

        public override string ToString()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.AppendLine("reportID: " + this.name);
            sb.AppendLine("faciltyName: " + this.facilityName);
            sb.AppendLine("license number: " + this.facilitylicenseNumber);
            sb.AppendLine("licensor Name: " + this.licensorName);
            sb.AppendLine("Forms: " + this.elementList.Count);

            return sb.ToString();
        }
    }
}
