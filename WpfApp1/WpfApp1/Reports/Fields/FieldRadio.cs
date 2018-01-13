using System;
using System.Collections.Generic;
using System.Xml;

namespace WpfApp1.Reports.Fields
{
    public class FieldRadio: ElementGroup, IReportField
    {
        //--member fields--//
        public bool isReadOnly { get; set; }
        /// <summary>
        /// public delegate for event stuff
        /// </summary>
        public DataChangedDelegate onDataChanged{ get; set; }
        /// <summary>
        /// description of this field in human-readable terms
        /// </summary>
        public string description { get; private set; }
        /// <summary>
        /// the radiobutton that's active!
        /// </summary>
        private int selected;
        /// <summary>
        /// all the potential options this radio field could hold,
        /// displayed in the same order as the booleans in the content will be ordered.
        /// </summary>
        public string[] options { get; private set; }

        //--construction--//
        public FieldRadio(string name, string[] options, string description=""): base(name)
        {
            this.options = options;
            this.description = description;

            for(int i = 0; i < options.Length; i++)
            {
                FieldBoolean radioButton = new FieldBoolean("option" + i, false);
                radioButton.onDataChanged += this.DataChangedHandler;
                this.AddElementInternal(radioButton);
            }
            selected = -1;
        }
        protected FieldRadio(): base()
        {
            this.options = new string[0];
            this.description = "";
            this.selected = -1;
        }

        public override IReportElement Clone(string name)
        {
            FieldRadio clone = new FieldRadio(name, this.options);
            clone.selected = this.selected;

            return clone;

        }
        public override IReportElement Clone()
        {
            return this.Clone(this.name);
        }

        //--data management--//
        private void DataChangedHandler(IReportElement sender, object data)
        {
            //if this radiobutton switched to false, do nothing!
            bool boolData = (bool)data;
            if (!boolData)
                return;
            
            for(int i = 0; i < this.elements.Length; i++)
            {
                if (elements[i] != sender)
                    (elements[i] as FieldBoolean).SetData(false);
            }
        }

        public object GetData()
        {
            if (selected >= 0)
                return options[selected];
            return null;
        }
        public void SetData(object data)
        {
            try
            {
                this.SetData((string)data);
            }
            catch (Exception)
            {
                throw new ArgumentException(data + " could not be cast to a string!");
            }
        }
        public void SetData(string dataString)
        {
            if (!Array.Exists(options, item => item.Equals(dataString)))
                throw new ArgumentException("Option \"" + dataString + "\" is invalid for this radio button!");

            int index = Array.FindIndex(options, item => item.Equals(dataString));
            IReportField field = this.elements[index] as IReportField;
            field.SetData(true);

            if (this.onDataChanged != null)
                this.onDataChanged.Invoke(this, dataString);
        }

        public override void WriteXml(XmlWriter writer)
        {
            base.WriteXml(writer);
            string readOnlyString = isReadOnly ? Boolean.TrueString : Boolean.FalseString;
            writer.WriteElementString("isReadOnly", readOnlyString);
            writer.WriteElementString("description", this.description);


            writer.WriteElementString("selected", this.selected.ToString());

            writer.WriteStartElement("options");
                foreach (string option in options)
                {
                    writer.WriteElementString("option", option);
                }
            writer.WriteEndElement();
            
        }
        public override void ReadXml(XmlReader reader)
        {
            base.ReadXml(reader);
            this.isReadOnly = Boolean.Parse(reader.ReadElementContentAsString());
            try
            {
                this.description = reader.ReadElementContentAsString();
            }
            catch (Exception) { }


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

        public override string ToString()
        {
            return name + "\n" + this.description + "\n" + base.ToString();
        }
    }
}
