using System;
using System.Windows.Controls;

namespace WpfApp1.UIItems.ItemClasses
{
    public class SpliterUI : UIItem
    {
        public SpliterUI(double x, double y, double width)
        {
            Separator s = new Separator();
            s.Width = width;
            if (x < 0 || y < 0)
            {
                throw new Exception("invalid coords");
            }

            Canvas.SetTop(s, y);
            Canvas.SetLeft(s, x);
            this.Element = s;
        }
    }
}
