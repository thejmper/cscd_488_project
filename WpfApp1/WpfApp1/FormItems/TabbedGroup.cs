using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Collections.Generic;

namespace WpfApp1.FormItems
{
    /// <summary>
    /// layout group that displays its internal items as tabs on a tabview.
    /// </summary>
    /// <typeparam name="T">type of FormElement to contain</typeparam>
    public abstract class TabbedGroup<T> : ElementGroup<T> where T: FormElement
    {
        /// <summary>
        /// dictoinary to easily keep track of which elements are stored in which tabs, otherwise
        /// we need to do a lot of ugly scanning through tab stuff and messing with WPF stuff that really
        /// shouldn't be messed with.
        /// </summary>
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
