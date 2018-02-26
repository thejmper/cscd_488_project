using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Xml;

namespace WpfApp1.FormItems
{
    /*
    /// <summary>
    /// control for a wpf button. I don't think we actually need this one.
    /// </summary>
    public class ControlButton : FormElement
    {
        //--private fields--//
        public Button button;

        public override UIElement UIelement { get { return this.button; } }
        protected ControlButton() : this("UntitledLabel", "NO BUTTON TEXT")
        {

        }

        public ControlButton(string name, string buttonText)
        {
            this.button = new Button();
            this.button.Content = buttonText;
        }

        public override FormElement Clone()
        {
            ControlButton clone = new ControlButton(this.name, this.button.Content.ToString());
            return clone;
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            button.IsEnabled = isReadOnly;
        }

        protected override void ReadXMLInner(XmlReader reader)
        {
            this.button.Content = reader.ReadContentAsString();
        }

        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("buttonText", this.button.Content.ToString());
        }
    }
    */
}
