using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Collections.Generic;

namespace WpfApp1.FormItems
{
    public abstract class TabbedGroup<T> : ElementGroup<T> where T: FormElement
    {

        private Dictionary<T, TabItem> tabItemDictionary;

        //--member fields--//
        public override UIElement UIelement
        {
            get
            {
                return tabControl;
            }
        }
        
        private TabControl tabControl;

        //--construction--//'
        protected TabbedGroup(string name): base(name)
        {
            this.tabControl = new TabControl();
            this.tabItemDictionary = new Dictionary<T, TabItem>();
        }

        protected override void AddElementInternal(T element)
        {
            base.AddElementInternal(element);
            TabItem tab = new TabItem();
            tab.Header = element.name;
            tab.Content = element.UIelement;

            this.tabControl.Items.Insert(0, tab);
            this.tabItemDictionary.Add(element, tab);
        }
        protected override void RemoveElementInternal(T element)
        {
            base.RemoveElementInternal(element);
            this.tabControl.Items.Remove(tabItemDictionary[element]);
            this.tabItemDictionary.Remove(element);            
        }
    }
}
