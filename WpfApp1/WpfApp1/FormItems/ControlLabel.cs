using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Media;
using System.Xml;

namespace WpfApp1.FormItems
{
    /// <summary>
    /// represents a non-interactable text label. 
    /// </summary>
    public class ControlLabel : FormElement
    {
        //--member fields--//
        public override UIElement UIelement { get { return this.label; } }

        //--private fields--//
        private Label label;

        //--construction--//
        /// <summary>
        /// constructs a label
        /// </summary>
        /// <param name="name">the name of this control, not user-visible</param>
        /// <param name="labelText">the text of this label that will be visible to the user.</param>
        public ControlLabel(string name, string labelText) : base(name)
        {
            this.label = new Label();
            this.label.Content = labelText;

        }
        protected ControlLabel(): this("UntitledLabel", "NO LABEL TEXT")
        {

        }

        public override FormElement Clone()
        {
            ControlLabel clone = new ControlLabel(this.name, this.label.Content.ToString());
            return clone;
        }

        /// <summary>
        /// This does nothing, since this is already read only. It's just here to fulfill the FormElement contract.
        /// </summary>
        /// <param name="isReadOnly"></param>
        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            //do nothing, there's nothing to set to read-only
        }



        protected override void ReadXMLInner(XmlReader reader)
        {

            string content = reader.ReadElementContentAsString();
            this.label.Content = content;
        }

        protected override void WriteXMLInner(XmlWriter writer)
        {

            writer.WriteElementString("labelText",this.label.Content.ToString());
        }
    }
}
