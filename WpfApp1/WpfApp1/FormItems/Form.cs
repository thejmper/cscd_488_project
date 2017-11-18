﻿using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Collections.Generic;

namespace WpfApp1.FormItems
{
    /// <summary>
    /// class for a single form, 1-for-1 with the existing goverment stuff.
    /// </summary>
    public class Form : FormElement
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
        /// <summary>
        /// elements contained within this form
        /// </summary>
        private List<FormElement> elementList;

        //--construction--/
        public Form(string name): base(name)
        {
            this.stackPanel = new StackPanel();
            this.elementList = new List<FormElement>();
        }
        protected Form(): this("unnamedForm")
        {

        }

        //--manipulation--//
        public void AddElement(FormElement element)
        {
            if (elementList.Find(item => item.name.Equals(element.name)) != null)
                throw new System.ArgumentException("Cannot add element " + element.name + ". to Form " + this.name + " that tag is already in use!");

            elementList.Add(element);
            stackPanel.Children.Add(element.UIelement);
        }

        //--save/load stuff--//
        protected override void ReadXMLInner(XmlReader reader)
        {
            throw new NotImplementedException();
        }
        protected override void WriteXMLInner(XmlWriter writer)
        {
            throw new NotImplementedException();
        }
    }
}
