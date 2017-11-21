using System;
using System.Windows.Data;
using System.Windows.Controls;
using System.Windows;
using System.Xml;

namespace WpfApp1.FormItems
{
    public class ControlInteger : FormControl<TextBox>
    {
        //--member fields--//
        private IntDataHolder dataHolder;

        //--construction--//
        public ControlInteger(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new TextBox(), orientation)
        {
        }
        protected ControlInteger(): base("untitledControlInteger", "untitled integer control", new TextBox())
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new IntDataHolder();

            this.binding= new Binding("value");
            binding.Source = dataHolder;
            control.SetBinding(TextBox.TextProperty, binding);
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class IntDataHolder
        {
            public int value { get; set; }
        }

        protected override void WriteControl(XmlWriter writer)
        {
            (control).GetBindingExpression(TextBox.TextProperty).UpdateSource();
            writer.WriteElementString("value", this.dataHolder.value.ToString());
        }

        protected override void ReadControl(XmlReader reader)
        {
            dataHolder.value = Int32.Parse(reader.ReadElementContentAsString());
            (control).GetBindingExpression(TextBox.TextProperty).UpdateTarget();
        }
    }
}
