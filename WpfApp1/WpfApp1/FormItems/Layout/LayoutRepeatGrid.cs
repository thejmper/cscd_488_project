﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Xml.Serialization;
using ALInspectionApp.Utils;

namespace ALInspectionApp.FormItems.Layout
{
    /// <summary>
    /// element group that can be expanded with copies of a given template.
    /// </summary>
    public class LayoutRepeatGrid : ElementGroup<LayoutStackPanel>
    {
        //--member fields--//
        public override UIElement UIelement { get { return grid; } }

        private Grid grid;
        private StackPanel stackPanel;
        private FormElement[] template;
        private Button expandButton;

        private int numRows;
        private string buttonText;

        //--construction--//
        public LayoutRepeatGrid(string name, FormElement[] template, string buttontext) : base(name)
        {
            //create what we need
            this.template = template;
            this.grid = new Grid();
            this.stackPanel = new StackPanel();
            this.numRows = 0;
            this.buttonText = buttontext;

            //setup grid rows
            this.grid.RowDefinitions.Add(new RowDefinition());
            this.grid.RowDefinitions.Add(new RowDefinition());

            //put an expandable stack panel in the top row
            Grid.SetRow(this.stackPanel, 0);
            Grid.SetColumn(this.stackPanel, 0);
            grid.Children.Add(this.stackPanel);

            //put a button at the bottom
            this.expandButton = new Button();
            expandButton.Content = buttonText;
            expandButton.Click += ExpandButton_Click;

            Grid.SetRow(expandButton, 1);
            grid.Children.Add(expandButton);

            //comment this out unless your creating forms
            //add row if no row is present
            //if (grid.Children.Count == 2 && template != null)
            //{
            //    this.AddRow();
            //}
        }
        protected LayoutRepeatGrid(): this("UntitledRepeatGrid", null, "")
        {

        }
        protected override ElementGroup<LayoutStackPanel> CloneInner()
        {
            LayoutRepeatGrid clone = new LayoutRepeatGrid(this.name, this.template, this.buttonText);

            //foreach (LayoutStackPanel element in this.elementList)
            //    clone.AddElementInternal((LayoutStackPanel)element.Clone());    //<- fixed the load bug.

            return clone;
        }


        //--click handler--//
        private void ExpandButton_Click(object sender, RoutedEventArgs e)
        {
            this.AddRow();
        }
        private void AddRow()
        {
            LayoutStackPanel innerRow = new LayoutStackPanel("row" + numRows, Orientation.Vertical);
            foreach(FormElement element in this.template)
            {
                innerRow.AddElement(element.Clone());
            }

            this.AddElementInternal(innerRow);
        }
        protected override void AddElementInternal(LayoutStackPanel element)
        {
            base.AddElementInternal(element);
            this.stackPanel.Children.Add(element.UIelement);
            this.numRows++;
        }

        protected override void ReadXMLInner(XmlReader reader)
        {
            //uncomment this once we re-build the form templates.
            this.buttonText = reader.ReadElementContentAsString();
            this.expandButton.Content = buttonText;
            List<FormElement> templateList = new List<FormElement>();

            reader.ReadStartElement();
            while (reader.NodeType != XmlNodeType.EndElement)
            {
                Type type = Type.GetType(reader.GetAttribute("type"));

                XmlSerializer ser = new XmlSerializer(type);
                FormElement element = (FormElement)ser.Deserialize(reader);

                reader.MoveToContent();
                templateList.Add(element);
            }
            reader.ReadEndElement();
            this.template = templateList.ToArray();

            base.ReadXMLInner(reader);
        }

        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("buttonText", this.buttonText);
            writer.WriteStartElement("template");
            //write elements here
            foreach (FormElement element in this.template)
            {
                writer.WriteStartElement(element.GetType().Name);
                element.WriteXml(writer);
                writer.WriteEndElement();
            }
            //done
            writer.WriteEndElement();

            base.WriteXMLInner(writer);
        }

    }


}
