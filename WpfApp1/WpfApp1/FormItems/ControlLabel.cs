using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Data;
using System.Xml;

namespace WpfApp1.FormItems
{
    public class ControlLabel : FormControl<Label, String>
    {
        //--member fields--//
        private LabelDataHolder dataHolder;

        //--construction--//
        public ControlLabel(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new Label(), orientation)
        {
        }

        protected ControlLabel() : base("untitledLabelDate", "untitled label control", new Label())
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new LabelDataHolder();

            this.binding = new Binding("text");
            binding.Source = dataHolder;
            control.SetBinding(Label.ContentProperty, binding);
        }

        public override FormElement Clone()
        {
            ControlLabel clone = new ControlLabel(this.name, this.englishTitle, this.orientation);
            clone.dataHolder.text = this.dataHolder.text;
            (clone.control).GetBindingExpression(Label.ContentProperty).UpdateTarget();

            return clone;
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            (control).GetBindingExpression(Label.ContentProperty).UpdateSource();
            writer.WriteElementString("content", dataHolder.text);

            
        }

        protected override void ReadControl(XmlReader reader)
        {
            String valueString = reader.ReadElementContentAsString();
            this.SetControl(valueString);
        }

        public override void SetControl(string value)
        {
            this.dataHolder.text = value;
            (control).GetBindingExpression(Label.ContentProperty).UpdateTarget();
        }

        private class LabelDataHolder
        {
            public string text { get; set; }
        }
    }
}
