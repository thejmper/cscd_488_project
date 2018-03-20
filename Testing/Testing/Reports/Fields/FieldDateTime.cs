using System;
using System.Xml;
using System.Xml.Schema;

namespace WpfApp1.Reports.Fields
{
    public class FieldDateTime : FieldGeneric
    {
        //--member fields--//
        public override DataChangedDelegate onDataChanged { get; set; }

        /// <summary>
        /// data contained in this field
        /// </summary>
        protected DateTime data;

        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="name"></param>
        /// <param name="initialValue"></param>
        public FieldDateTime(string name, DateTime initialValue, string description=""):  base(name, description)
        {
            this.data = initialValue;
        }
        /// <summary>
        /// private constructor used for serialization
        /// </summary>
        protected FieldDateTime(): this("UNNAMED", new DateTime())
        {

        }

        public override IReportElement Clone(string name)
        {
            FieldDateTime clone = new FieldDateTime(name, new DateTime());
            clone.SetData(this.data);

            return clone;
        }
        public override IReportElement Clone()
        {
            return this.Clone(this.name);
        }

        //--getters and setters--//
        public override void SetData(object data)
        {
            try
            {
                this.data = (DateTime)data;
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (Exception)
            {
                throw new ArgumentException("Cannot cast " + data + " to date time!");
            }
        }
        public override void SetData(string data)
        {
            try
            {
                this.data = DateTime.Parse(data);
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (FormatException)
            {
                throw new ArgumentException("Cannot parse input " + data + " to DateTime!");
            }
        }
        public override object GetData()
        {
            return data;
        }


        //--save/load methds--//
        protected override void ReadXmlInternal(XmlReader reader)
        {
            this.data = DateTime.Parse(reader.ReadElementContentAsString());
        }
        protected override void WriteXMLInternal(XmlWriter writer)
        {
            writer.WriteElementString("data", data.ToString());
        }

        public override string ToString()
        {
            return this.name + ": " + this.data + ": <" + this.description + ">";
        }
    }
}
