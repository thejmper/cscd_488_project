using System.Windows.Controls;

namespace WpfApp1.FormItems
{
    public class ControlText : FormControl<TextBox>
    {
        //--constructor--//
        public ControlText(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new TextBox(), orientation)
        {
        }
    }
}
