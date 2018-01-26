using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media;
using System.Xml;

namespace WpfApp1.Utils
{
    /// <summary>
    /// staic class holding a few extention methods for doing stuff with UI element.
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

        public static UIElement CloneElement(this UIElement orig)
        {
            if (orig == null)
                return null;

            string s = XamlWriter.Save(orig);

            StringReader stringReader = new StringReader(s);

            XmlReader xmlReader = XmlTextReader.Create(stringReader, new XmlReaderSettings());

            return (UIElement)XamlReader.Load(xmlReader);

        }
    }
}
