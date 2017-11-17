using System.Windows;

namespace WpfApp1.UIItems
{
    public abstract class UIItem
    {
        private UIElement element;

        protected UIItem()
        {

        }
        public UIElement Element { get; set; }

    }
}
