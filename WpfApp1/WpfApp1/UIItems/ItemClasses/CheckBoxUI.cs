﻿using System.Windows.Controls;


namespace WpfApp1.UIItems.ItemClasses
{
    public class CheckBoxUI : UIItem
    {
        public CheckBoxUI(double x, double y, double h, double w, string content, string name)
        {
            CheckBox cb = new CheckBox();
            cb.Content = content;
            cb.Height = h;
            cb.Width = w;

            Canvas.SetTop(cb, y);
            Canvas.SetLeft(cb, x);
            cb.Name = name;
            this.Element = cb;
        }
    }
}
