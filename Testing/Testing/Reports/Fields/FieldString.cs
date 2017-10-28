using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldString : IReportField
    {
        //--member fields--//
        public DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// name of this field
        /// </summary>
        public string name { get; private set; }

        /// <summary>
        /// internal string data of this field!
        /// </summary>
        protected string data;

        //--construction--//
        public FieldString(string name)
        {
            this.name = name;
        }
        private FieldString()
        {
            this.name = "UNNAMED";
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
        public void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();

            this.name = reader.ReadElementContentAsString();
            this.data = reader.ReadElementContentAsString();

            reader.ReadEndElement();
        }

        public void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);
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
