using System.Windows.controlls;

namespace Testing.Reports.UI
{
    public interface UIItem
    {
        private UIElement element;

        protected UIItem()
        {

        }
        public UIElement Element { get; set; }
    }
}
