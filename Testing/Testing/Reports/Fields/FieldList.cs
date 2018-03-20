using System;
using System.Collections.Generic;
using System.Xml;
using System.Xml.Schema;

namespace WpfApp1.Reports.Fields
{
    public class FieldList: FieldGeneric
    {
        //--member fields--//
        public override DataChangedDelegate onDataChanged { get; set; }
        
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
        public FieldList(string name, string[] options, string description=""): base(name, description)
        {
            this.options = options;
            this.selected = 0;
        }
        /// <summary>
        /// private constructor used for serialization
        /// </summary>
        protected FieldList() : base()
        {
            this.options = new string[0];
        }

        public override IReportElement Clone(string name)
        {
            FieldList clone = new FieldList(name, this.options);
            clone.selected = this.selected;

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
        public override void SetData(string data)
        {
            int index = Array.FindIndex(this.options, item => item.Equals(data));
            if(index < 0)
                throw new ArgumentException("Input \"" + data + "\" is not a valid list option!");

            this.selected = index;
        }
        public override object GetData()
        {
            return options[selected];
        }


        //--save/load methds--//
        protected override void ReadXmlInternal(XmlReader reader)
        {
            this.selected = Int32.Parse(reader.ReadElementContentAsString());

            List<string> optionList = new List<string>();
            reader.ReadStartElement();
            reader.MoveToContent();
            while (reader.NodeType != XmlNodeType.EndElement)
            {
                optionList.Add(reader.ReadElementContentAsString());
            }
            this.options = optionList.ToArray();
            reader.ReadEndElement();
        }
        protected override void WriteXMLInternal(XmlWriter writer)
        {
            writer.WriteElementString("selected", this.selected.ToString());


            //write the option string array
            writer.WriteStartElement("options");
            foreach (string option in options)
            {
                writer.WriteElementString("option", option);
            }
            writer.WriteEndElement();
        }

        public override string ToString()
        {
            string s = this.name + ": " + "<" + this.description + ">";
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
