using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Xml.Serialization;
using WpfApp1.Utils;

namespace WpfApp1.FormItems
{
    /// <summary>
    /// creates a bootstrap-like 12-wide grid for laying elements out on.
    /// (just like the existing forms use.)
    /// </summary>
    public class LayoutGrid : ElementGroup<GridElement>
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
    }

    public class GridElement : FormElement
    {
        //--member fields--//
        /// <summary>
        /// form element stored in this slot in the grid
        /// </summary>
        public FormElement formElement;

        //--grid location--//
        public int row;
        public int col;
        public int rowSpan;
        public int colSpan;

        public bool isBordered;

        /// <summary>
        /// ui element drawing this grid element
        /// </summary>
        public override UIElement UIelement { get { return this.formElement.UIelement; } }

        //--construction--//
        public GridElement(FormElement element, int row = 0, int col = 0, int colSpan = 1, int rowSpan = 1, bool isBordered = true): base(element.name)
        {
            if (row < 0)
                throw new System.ArgumentException("row must be 0 or greater");

            if (col < 0 || col > 11)
                throw new System.ArgumentException("col must be between 0 and 11");

            if (colSpan > 12)
                throw new System.ArgumentException("colSpan cannot be greater than 12!");
            if (colSpan <= 0)
                throw new System.ArgumentException("colSpan must be at least 1");

            if (rowSpan < 1)
                throw new System.ArgumentException("rowSpan must be at least 1!)");

            this.formElement = element;
            this.row = row;
            this.col = col;
            this.colSpan = colSpan;
            this.rowSpan = rowSpan;

            this.isBordered = isBordered;
        }
        protected GridElement(): base("untitledGridElement")
        {

        }

        //--cloning--//
        public override FormElement Clone()
        {
            FormElement inner = this.formElement.Clone();
            GridElement clone = new GridElement(inner, this.row, this.col, this.colSpan, this.rowSpan, this.isBordered);

            return clone;
        }

        //--readonly--//
        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.formElement.SetReadOnly(isReadOnly);
        }

        //--save/load--//
        protected override void ReadXMLInner(XmlReader reader)
        {
            this.row = Int32.Parse(reader.ReadElementContentAsString());
            this.col = Int32.Parse(reader.ReadElementContentAsString());
            this.rowSpan = Int32.Parse(reader.ReadElementContentAsString());
            this.colSpan= Int32.Parse(reader.ReadElementContentAsString());

            this.isBordered = reader.ReadElementContentAsString().ToLower().Equals("true");

            reader.MoveToContent();
            Type type = Type.GetType(reader.GetAttribute("type"));

            XmlSerializer ser = new XmlSerializer(type);
            FormElement element = (FormElement)ser.Deserialize(reader);

            this.formElement = element;

            reader.MoveToContent();
        }

        protected override void WriteXMLInner(XmlWriter writer)
        {
            //write grid-specific variables
            writer.WriteElementString("row", this.row.ToString());
            writer.WriteElementString("col", this.col.ToString());
            writer.WriteElementString("rowSpan", this.rowSpan.ToString());
            writer.WriteElementString("colSpan", this.colSpan.ToString());
            writer.WriteElementString("isBordered", this.isBordered.ToString());

            //write the inner control!
            writer.WriteStartElement(this.formElement.GetType().Name);
            formElement.WriteXml(writer);
        }
    }
}
