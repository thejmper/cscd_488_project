using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;

using WpfApp1.Utils;

namespace WpfApp1.FormItems
{
    /// <summary>
    /// creates a bootstrap-like 12-wide grid for laying elements out on.
    /// (just like the existing forms use.)
    /// </summary>
    public class LayoutGrid : ElementGroup
    {
        //--member fields--//
        /// <summary>
        /// public element reference for drawing by other things.
        /// </summary>
        public override UIElement UIelement { get { return this.grid; } }
        
        /// <summary>
        /// internal grid reference for laying out objects.
        /// </summary>
        private Grid grid;

        //--construction--//
        public LayoutGrid(string name): base(name)
        {
            this.grid = new Grid();

            //create 11 new colums, since we start out with 1 by default.
            for (int i = 1; i < 12; i++)
                grid.ColumnDefinitions.Add(new ColumnDefinition());
        }
        protected LayoutGrid(): this("unnamedLayoutGrid")
        {

        }

        //--grid manipulation--//
        /// <summary>
        /// adds an element to the grid in the given location
        /// </summary>
        /// <param name="element">element to add</param>
        /// <param name="col">colum to place the left-most edge at. Starts at 0</param>
        /// <param name="row">row to place the top-most edge at. Starts at 0</param>
        /// <param name="colSpan">colums this element should span. Must bet between 1 and 12</param>
        public void AddElement(FormElement element, int col, int row, int colSpan, bool addBorder = false)
        {
            //check for errors
            if (colSpan > 12)
                throw new System.ArgumentException("colSpan cannot be greater than 12!");
            if (colSpan <= 0)
                throw new System.ArgumentException("colSpan must be at least 1");
            if (row < 0)
                throw new System.ArgumentException("row must be 0 or greater");
            if (col < 0 || col > 11)
                throw new System.ArgumentException("col must be between 0 and 11");

            base.AddElement(element);

            //okay, now we know we've got good data!
            //add more rows if we need to.
            while (row > (grid.RowDefinitions.Count - 1))
                grid.RowDefinitions.Add(new RowDefinition());

            UIElement uiElement = element.UIelement;

            //add border (if requested)
            if (addBorder)
                uiElement = uiElement.Bordered();

            //add the control
            Grid.SetRow(uiElement, row);
            Grid.SetColumn(uiElement, col);
            Grid.SetColumnSpan(uiElement, colSpan);
            grid.Children.Add(uiElement);
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
