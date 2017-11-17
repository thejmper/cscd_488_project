using System.Windows.Controls;

namespace WpfApp1.UIItems.ItemClasses
{
    public class DatePickerUI : UIItem
    {
        public DatePickerUI(double x, double y, double h, double w, string name)
        {
            DatePicker dp = new DatePicker();
            dp.Height = h;
            dp.Width = w;

            Canvas.SetTop(dp, y);
            Canvas.SetLeft(dp, x);
            dp.Name = name;
            this.Element = dp;
        }
    }
}
