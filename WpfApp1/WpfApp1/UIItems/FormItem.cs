using System;
using System.Collections.Generic;
using System.Windows.Controls;

namespace WpfApp1.UIItems
{
    public class FormItems
    {
        private List<UIItem> items;
        private TabItem tab;
        private Canvas c;
        private ScrollViewer sv;

        protected int MAX_WIDTH = 1500;

        public FormItems()
        {
            items = new List<UIItem>();
        }

        public FormItems(string tabName, string tabHeader)
        {
            items = new List<UIItem>();

            tab = new TabItem();
            tab.Header = tabHeader;

            sv = new ScrollViewer();
            sv.VerticalScrollBarVisibility = ScrollBarVisibility.Auto;
            sv.HorizontalScrollBarVisibility = ScrollBarVisibility.Auto;

            c = new Canvas();
            c.Height = 2000;
            c.Width = 2000;

        }

        public void CreateTab(TabControl tc)
        {
            foreach (UIItem item in items)
            {
                c.Children.Add(item.Element);
            }

            sv.Content = c;

            tab.Content = sv;
            tc.Items.Add(tab);
        }

        public List<UIItem> Items { get => items; }

        public void AddItem(UIItem item)
        {
            if (item != null)
            {
                Items.Add(item);
            }
        }
    }
}
