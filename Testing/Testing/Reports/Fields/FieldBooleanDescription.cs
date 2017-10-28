using System.Xml;

namespace Testing.Reports.Fields
{

    public class FieldBooleanDescription: FieldBoolean
    {
        //--member fields--//
        /// <summary>
        /// a description of this boolean.
        /// </summary>
        public string description { get; private set; }

        /// <summary>
        /// EVC for outside use
        /// </summary>
        /// <param name="name"></param>
        /// <param name="description"></param>
        /// <param name="value"></param>
        public FieldBooleanDescription(string name, string description, bool value): base(name, value)
        {
            this.description = description;
        }
        /// <summary>
        /// DVC for serilization use
        /// </summary>
        private FieldBooleanDescription(): base()
        {
            this.description = "PLACEHOLDER";
        }

        public override void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();  //skip over the <FieldBoolean> tag because there's nothing in it for us

            this.name = reader.ReadElementContentAsString();
            this.isReadOnly = bool.Parse(reader.ReadElementContentAsString());

            this.data = System.Boolean.Parse(reader.ReadElementContentAsString());
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
            return base.ToString() + "\n" + description;
        }
    }
}
