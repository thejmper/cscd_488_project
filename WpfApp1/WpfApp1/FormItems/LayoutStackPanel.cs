﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Xml.Serialization;
using WpfApp1.Utils;

namespace WpfApp1.FormItems
{
    public class LayoutStackPanel : ElementGroup<PanelElement>
    {
        /// <summary>
        /// internal grid reference for laying out objects.
        /// </summary>
        private StackPanel panel;



        public override UIElement UIelement { get { return this.panel; } }

        public LayoutStackPanel(string name, Orientation orientation = Orientation.Horizontal) : base(name)
        {
            panel = new StackPanel();
            panel.Orientation = orientation;
        }
        protected LayoutStackPanel() : this("unnamedLayoutGrid")
        {

        }

        protected override ElementGroup<PanelElement> CloneInner()
        {
            return new LayoutStackPanel(this.name);
        }

        public void AddElement(FormElement element, bool isBordered = true)
        {
            PanelElement panelElement = new PanelElement(element, isBordered);
           // panelElement.name = element.name;

            this.AddElementInternal(panelElement);
        }

        protected override void AddElementInternal(PanelElement element)
        {
            base.AddElementInternal(element);



            //add border (if requested)
            UIElement uiElement = element.UIelement;
            if (element.isBordered)
                uiElement = uiElement.Bordered();

            //add the control
            panel.Children.Add(uiElement);
        }
    }

    public class PanelElement : FormElement
    {
        public FormElement formElement;

        public bool isBordered;

        public PanelElement(FormElement element, bool hasBorder)
        {
            this.name = element.name;
            this.formElement = element;

            this.isBordered = hasBorder;
        }
        protected PanelElement() : base("untitledPanelElement")
        {

        }



        /// <summary>
        /// ui element drawing this grid element
        /// </summary>
        public override UIElement UIelement { get { return this.formElement.UIelement; } }

        public override FormElement Clone()
        {
            FormElement inner = this.formElement.Clone();
            PanelElement clone = new PanelElement(this.formElement, isBordered);
            return clone;
        }

        protected override void ReadXMLInner(XmlReader reader)
        {
            this.isBordered = reader.ReadElementContentAsString().ToLower().Equals("true");
            reader.MoveToContent();
            Type type = Type.GetType(reader.GetAttribute("type"));

            XmlSerializer ser = new XmlSerializer(type);
            FormElement element = (FormElement)ser.Deserialize(reader);

            this.formElement = element;

            reader.MoveToContent();
            //throw new NotImplementedException();
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.formElement.SetReadOnly(isReadOnly);
        }

        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("isBordered", this.isBordered.ToString());

            //write the inner control!
            writer.WriteStartElement(this.formElement.GetType().Name);
            formElement.WriteXml(writer);
            //throw new NotImplementedException();
        }
    }
}
