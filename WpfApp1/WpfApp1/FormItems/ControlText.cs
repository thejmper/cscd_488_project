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

        private bool acceptsNewLine;

        //--constructor--//
        public ControlText(string name, string engishTitle, bool acceptsNewLine = false, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new TextBox(), orientation)
        {
            this.acceptsNewLine = acceptsNewLine;

            this.control.AcceptsReturn = acceptsNewLine;
            this.control.TextWrapping = System.Windows.TextWrapping.Wrap;

            
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
            ControlText clone = new ControlText(this.name, this.englishTitle,this.acceptsNewLine, this.orientation);
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
        public override void SetValue(string value)
        {
            dataHolder.text = value;
            (control).GetBindingExpression(TextBox.TextProperty).UpdateTarget();
        }

        protected override void ReadControl(XmlReader reader)
        {

            if (reader.ReadElementContentAsString().ToLower().Equals("true"))
                this.acceptsNewLine = true;
            else
                this.acceptsNewLine = false;

            this.control.AcceptsReturn = acceptsNewLine;

            this.SetReadOnlyInternal(isReadOnly);
            this.SetValue(reader.ReadElementContentAsString());


        }

        protected override void WriteControl(XmlWriter writer)
        {

            if (this.acceptsNewLine)
                writer.WriteElementString("acceptsNewLine", "true");
            else
                writer.WriteElementString("acceptsNewLine", "false");

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
