using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace WpfApp1.UIItems
{
    /// <summary>
    /// static class containing extension methods for UI elements
    /// </summary>
    static class UIElementExtensions
    {
        public static UIElement Bordered(this UIElement element, Brush borderBrush, Thickness borderThicnkess)
        {
            Border border = new Border();
            border.BorderBrush = borderBrush;
            border.BorderThickness = borderThicnkess;

            border.Child = element;

            return border;
        }
        public static UIElement Bordered(this UIElement element)
        {
            return Bordered(element, Brushes.Black, new Thickness(1));
        }
    }
}
