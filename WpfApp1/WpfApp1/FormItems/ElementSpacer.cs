using System;
using System.Windows;
using System.Windows.Shapes;
using System.Windows.Controls;
using System.Windows.Media;
using System.Xml;

namespace WpfApp1.FormItems
{
    public class ElementSpacer : FormElement
    {
        public override UIElement UIelement { get { return this.rectangle; } }

        private Rectangle rectangle;

        public ElementSpacer(string name, int height = 25): base(name)
        {
            this.rectangle = new Rectangle();
            this.rectangle.Height = height;
            this.rectangle.HorizontalAlignment = HorizontalAlignment.Stretch;

            this.rectangle.Fill = Brushes.PowderBlue;

        }
        protected ElementSpacer() : this("untitledSpacer")
        {

        }

        public override FormElement Clone()
        {
            ElementSpacer clone = new ElementSpacer(this.name);
            return clone;
        }

        protected override void ReadXMLInner(XmlReader reader)
        {
            int height = Int32.Parse(reader.ReadElementContentAsString());
            this.rectangle.Height = height;
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            //do nothing
        }

        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("height", this.rectangle.Height.ToString());
        }
    }
}
