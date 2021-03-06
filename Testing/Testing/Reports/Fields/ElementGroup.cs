﻿using System;

using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;


namespace WpfApp1.Reports.Fields
{
    /// <summary>
    /// group or more than one element
    /// </summary>
    public class ElementGroup : IXmlSerializable, IReportElement
    {
        //--member fields--//
        /// <summary>
        /// name of this group of fields
        /// </summary>
        public string name { get; protected set; }
       
        public string description { get; protected set; }

        public IReportElement[] elements { get; private set; }

        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="author"></param>
        /// <param name="lastModified"></param>
        internal ElementGroup(string name, string description ="")
        {
            this.name = name;
            this.description = description;
            this.elements = new IReportElement[0];
        }
        /// <summary>
        /// DVC for serializer use
        /// </summary>
        protected ElementGroup(): this("UNTITLED")
        {
        }
        public virtual IReportElement Clone(string name)
        {
            ElementGroup clone = new ElementGroup(name);
            for(int i = 0; i < this.elements.Length; i++)
            {
                clone.AddElementInternal(this.elements[i].Clone());
            }

            return clone;
        }
        public virtual IReportElement Clone()
        {
            return this.Clone(this.name);
        }
        //--setters--//
        /// <summary>
        /// adds a field to this report, if its ID isn't already in use.
        /// </summary>
        /// <param name="field"></param>
        protected virtual void AddElementInternal(IReportElement field)
        {
            if (Array.Exists(elements, item => item.name.Equals(field.name)))
                throw new ArgumentException("Cannot add element " + field.name + " to form " + this.name + ". A element with that name already exists in the form!");

            IReportElement[] temp = new IReportElement[this.elements.Length + 1];
            for (int i = 0; i < this.elements.Length; i++)
                temp[i] = this.elements[i];

            temp[this.elements.Length] = field;

            this.elements = temp;
        }
        //--save/load--//
        public virtual void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();
            this.name = reader.ReadElementContentAsString();

            try
            {
                this.description = reader.ReadElementContentAsString();
            }
            catch (Exception) { }
            //now we're into fields
            reader.ReadStartElement();
            reader.MoveToContent();
            while (reader.NodeType != XmlNodeType.EndElement)
            {
                Type type = Type.GetType(reader.GetAttribute("type"));

                XmlSerializer ser = new XmlSerializer(type);
                IReportElement element = (IReportElement)ser.Deserialize(reader);
                reader.MoveToContent();

                this.AddElementInternal(element);
            }
            

            reader.ReadEndElement();
            //now we're done with the fields.

        }
        public virtual void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);
            writer.WriteElementString("description", this.description);
            writer.WriteStartElement("fields");

            foreach (IReportElement element in this.elements)
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

            sb.AppendLine(this.name);
            sb.AppendLine("fields:");

            foreach (IReportElement field in this.elements)
                sb.AppendLine(field.ToString());

            return sb.ToString();
        }
    }
}
