using System.Windows;
using System.Windows.Controls;


namespace WpfApp1.FormItems
{
    public abstract class TabbedGroup<T> : ElementGroup<T> where T: FormElement
    {        
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
        }

        protected override void AddElementInternal(T element)
        {
            base.AddElementInternal(element);
            TabItem tab = new TabItem();
            tab.Header = element.name;
            tab.Content = element.UIelement;

            this.tabControl.Items.Insert(0, tab);
        }
    }
}
