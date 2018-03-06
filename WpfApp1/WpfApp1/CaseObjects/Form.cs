using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Collections.Generic;
using ALInspectionApp.FormItems.Controls;

using ALInspectionApp.FormItems;
using ALInspectionApp.Utils;
using System.Xml.Serialization;
using ALInspectionApp.FormItems.Layout;

namespace ALInspectionApp.CaseObject
{
    /// <summary>
    /// class for a single form, 1-for-1 with the existing goverment stuff.
    /// </summary>
    public class Form : ElementGroup<FormElement>
    {
        //--member fields--//
        /// <summary>
        /// get the UIelement used to represent this object!
        /// </summary>
        public override UIElement UIelement { get { return this.stackPanel; } }
        /// <summary>
        /// stack panel used to hold our visual elements
        /// </summary>
        private StackPanel stackPanel;

        //--cached header UI elements
        private ControlText facilityNameField;
        private ControlInteger facilityNoField;
        private ControlText licensorNameField;
        private ControlDate inspectionDateControl;
        //--cached header fields--//
        private string facilityName
        {
            get
            {
                if (report == null)
                    return "unnamed facility";
                return report.facilityName;
            }
        }
        private int facilitylicenseNumber
        {
            get
            {
                if (report == null)
                    return 0;
                return report.facilitylicenseNumber;
            }
        }
        private string licensorName
        {
            get
            {
                if (report == null)
                    return "No Name Given";
                return report.licensorName;
            }
        }
        

        //--report stuf--//
        private Report _report;
        public Report report
        {
            get { return this._report; }
            set
            {
                this._report = value;
                this.SetHeaderValues();
            }
        }

        //--construction--//
        /// <summary>
        /// public form constructor.
        /// </summary>
        /// <param name="name"></param>
        public Form(string name): base(name)
        {
            this.stackPanel = new StackPanel();
            this.elementList = new List<FormElement>();

            this.facilityNameField = new ControlText("facilityName", "ASSISTED LIVING FACILITY NAME");
            this.facilityNameField.SetReadOnly(true);

            this.facilityNoField = new ControlInteger("licensNumber", "LICENSE NUMBER");
            this.facilityNoField.SetReadOnly(true);

            this.licensorNameField = new ControlText("licensorName", "LICENSOR NAME");
            this.licensorNameField.SetReadOnly(true);

            this.inspectionDateControl = new ControlDate("inspectionDate", "INSPECTION DATE");
            //this.inspectionDateControl.SetValue(new DateTime(1999, 1, 1));
            LayoutGrid headerGrid = new LayoutGrid("header");
            headerGrid.AddElement(this.facilityNameField, 0, 0, 9);
            headerGrid.AddElement(this.facilityNoField, 9, 0, 3);
            headerGrid.AddElement(this.inspectionDateControl, 0 ,1, 3);
            headerGrid.AddElement(this.licensorNameField, 3, 1, 9);

            this.stackPanel.Children.Add(headerGrid.UIelement);
            this.SetHeaderValues();
        }

        protected Form(): this("unnamedForm")
        {
            
        }




        //--helpers--//
        /// <summary>
        /// grabs header values from the report this form is attached to. Loaded into
        /// a private method because it's called a few times and there's no reason to dupilciate code.
        /// </summary>
        private void SetHeaderValues()
        {
            this.facilityNameField.SetValue(this.facilityName);
            this.facilityNoField.SetValue(this.facilitylicenseNumber);
            this.licensorNameField.SetValue(this.licensorName);
        }


        //--cloning--//
        /// <summary>
        /// creates a basic instance of this class for the clone system.
        /// </summary>
        /// <returns></returns>
        protected override ElementGroup<FormElement> CloneInner()
        {
            Form clone = new Form(this.name);
            return clone;
        }
        /// <summary>
        /// clone a form with a given name, instead of just copying the game.
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public Form Clone(string name)
        {
            Form clone = (Form)this.Clone();
            clone.name = name;

            return clone;
        }
        

        //--manipulation--//
        /// <summary>
        /// adds a new form element to this form. This simply duplicates the existing
        /// addelementinternal funcionality, but makes it public so other classes can interact with it.
        /// </summary>
        /// <param name="element"></param>
        public void AddElement(FormElement element)
        {
            this.AddElementInternal(element);
        }

        /// <summary>
        /// adds an element to both this form and it's form-displaying stackpanel
        /// </summary>
        /// <param name="element"></param>
        protected override void AddElementInternal(FormElement element)
        {
            base.AddElementInternal(element);

            
            stackPanel.Children.Add(element.UIelement);
        }

        //--save/load stuff--//
        /// <summary>
        /// writes the inner part of the form's XML
        /// </summary>
        /// <param name="writer"></param>
        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteStartElement(inspectionDateControl.GetType().Name);
            inspectionDateControl.WriteXml(writer);
            writer.WriteEndElement();
            base.WriteXMLInner(writer);
        }
        /// <summary>
        /// reads the inner part of the form's XML
        /// </summary>
        /// <param name="reader"></param>
        protected override void ReadXMLInner(XmlReader reader)
        {
            Type type = typeof(ControlDate);
            XmlSerializer ser = new XmlSerializer(type);
            ControlDate dummy = (ControlDate)ser.Deserialize(reader);


            this.inspectionDateControl.SetValue(dummy.GetValue());

            reader.MoveToContent();

            base.ReadXMLInner(reader);
        }
    }
}
