using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using WpfApp1.FormItems;

namespace WpfApp1.Case
{
    public class CaseFile: ElementGroup<Report>
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

        public override UIElement UIelement
        {
            get
            {
                textBlock.Text = this.ToString();
                return textBlock;
            }
        }

        private TextBlock textBlock;

        public CaseFile(string name, string facilityName, int facilitylicesnseNumber): base (name)
        {
            this.facilityName = facilityName;
            this.facilitylicenseNumber = facilitylicesnseNumber;

            this.textBlock = new TextBlock();
            this.textBlock.Text = this.ToString();
        }
        protected CaseFile(): this("Unnamed", "unnamed", 0)
        {

        }

        //--list manipulation--//
        internal Report AddReport(string userID, string userFullName)
        {
            Report report = new Report(userID, userFullName, this);
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
