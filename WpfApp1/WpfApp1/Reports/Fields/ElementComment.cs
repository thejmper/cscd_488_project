
using System;
using System.Xml;
using System.Xml.Schema;

namespace WpfApp1.Reports.Fields
{
    /// <summary>
    /// Represents a read-only comment in the form, with no interaction possible
    /// </summary>
    public class ElementComment : IReportElement
    {
        //--member variables--//
        /// <summary>
        /// name of this element
        /// </summary>
        public string name { get; protected set; }
        /// <summary>
        /// text comment stored in this element!
        /// </summary>
        private string text;

        //--construction--//
        /// <summary>
        /// EVC for public use!
        /// </summary>
        /// <param name="name">name of this field</param>
        /// <param name="text">text living in this comment</param>
        public ElementComment(string name, string text)
        {
            this.name = name;
            this.text = text;
        }
        /// <summary>
        /// private DVC for serialization use
        /// </summary>
        private ElementComment()
        {
            this.name = "UNNAMED";
            this.text = "PLACEHOLDER_TEXT";
        }
        public IReportElement Clone(string name)
        {
            ElementComment clone = new ElementComment(name, this.text);
            return clone;
        }
        public IReportElement Clone()
        {
            return this.Clone(this.name);
        }

        public void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();  //skip over the <FieldBoolean> tag because there's nothing in it for us

            this.name = reader.ReadElementContentAsString();
            this.text = reader.ReadElementContentAsString();

            reader.ReadEndElement();
        }
        public void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);
            writer.WriteElementString("text", this.text);
        }

        public XmlSchema GetSchema()
        {
            return null;
        }


        //--testing--//
        public override string ToString()
        {
            return "comment: " + this.text;
        }
    }
}
