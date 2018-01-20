﻿using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using WpfApp1.FormItems;

namespace WpfApp1.Case
{
    public class Report : TabbedGroup<Form>
    {
        //--member fields--//
         public List<Form> forms
        {
            get
            {
                return this.elementList;
            }
        }

        //unique to this report
        public string licensorName { get; private set; }
        public string licensorID { get; private set; }

        //inhereted.
        public string facilityName
        {
            get
            {
                if (this.caseFile == null)
                    return "Unassigned";
                else
                    return caseFile.facilityName;
            }
        }
        public int facilitylicenseNumber
        {
            get
            {
                if (this.caseFile == null)
                    return 0;
                else
                    return caseFile.facilitylicenseNumber;
            }
        }

        //used for merging
        internal DateTime lastModified;

        //label used to display this report
        private CaseFile _caseFile;
        internal CaseFile caseFile
        {
            get
            {
                return _caseFile;
            }
            set
            {
                this._caseFile = value;
                foreach (Form form in this.elementList)
                    form.report = this;
            }
        }

        //--construction--//
        internal Report(string name, string userFullName, string userID, CaseFile caseFile): base(name)
        {

            this.caseFile = caseFile;
            this.licensorName = userFullName;
            this.licensorID = userID;
            this.lastModified = DateTime.Now;

        }
        protected Report(): this("unnamed", "nameless", "noID", null)
        {

        }
        
        //--form manipulation--//
        public Form AddForm(Form formTemplate)
        {
            string name = formTemplate.name;
            int suffix = 0;

            do
            {
                suffix++;
            } while (this.elementList.Exists(item => item.name.Equals(name + suffix.ToString())));

            Form newForm = (Form)formTemplate.Clone(name + suffix.ToString());
            this.AddElementInternal(newForm);
            newForm.report = this;

            return newForm;
        }

        protected override void AddElementInternal(Form element)
        {
            element.report = this;
            base.AddElementInternal(element);
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            base.SetReadOnlyInternal(isReadOnly);
        }

        //--save/load--//
        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("licensorName", this.licensorName);
            writer.WriteElementString("licensorID", this.licensorID);
            writer.WriteElementString("lastModified", DateTime.Now.ToString());
            base.WriteXMLInner(writer);
        }
        protected override void ReadXMLInner(XmlReader reader)
        {
            this.licensorName = reader.ReadElementContentAsString();
            this.licensorID = reader.ReadElementContentAsString();
            this.lastModified = DateTime.Parse(reader.ReadElementContentAsString());
            base.ReadXMLInner(reader);
        }

        public override void WriteXml(XmlWriter writer)
        {
            base.WriteXml(writer);
        }

        protected override ElementGroup<Form> CloneInner()
        {
            throw new NotImplementedException("Don't clone Reports!");
        }

        public override string ToString()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.AppendLine("reportID: " + this.name);
            sb.AppendLine("faciltyName: " + this.facilityName);
            sb.AppendLine("license number: " + this.facilitylicenseNumber);
            sb.AppendLine("licensor Name: " + this.licensorName);
            sb.AppendLine("Forms: " + this.elementList.Count);

            return sb.ToString();
        }
    }
}
