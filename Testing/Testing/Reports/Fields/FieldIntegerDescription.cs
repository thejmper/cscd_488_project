using System;
using System.Xml;

namespace Testing.Reports.Fields
{
    public class FieldIntegerDescription: FieldInteger
    {
        //--member fields--//
        public string desc { get; private set; }

        //--construction--//
        public FieldIntegerDescription(string name, string desc): base(name)
        {
            this.desc = desc;
        }
        protected FieldIntegerDescription(): base(){
            this.desc = "UNASSIGNED";
        }


        //save/load
        public override void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();  //skip over the <FieldBoolean> tag because there's nothing in it for us

            this.name = reader.ReadElementContentAsString();
            this.isReadOnly = Boolean.Parse(reader.ReadElementContentAsString());
            this.data = Int32.Parse(reader.ReadElementContentAsString());

            this.desc = reader.ReadElementContentAsString();

            reader.ReadEndElement(); 
        }
        public override void WriteXml(XmlWriter writer)
        {
            base.WriteXml(writer);
            writer.WriteElementString("description", this.desc);
        }

        public override string ToString()
        {
            return base.ToString() + "\n: " + this.desc;
        }
    }
}
