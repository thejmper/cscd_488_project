/*
using System.Windows;
using System.Windows.Controls;

namespace WpfApp1.UIItems
{
    /// <summary>
    /// wrapper class for a stack panel. Produces a neatly-formatted vertical stack
    /// with a title on top and whatever relevant information we want stacked 
    /// either vertically (default) or horizontally.
    /// </summary>
    class FormControl: StackPanel
    {

        //--construction--//
        /// <summary>
        /// creates a form item with the given english title, UI content, and stack direction
        /// </summary>
        /// <param name="englishTitle">human-readable title for this control</param>
        /// <param name="content">the UIElement contained in this panel</param>
        /// <param name="orientation">direction the content is stacked. Defauls to vertical (name on top)</param>
        public FormControl(string englishTitle, UIElement content, Orientation orientation=Orientation.Vertical)
        {
            //setup
            this.Orientation = orientation;

            //create children
            Label englishNameLabel = new Label();
            englishNameLabel.Content = englishTitle;

            this.Children.Add(englishNameLabel);
            this.Children.Add(content);
        }
    }
}
*/