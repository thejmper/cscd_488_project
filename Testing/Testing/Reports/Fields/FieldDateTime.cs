using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldDateTime : IReportField
    {
        //--member fields--//
        public bool isReadOnly { get; set; }
        public DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// name of this field!
        /// </summary>
        public string name { get; protected set; }

        public string desctription { get; private set; }

        /// <summary>
        /// data contained in this field
        /// </summary>
        protected DateTime data;



        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="name"></param>
        /// <param name="initialValue"></param>
        public FieldDateTime(string name, DateTime initialValue, string description="")
        {
            this.name = name;
            this.data = initialValue;
            this.desctription = desctription;
        }
        /// <summary>
        /// private constructor used for serialization
        /// </summary>
        protected FieldDateTime()
        {
            this.name = "PLACEHOLDER NAME";
            this.data = new DateTime();
        }

        public virtual IReportElement Clone(string name)
        {
            FieldDateTime clone = new FieldDateTime(name, new DateTime());
            clone.SetData(this.data);

            return clone;
        }
        public virtual IReportElement Clone()
        {
            return this.Clone(this.name);
        }

        //--getters and setters--//
        public void SetData(object data)
        {
            try
            {
                this.data = (DateTime)data;
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (Exception)
            {
                throw new ArgumentException("Cannot cast " + data + " to date time!");
            }
        }
        public void SetData(string data)
        {
            try
            {
                this.data = DateTime.Parse(data);
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (FormatException)
            {
                throw new ArgumentException("Cannot parse input " + data + " to DateTime!");
            }
        }
        public object GetData()
        {
            return data;
        }


        //--save/load methds--//
        /// <summary>
        /// read xml file and build a fieldboolean from it!
        /// </summary>
        /// <param name="reader"></param>
        public virtual void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();  //skip over the <FieldBoolean> tag because there's nothing in it for us
            this.name = reader.ReadElementContentAsString();
            this.isReadOnly = Boolean.Parse(reader.ReadElementContentAsString());

            this.data = DateTime.Parse(reader.ReadElementContentAsString());
            this.desctription = reader.ReadElementContentAsString();
            reader.ReadEndElement();
        }
        /// <summary>
        /// write an XML represntation of this element!
        /// </summary>
        /// <param name="writer"></param>
        public virtual void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);

            string readOnlyString = isReadOnly ? Boolean.TrueString : Boolean.FalseString;
            writer.WriteElementString("isReadOnly", readOnlyString);


            //bools are picky about how you set their string form, so I did it here.
            writer.WriteElementString("data", data.ToString());
            writer.WriteElementString("description", this.desctription);
        }

        /// <summary>
        /// get schema. By convention, this always retuns null. Don't ask me why.
        /// </summary>
        /// <returns></returns>
        public XmlSchema GetSchema()
        {
            return null;
        }

        public override string ToString()
        {
            return this.name + ": " + this.data;
        }
    }
}
