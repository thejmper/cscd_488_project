using System.Windows.Controls;
using System.Windows.Data;

namespace WpfApp1.FormItems
{
    public class ControlText : FormControl<TextBox>
    {
        //--member fields--//
        private TextDataHolder dataHolder;

        //--constructor--//
        public ControlText(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new TextBox(), orientation)
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new TextDataHolder();

            Binding dataBinding = new Binding("text");
            dataBinding.Source = this.dataHolder;
            control.SetBinding(TextBox.TextProperty, dataBinding);
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class TextDataHolder
        {
            public string text { get; set; }
        }

        public override void ShowMessage()
        {
            System.Windows.MessageBox.Show(name + ": " + dataHolder.text);
        }
    }

    
}
