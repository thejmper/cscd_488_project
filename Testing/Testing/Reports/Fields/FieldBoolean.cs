using System;
using System.Xml;
using System.Xml.Schema;

namespace WpfApp1.Reports.Fields
{
    public class FieldBoolean : FieldGeneric
    {
        //--member fields
        public override DataChangedDelegate onDataChanged { get; set; }

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
        public FieldBoolean(string name, bool initialValue = false, string description=""): base(name, description)
        {
            this.data = initialValue;
        }
        /// <summary>
        /// private constructor used for serialization
        /// </summary>
        protected FieldBoolean(): this("UNNAMED", false)
        {
        }
        
        public override IReportElement Clone(string name)
        {
            FieldBoolean clone = new FieldBoolean(name, false);
            clone.SetData(this.data);

            return clone;
        }
        public override IReportElement Clone()
        {
            return this.Clone(this.name);
        }
        
        //--getters and setters--//
        public override void SetData(object data)
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
        public override void SetData(string data)
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
        public override object GetData()
        {
            return data;
        }


        //--save/load methds--//
        /// <summary>
        /// read the internal XML data once the header's been consumed
        /// </summary>
        /// <param name="reader"></param>
        protected override void ReadXmlInternal(XmlReader reader)
        {
            this.data = Boolean.Parse(reader.ReadElementContentAsString());
        }
        /// <summary>
        /// write the internal XML data once the header's been written!
        /// </summary>
        /// <param name="writer"></param>
        protected override void WriteXMLInternal(XmlWriter writer)
        {
            //bools are picky about how you set their string form, so I did it here.
            string dataString = data ? Boolean.TrueString : Boolean.FalseString;
            writer.WriteElementString("data", dataString);
        }

        public override string ToString()
        {
            return this.name + " :" + this.data + " <" + this.description + ">";

        }
    }
}
