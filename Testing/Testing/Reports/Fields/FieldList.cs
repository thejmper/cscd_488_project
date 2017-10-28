using System;
using System.Collections.Generic;
using System.Xml;
using System.Xml.Schema;

namespace Testing.Reports.Fields
{
    public class FieldList: IReportField
    {
        //--member fields--//
        public bool isReadOnly { get; set; }
        public DataChangedDelegate onDataChanged { get; set; }
        /// <summary>
        /// name of this field!
        /// </summary>
        public string name { get; protected set; }

        /// <summary>
        /// possible list toptions
        /// </summary>
        public string[] options { get; protected set; }
        /// <summary>
        /// the currently selected bit of data.
        /// </summary>
        private int selected;

        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="name"></param>
        /// <param name="initialValue"></param>
        public FieldList(string name, string[] options)
        {
            this.name = name;
            this.options = options;
            this.selected = 0;
        }
        /// <summary>
        /// private constructor used for serialization
        /// </summary>
        protected FieldList()
        {
            this.name = "PLACEHOLDER NAME";
            this.options = new string[0];
            this.selected = 0;
        }

        public virtual IReportElement Clone(string name)
        {
            FieldList clone = new FieldList(name, this.options);
            clone.selected = this.selected;

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
                string dataString = (string)data;
                this.SetData(dataString);
                if (this.onDataChanged != null)
                    this.onDataChanged.Invoke(this, this.GetData());
            }
            catch (Exception)
            {
                throw new ArgumentException("Cannot parse " + data + " to string");
            }
        }
        public void SetData(string data)
        {
            int index = Array.FindIndex(this.options, item => item.Equals(data));
            if(index < 0)
                throw new ArgumentException("Input \"" + data + "\" is not a valid list option!");

            this.selected = index;
        }
        public object GetData()
        {
            return options[selected];
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
            this.selected = Int32.Parse(reader.ReadElementContentAsString());

            //now read the option strings
            List<string> optionList = new List<string>();
            reader.ReadStartElement();
            reader.MoveToContent();
            while (reader.NodeType != XmlNodeType.EndElement)
            {
                optionList.Add(reader.ReadElementContentAsString());
            }
            this.options = optionList.ToArray();
            reader.ReadEndElement();


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

            writer.WriteElementString("selected", this.selected.ToString());


            //write the option string array
            writer.WriteStartElement("options");
            foreach (string option in options)
            {
                writer.WriteElementString("option", option);
            }
            writer.WriteEndElement();
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
            string s = this.name + ": ";
            for (int i = 0; i < this.options.Length; i++)
            {
                if (i == this.selected)
                    s += ">" + options[i] + "<, ";
                else
                    s += options[i] + ", ";
            }

            return s;
        }
    }
}
