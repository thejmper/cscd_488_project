using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldBoolean : IReportField
    {
        //--member fields--//
        public DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// name of this field!
        /// </summary>
        public string name { get; protected set; }

        /// <summary>
        /// data contained in this field
        /// </summary>
        protected bool data;


        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="name"></param>
        /// <param name="initialValue"></param>
        public FieldBoolean(string name, bool initialValue)
        {
            this.name = name;
            this.data = initialValue;
        }
        /// <summary>
        /// private constructor used for serialization
        /// </summary>
        protected FieldBoolean()
        {
            this.name = "PLACEHOLDER NAME";
            this.data = false;
        }
        //--getters and setters--//
        public void SetData(object data)
        {
            try
            {
                this.data = (bool)data;
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (Exception)
            {
                throw new ArgumentException("Cannot parse " + data + " to boolean!");
            }
        }
        public void SetData(string data)
        {
            try
            {
                this.data = Convert.ToBoolean(data);
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (FormatException)
            {
                throw new ArgumentException("Cannot parse input " + data + " to boolean!");
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
            this.data = Boolean.Parse(reader.ReadElementContentAsString());

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

            //bools are picky about how you set their string form, so I did it here.
            string dataString = data ? Boolean.TrueString : Boolean.FalseString;
            writer.WriteElementString("data", dataString);
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
            return this.name + " :" + this.data;
        }
    }
}
