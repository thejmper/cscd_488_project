using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldString : IReportField
    {
        //--member fields--//
        public bool isReadOnly { get; set; }
        public DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// name of this field
        /// </summary>
        public string name { get; protected set; }

        /// <summary>
        /// internal string data of this field!
        /// </summary>
        protected string data;

        //--construction--//
        public FieldString(string name)
        {
            this.name = name;
        }
        protected FieldString()
        {
            this.name = "UNNAMED";
        }
        public virtual IReportElement Clone(string name)
        {
            FieldString clone = new FieldString(this.name);
            clone.SetData(this.data);

            return clone;
        }
        public virtual IReportElement Clone()
        {
            return this.Clone(this.name);
        }
        //--getters/setters--//
        public object GetData()
        {
            return this.data;
        }

        public void SetData(object data)
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
        public void SetData(string dataString)
        {
            this.data = dataString;
            if (this.onDataChanged != null)
                this.onDataChanged.Invoke(this, this.data);
        }
        
        //--save/load--//
        public virtual void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();

            this.name = reader.ReadElementContentAsString();
            this.isReadOnly = Boolean.Parse(reader.ReadElementContentAsString());
            this.data = reader.ReadElementContentAsString();

            reader.ReadEndElement();
        }

        public virtual void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);

            string readOnlyString = isReadOnly ? Boolean.TrueString : Boolean.FalseString;
            writer.WriteElementString("isReadOnly", readOnlyString);

            writer.WriteElementString("data", this.data);
        }

        public XmlSchema GetSchema()
        {
            return null;
        }

        public override string ToString()
        {
            return name + "\n" + data;
        }
    }
}
