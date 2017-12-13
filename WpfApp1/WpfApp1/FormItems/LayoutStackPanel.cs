using System;
using System.Windows;
using System.Windows.Controls;
<<<<<<< HEAD
using System.Xml;

namespace WpfApp1.FormItems
{
    public class LayoutStackPanel : ElementGroup<FormElement>
    {
        public override UIElement UIelement { get { return panel; } }
=======

namespace WpfApp1.FormItems
{
    class LayoutStackPanel : ElementGroup<GridElement>
    {
        /// <summary>
        /// internal grid reference for laying out objects.
        /// </summary>
        private StackPanel panel;

        
>>>>>>> parent of 525148b... Created formA XML

        private StackPanel panel;
        private Orientation orientation;

<<<<<<< HEAD
        //--construction--//
        public LayoutStackPanel(string name, Orientation orientation = Orientation.Horizontal) : base(name)
        {
            this.orientation = orientation;
            this.panel = new StackPanel();
            this.panel.Orientation = orientation;
        }
        protected LayoutStackPanel(): this("untitled", Orientation.Horizontal)
        {

        }

        protected override void AddElementInternal(FormElement element)
        {
            base.AddElementInternal(element);
            panel.Children.Add(element.UIelement);
        }

        public void AddElement(FormElement element)
        {
            this.AddElementInternal(element);
        }
=======
        public LayoutStackPanel(string name) : base(name)
        {

        }
        protected LayoutStackPanel() : this("unnamedLayoutGrid")
        {
>>>>>>> parent of 525148b... Created formA XML


<<<<<<< HEAD
        protected override ElementGroup<FormElement> CloneInner()
        {
            LayoutStackPanel clone = new LayoutStackPanel(this.name, this.orientation);
            return clone;
        }

        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("orientation", this.orientation.ToString());
            base.WriteXMLInner(writer);
        }
        protected override void ReadXMLInner(XmlReader reader)
        {
            if (reader.ReadElementContentAsString().Equals("Horizontal"))
                this.orientation = Orientation.Horizontal;
            else
                this.orientation = Orientation.Vertical;

            this.panel.Orientation = this.orientation;         


            base.ReadXMLInner(reader);
        }


=======



        public class PanelElement : FormElement
        {
            //--member fields--//
            /// <summary>
            /// form element stored in this slot in the grid
            /// </summary>
            public FormElement formElement;

            //--grid location--//
            //public int row;
            //public int col;
            //public int rowSpan;
            //public int colSpan;

            public bool isBordered;

            /// <summary>
            /// ui element drawing this grid element
            /// </summary>
            public override UIElement UIelement { get { return this.formElement.UIelement; } }

            //--construction--//
            public PanelElement(FormElement element, int row = 0, int col = 0, int colSpan = 1, int rowSpan = 1, bool isBordered = true) : base(element.name)
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
            protected GridElement() : base("untitledGridElement")
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
                this.colSpan = Int32.Parse(reader.ReadElementContentAsString());

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
>>>>>>> parent of 525148b... Created formA XML
    }
}
