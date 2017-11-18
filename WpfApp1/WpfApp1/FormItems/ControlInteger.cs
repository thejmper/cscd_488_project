using System;
using System.Windows.Data;
using System.Windows.Controls;
using System.Windows;

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

        protected override void BindControl()
        {
            this.dataHolder = new IntDataHolder();

            Binding dataBinding = new Binding("value");
            dataBinding.Source = dataHolder;
            control.SetBinding(TextBox.TextProperty, dataBinding);
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class IntDataHolder
        {
            public int value { get; set; }
        }

        public override void ShowMessage()
        {
            MessageBox.Show(name + ": " + dataHolder.value);
        }
    }
}
