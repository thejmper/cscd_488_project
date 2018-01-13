using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;

namespace UIItems.ItemClasses
{
   public class TextBoxUI : UIItem    
    {
        public TextBoxUI(double x, double y, double h, double w, string name)
        {
            TextBox tb = new TextBox();
            tb.Height=h;
            tb.Width = w;
            if (x < 0 || y < 0)
            {
                throw new Exception("invalid coords");
            }

            Canvas.SetTop(tb, y);
            Canvas.SetLeft(tb, x);
            tb.Name = name;
            this.Element = tb;

        }

        
    }
}
