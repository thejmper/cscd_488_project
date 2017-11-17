using System.Windows.Controls;

namespace WpfApp1.UIItems.ItemClasses
{
    public class LabelUI : UIItem
    {
        public LabelUI(string content, double x, double y, double h, double w)
        {
            Label lab = new Label();
            lab.Content = content;
            if (h != -1)
                lab.Height = h;
            if (w != -1)
                lab.Width = w;

            Canvas.SetTop(lab, y);
            Canvas.SetLeft(lab, x);
            this.Element = lab;

        }

    }
}
