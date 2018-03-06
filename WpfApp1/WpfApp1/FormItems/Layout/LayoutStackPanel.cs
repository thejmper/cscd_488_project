using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;

namespace ALInspectionApp.FormItems.Layout
{
    /// <summary>
    /// layout group that places things into a stackpanel for display.
    /// </summary>
    public class LayoutStackPanel : ElementGroup<FormElement>
    {
        public override UIElement UIelement { get { return panel; } }

        private StackPanel panel;
        private Orientation orientation;

        //--construction--//
        /// <summary>
        /// creates a new layoutstackpanel
        /// </summary>
        /// <param name="name">unique non-user-visible name of this layoutstackpanel</param>
        /// <param name="orientation">orientation of the display stackpanel</param>
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


    }
}
