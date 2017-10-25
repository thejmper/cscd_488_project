using System;
using System.Collections.Generic;

using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

using Testing.Reports.Fields;

namespace Testing.Reports
{
    /// <summary>
    /// class for ONE form. This is to be filled out by ONE author.
    /// Some of the data could inheret from a larger report class, but right now
    /// I just wanna test if my save/load code works, so we're gonna pretend this
    /// is all there is.
    /// </summary>
    public class ElementGroup : IXmlSerializable, IReportElement
    {
        //--member fields--//
        /// <summary>
        /// name of this group of fields
        /// </summary>
        public string name { get; private set; }
        /// <summary>
        /// all the fields that make up this form!
        /// </summary>
        public Dictionary<string, IReportElement> elements { get; private set; }
        /// <summary>
        /// array of all fields in this report.
        /// </summary>
        public IReportElement[] elementArray
        {
            get
            {
                IReportElement[] array = new IReportElement[elements.Count];
                elements.Values.CopyTo(array, 0);
                return array;
            }
        }

        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="author"></param>
        /// <param name="lastModified"></param>
        public ElementGroup(string name)
        {
            this.name = name;

            this.elements = new Dictionary<string, IReportElement>();
        }
        /// <summary>
        /// DVC for serializer use
        /// </summary>
        private ElementGroup()
        {
            this.name = "UNTITLED";
            this.elements = new Dictionary<string, IReportElement>();
        }

        //--setters--//
        /// <summary>
        /// adds a field to this report, if its ID isn't already in use.
        /// </summary>
        /// <param name="field"></param>
        public void AddElement(IReportElement field)
        {
            if (elements.ContainsKey(field.name))
                throw new ArgumentException("Cannot add element " + field.name + " to form " + this.name + ". A element with that name already exists in the form!");

            this.elements.Add(field.name, field);
        }
        //--save/load--//
        public void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();
            this.name = reader.ReadElementContentAsString();

            //now we're into fields
            reader.ReadStartElement();
            reader.MoveToContent();
            while(reader.NodeType != XmlNodeType.EndElement)
            {
                Type type = Type.GetType(reader.GetAttribute("type"));

                XmlSerializer ser = new XmlSerializer(type);
                IReportElement element = (IReportElement)ser.Deserialize(reader);
                reader.MoveToContent();

                this.AddElement(element);
            }
            reader.ReadEndElement();
            //now we're done with the fields.
        }
        public void WriteXml(XmlWriter writer)
        {
            writer.WriteElementString("name", this.name);

            writer.WriteStartElement("fields");

            foreach (IReportElement element in this.elementArray)
            {
                writer.WriteComment(element.name);
                writer.WriteStartElement(element.GetType().Name);
                element.WriteXml(writer);
                writer.WriteEndElement();
            }

            writer.WriteEndElement();
        }
        public XmlSchema GetSchema()
        {
            return null;
        }

        public override string ToString()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.AppendLine("Group: " + this.name);
            sb.AppendLine("- - - - - - - - - - - - - - ");
            sb.AppendLine("fields:");

            foreach (IReportElement field in this.elementArray)
                sb.AppendLine(field.ToString());

            return sb.ToString();
        }
    }
}
