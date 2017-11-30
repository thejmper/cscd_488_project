using System;
using System.Windows.Controls;
using System.Windows.Data;
using System.Xml;

namespace WpfApp1.FormItems
{
    public class ControlText : FormControl<TextBox, string>
    {
        //--member fields--//
        private TextDataHolder dataHolder;

        //--constructor--//
        public ControlText(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new TextBox(), orientation)
        {

        }
        protected ControlText(): this("unnamedTextControl", "untitled text Control")
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new TextDataHolder();

            this.binding = new Binding("text");
            binding.Source = this.dataHolder;
            control.SetBinding(TextBox.TextProperty, binding);
        }

        //--cloning--//
        public override FormElement Clone()
        {
            ControlText clone = new ControlText(this.name, this.englishTitle, this.orientation);
            clone.dataHolder.text = this.dataHolder.text;
            (clone.control).GetBindingExpression(TextBox.TextProperty).UpdateTarget();

            return clone;
        }

        //--readonly--//
        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsReadOnly = isReadOnly;
        }

        //--setters--//
        public override void SetControl(string value)
        {
            dataHolder.text = value;
            (control).GetBindingExpression(TextBox.TextProperty).UpdateTarget();
        }

        protected override void ReadControl(XmlReader reader)
        {
            this.SetReadOnlyInternal(isReadOnly);
            this.SetControl(reader.ReadElementContentAsString());
        }

        protected override void WriteControl(XmlWriter writer)
        {
            (control).GetBindingExpression(TextBox.TextProperty).UpdateSource();
            writer.WriteElementString("text", this.dataHolder.text);
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class TextDataHolder
        {
            public string text { get; set; }
        }
    }

    
}
