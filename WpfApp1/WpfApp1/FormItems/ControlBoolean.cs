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
    public class ControlBoolean : FormControl<CheckBox, bool>
    {
        //--member fields--//
        private BoolDataHolder dataHolder;

        //--construction--//
        public ControlBoolean(string name, string engishTitle, Orientation orientation = Orientation.Horizontal) : base(name, engishTitle, new CheckBox(), orientation)
        {
        }

        protected ControlBoolean() : base("untitledControlDate", "untitled date control", new CheckBox())
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new BoolDataHolder();

            this.binding = new Binding("value");
            binding.Source = dataHolder;
            control.SetBinding(CheckBox.IsCheckedProperty, binding);
        }

        //--cloning--//
        public override FormElement Clone()
        {
            ControlBoolean clone = new ControlBoolean(this.name, this.englishTitle, this.orientation);
            clone.dataHolder.value = this.dataHolder.value;
            (clone.control).GetBindingExpression(CheckBox.IsCheckedProperty).UpdateTarget();

            return clone;
        }

        public override void SetControl(bool value)
        {
            dataHolder.value = value;
            (control).GetBindingExpression(CheckBox.IsCheckedProperty).UpdateTarget();
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            (control).GetBindingExpression(CheckBox.IsCheckedProperty).UpdateSource();
            if (this.dataHolder.value)
            {
                writer.WriteElementString("value", "true");
            }
            else
            {
                writer.WriteElementString("value", "false");
            }
        }

        protected override void ReadControl(XmlReader reader)
        {
            String valueString = reader.ReadElementContentAsString();
            if (valueString == "true")
            {
                this.SetControl(true);
            }
            else
            {
                this.SetControl(false);
            }
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class BoolDataHolder
        {
            public bool value { get; set; }
        }
    }
}
