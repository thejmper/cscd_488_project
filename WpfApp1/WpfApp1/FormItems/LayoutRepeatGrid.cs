using System;
using System.Collections;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Xml.Serialization;
using WpfApp1.Utils;

namespace WpfApp1.FormItems
{
    public class LayoutRepeatGrid : ElementGroup<GridElement>
    {
        /// <summary>
        /// internal grid reference for laying out objects.
        /// </summary>
        private Grid grid;
        private List<GridElement> repeatableElements;
        private int numRows;

        public override UIElement UIelement { get { return this.grid; } }

        //--construction--//
        public LayoutRepeatGrid(string name, string buttonText): base(name)
        {
            this.grid = new Grid();
            repeatableElements = new List<GridElement>();
            numRows = 1;
            //create 11 new colums, since we start out with 1 by default.
            for (int i = 1; i < 12; i++)
                grid.ColumnDefinitions.Add(new ColumnDefinition());

            ControlButton addButton = new ControlButton("button", buttonText);
            AddElement(addButton, 0, 999, 2, 1, false);
            addButton.button.Click += Button_Click;


        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            RepeatElements();
        }

        protected LayoutRepeatGrid(): this("unnamedLayoutGrid", "unnamedButton")
        {

        }

        //--cloning--//
        protected override ElementGroup<GridElement> CloneInner()
        {
            LayoutGrid clone = new LayoutGrid(this.name);
            return clone;
        }

        //--grid manipulation--//
        /// <summary>
        /// adds an element to the grid in the given location
        /// </summary>
        /// <param name="element">element to add</param>
        /// <param name="col">colum to place the left-most edge at. Starts at 0</param>
        /// <param name="row">row to place the top-most edge at. Starts at 0</param>
        /// <param name="colSpan">colums this element should span. Must bet between 1 and 12</param>
        public void AddElement(FormElement element, int col, int row, int colSpan, int rowSpan = 1, bool isBordered = true)
        {
            GridElement gridElement = new GridElement(element, row, col, colSpan, rowSpan, isBordered);

            this.AddElementInternal(gridElement);
            if (numRows <= row)
            {
                numRows++;
            }
        }

        public void AddRepeatableElement(FormElement element, int col, int row, int colSpan, int rowSpan = 1, bool isBordered = true)
        {
            GridElement gridElement = new GridElement(element, row, col, colSpan, rowSpan, isBordered);
            this.AddElement(element, row, col, colSpan, rowSpan, isBordered);
            repeatableElements.Add(gridElement);
        }

        protected override void AddElementInternal(GridElement element)
        {
            base.AddElementInternal(element);

            //add more rows if we need to.
            while (element.row > (grid.RowDefinitions.Count - 1))
                grid.RowDefinitions.Add(new RowDefinition());

            //add border (if requested)
            UIElement uiElement = element.UIelement;
            if (element.isBordered)
                uiElement = uiElement.Bordered();

            //add the control
            Grid.SetRow(uiElement, element.row);
            Grid.SetColumn(uiElement, element.col);
            Grid.SetColumnSpan(uiElement, element.colSpan);
            grid.Children.Add(uiElement);
        }

        public void RepeatElements()
        {
            foreach (GridElement el in repeatableElements)
            {
                FormElement newElement = el.formElement.Clone();
                newElement.name = newElement.name + el.row + numRows;
                AddElement(newElement, el.col, el.row + numRows, el.colSpan, el.colSpan, el.isBordered);
            }
        }
    }

   
}
