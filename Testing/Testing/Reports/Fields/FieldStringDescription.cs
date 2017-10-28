using System.Xml;

namespace Testing.Reports.Fields
{
    public class FieldStringDescription: FieldString
    {
        //------Member Fields------//
        public string description { get; protected set; }

        //construction
        public FieldStringDescription(string name, string description): base(name)
        {
            this.description = description;
        }
        protected FieldStringDescription(): base(){
            this.description = "PLACEHOLDER";
        }

        public override IReportElement Clone(string name)
        {
            return new FieldStringDescription(name, this.description);
        }
        public override IReportElement Clone()
        {
            return this.Clone(this.name);
        }

        public override void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();

            this.name = reader.ReadElementContentAsString();
            this.isReadOnly = System.Boolean.Parse(reader.ReadElementContentAsString());
            this.data = reader.ReadElementContentAsString();

            this.description = reader.ReadElementContentAsString();
            reader.ReadEndElement();

        }
        public override void WriteXml(XmlWriter writer)
        {
            base.WriteXml(writer);
            writer.WriteElementString("description", this.description);
        }

        public override string ToString()
        {
            return base.ToString() + "  " + this.description;
        }
    }
}
