using System;
using System.Collections.Generic;

namespace UIItems
{
    public class FormItems
    {
        private List<UIItem> items;

        public FormItems()
        {
            items = new List<UIItem>();
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
