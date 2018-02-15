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
    public class LayoutRepeatGrid : LayoutGrid
    {
        /// <summary>
        /// internal grid reference for laying out objects.
        /// </summary>
        private List<GridElement> template;
        private int numRows;
        private Button button;


        //--construction--//
        public LayoutRepeatGrid(string name, List<GridElement> template, string buttonText) : base(name)
        {
            numRows = 0;
            this.template = template;
            button = new Button();
            button.Content = buttonText;
            button.Click += Button_Click;
 
            //add row so button will sit below all things added
            grid.RowDefinitions.Add(new RowDefinition());
            Grid.SetRow(button, 1);
            if (((Grid)UIelement).Children.Count == 0)
            {
                RepeatElements();
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            RepeatElements();
        }

        protected LayoutRepeatGrid(): this("unnamedLayoutGrid", null ,"unnamedButton")
        {

        }

        //--cloning--//
        protected override ElementGroup<GridElement> CloneInner()
        {
            LayoutGrid clone = new LayoutGrid(this.name+ numRows);
            return clone;
        }

        public void RepeatElements()
        {
            LayoutGrid grid = new LayoutGrid("repeat" + numRows);
            foreach (GridElement el in template)
            {
                FormElement newElement = el.Clone();
                newElement.name = newElement.name + numRows;
                grid.AddElement(newElement, el.col, el.row, el.colSpan, el.rowSpan, el.isBordered);
            }
            AddElement(grid, 0, numRows, 12,1,false);
            numRows++;
            Grid.SetRow(button, numRows+1);
            ((Grid)this.UIelement).RowDefinitions.Add(new RowDefinition());
            ((Grid)this.UIelement).Children.Remove(button);
            ((Grid)this.UIelement).Children.Add(button);

        }

       /* protected override void ReadXMLInner(XmlReader reader)
        {
            
        }*/
    }

   
}
