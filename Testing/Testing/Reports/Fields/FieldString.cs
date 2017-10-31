using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldString : FieldGeneric
    {
        //--member fields--//
        public override DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// internal string data of this field!
        /// </summary>
        protected string data;

        //--construction--//
        public FieldString(string name, string description=""): base(name, description)
        {
        }

        protected FieldString(): this("UNNAMED")
        {
           
        }
        public override IReportElement Clone(string name)
        {
            FieldString clone = new FieldString(this.name);
            clone.SetData(this.data);

            return clone;
        }
        public override IReportElement Clone()
        {
            return this.Clone(this.name);
        }
        //--getters/setters--//
        public override object GetData()
        {
            return this.data;
        }

        public override void SetData(object data)
        {
            try
            {
                this.data = (string)data;
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (Exception)
            {
                throw new ArgumentException("Unable to parse " + data + " to string!");
            }
        }
        public override void SetData(string dataString)
        {
            this.data = dataString;
            if (this.onDataChanged != null)
                this.onDataChanged.Invoke(this, this.data);
        }
        
        //--save/load--//
        protected override void ReadXmlInternal(XmlReader reader)
        {
            this.data = reader.ReadElementContentAsString();
        }
        protected override void WriteXMLInternal(XmlWriter writer)
        {
            writer.WriteElementString("data", this.data);
        }
        public override string ToString()
        {
            return name + " <" + description +">\n" + data;
        }
    }
}
