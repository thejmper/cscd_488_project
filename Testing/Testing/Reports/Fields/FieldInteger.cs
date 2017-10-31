
using System;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldInteger : FieldGeneric
    {
        //--member fields--//
        /// <summary>
        /// onfieldchanged event for this field
        /// </summary>
        public override DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// data of this field
        /// </summary>
        protected int data;

        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="name"></param>
        public FieldInteger(string name, string description=""): base(name, description)
        {

        }
        protected FieldInteger(): base("UNTITLED")
        {

        }
        public override object GetData()
        {
            return this.data;
        }

        public override IReportElement Clone(string name)
        {
            FieldInteger clone = new FieldInteger(name);
            clone.SetData(this.data);
            return clone;
        }
        public override IReportElement Clone()
        {
            return this.Clone(name);
        }

        /// <summary>
        /// set data directly!
        /// </summary>
        /// <param name="data"></param>
        public override void SetData(object data)
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
        public override void SetData(string dataString)
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

        protected override void ReadXmlInternal(XmlReader reader)
        {
            this.data = Int32.Parse(reader.ReadElementContentAsString());
        }
        protected override void WriteXMLInternal(XmlWriter writer)
        {
            writer.WriteElementString("data", data.ToString());
        }

        //--debugging/testing--//
        public override string ToString()
        {
            return this.name + " :" + this.data + " <" + this.description + ">";
        }
    }
}
