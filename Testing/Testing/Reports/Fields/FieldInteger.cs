
using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldInteger : IReportField
    {
        //--member fields--//
        public bool isReadOnly { get; set; }
        /// <summary>
        /// onfieldchanged event for this field
        /// </summary>
        public DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// unique (within scope) name for this field
        /// </summary>
        public string name { get; protected set; }

        protected int data;

        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="name"></param>
        public FieldInteger(string name)
        {
            this.name = name;
        }
        protected FieldInteger()
        {
            this.name = "UNDEFINED";
        }
        public object GetData()
        {
            return this.data;
        }

        public virtual IReportElement Clone(string name)
        {
            FieldInteger clone = new FieldInteger(name);
            clone.SetData(this.data);
            return clone;
        }
        public virtual IReportElement Clone()
        {
            return this.Clone(name);
        }

        /// <summary>
        /// set data directly!
        /// </summary>
        /// <param name="data"></param>
        public void SetData(object data)
        {
            try
            {
                this.data = (int)data;
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            } catch (Exception)
            {
                throw new ArgumentException(data + " cannot be cast to an int!");
            }
        }
        /// <summary>
        /// set data via integer!
        /// </summary>
        /// <param name="dataString"></param>
        public void SetData(string dataString)
        {
            try
            {
                this.data = Int32.Parse(dataString);
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.data);
            }
            catch (Exception)
            {
                throw new ArgumentException("Cannot parse string \"" + dataString + "\" to integer!");
            }
        }

        public virtual void ReadXml(XmlReader reader)
        {
            reader.ReadStartElement();  //skip over the <FieldBoolean> tag because there's nothing in it for us

            this.name = reader.ReadElementContentAsString();
            this.isReadOnly = Boolean.Parse(reader.ReadElementContentAsString());
            this.data = Int32.Parse(reader.ReadElementContentAsString());

            reader.ReadEndElement();
        }
        public virtual void WriteXml(XmlWriter writer)
        {
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);


            string readOnlyString = isReadOnly ? Boolean.TrueString : Boolean.FalseString;
            writer.WriteElementString("isReadOnly", readOnlyString);

            writer.WriteElementString("data", data.ToString());

        }

        public XmlSchema GetSchema()
        {
            return null;
        }

        //--debugging/testing--//
        public override string ToString()
        {
            return name + ": " + data;
        }
    }
}
