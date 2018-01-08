using System;
using System.Xml;
using System.Xml.Serialization;

namespace Testing.Reports.Fields
{
    /// <summary>
    /// class for a field that contains several rows of the same groupped commands.
    /// </summary>
    public class FieldRows: ElementGroup
    {
        /// <summary>
        /// template row, not to be used.
        /// </summary>
        private ElementGroup rowTemplate;
       
        public FieldRows(string name, ElementGroup rowTemplate, string description=""): base(name, description)
        {
            this.rowTemplate = rowTemplate;

            this.AddRow();            
        }
        protected FieldRows() : base()
        {

        }

        public void AddRow()
        {
            string name = "row" + this.elements.Length;
            this.AddElementInternal(rowTemplate.Clone(name));
        }

        public override void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);
            writer.WriteElementString("description", this.description);

            //save the row template!
            writer.WriteComment("RowTemplate");
            writer.WriteStartElement(rowTemplate.GetType().Name);
            rowTemplate.WriteXml(writer);
            writer.WriteEndElement();

            //save the rows
            writer.WriteComment("Group content");
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
        public override void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();
            this.name = reader.ReadElementContentAsString();
            try
            {
                this.description = reader.ReadElementContentAsString();
            }
            catch (Exception) { }
            reader.MoveToContent();
            //now read the row template
            Type rowType = Type.GetType(reader.GetAttribute("type"));
            XmlSerializer rowSer = new XmlSerializer(rowType);
            this.rowTemplate = (ElementGroup)rowSer.Deserialize(reader);
            reader.MoveToContent();

            reader.ReadEndElement();

            int i = 0;

            //now we're into fields
            reader.ReadStartElement();
            reader.MoveToContent();
            while (reader.NodeType != XmlNodeType.EndElement)
            {
                Type type = Type.GetType(reader.GetAttribute("type"));

                XmlSerializer ser = new XmlSerializer(type);
                IReportElement element = (IReportElement)ser.Deserialize(reader);
                reader.ReadEndElement();
                reader.MoveToContent();

                this.AddElementInternal(element);
            }

            reader.ReadEndElement();
            reader.MoveToContent();
            reader.ReadEndElement();
            //now we're done with the fields.  
            Console.WriteLine("~" + reader.Name);
        }
    }
}
