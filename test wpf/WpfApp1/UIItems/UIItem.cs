using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;

namespace UIItems
{
    public abstract class  UIItem
    {
        private UIElement element;

        protected UIItem()
        {
            
        }
        public UIElement Element { get; set; }

    }
}
