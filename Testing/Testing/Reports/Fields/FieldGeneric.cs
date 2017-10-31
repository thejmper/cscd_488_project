using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public abstract class FieldGeneric : IReportField
    {

        //------Member Fields------//
        /// <summary>
        /// abstract handler.
        /// </summary>
        public abstract DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// description of this field
        /// </summary>
        public string description { get; private set; }
        /// <summary>
        /// is this field readonly?
        /// </summary>
        public bool isReadOnly { get; set; }
        /// <summary>
        /// unique within scope name of this field
        /// </summary>
        public string name { get; private set; }


        //--construction--//
        public FieldGeneric(string name, string description = "")
        {
            this.name = name;
            this.description = description;
            this.isReadOnly = false;
        }
        protected FieldGeneric(): this("UNTITLED")
        {

        }

        public abstract IReportElement Clone(string name);
        public abstract IReportElement Clone();

        public abstract object GetData();
        public abstract void SetData(object data);
        public abstract void SetData(string dataString);
        

        public XmlSchema GetSchema()
        {
            return null;
        }

        public void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();

            this.name = reader.ReadElementContentAsString();
            this.isReadOnly = Boolean.Parse(reader.ReadElementContentAsString());
            try
            {this.description = reader.ReadElementContentAsString();
            } catch (Exception) { }

            //interal stuff
            this.ReadXmlInternal(reader);

            reader.ReadEndElement(); //very important!
        }
        protected abstract void ReadXmlInternal(XmlReader reader);

        public void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);

            string readOnlyString = isReadOnly ? Boolean.TrueString : Boolean.FalseString;
            writer.WriteElementString("isReadOnly", readOnlyString);

            writer.WriteElementString("description", this.description);

            this.WriteXMLInternal(writer);
        }
        protected abstract void WriteXMLInternal(XmlWriter writer);
    }
}
