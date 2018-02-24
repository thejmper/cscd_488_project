using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Xml;
using System.Windows.Data;
using System;

namespace WpfApp1.FormItems
{
    /// <summary>
    /// generic baseclass for any form element that can have its value changed during the course of a user session.
    /// </summary>
    /// <typeparam name="controlType">type of WPF element used to display this control</typeparam>
    /// <typeparam name="dataType">type of data this control holds.</typeparam>
    public abstract class FormControl<controlType, dataType>: FormElement where controlType: Control
    {
        public override UIElement UIelement { get { return this.stackPanel; } }

        /// <summary>
        /// stack panel used to format data. We don't just use a controlType because we want
        /// to have a label for the button/textbox/whatever.
        /// </summary>
        protected StackPanel stackPanel;
        /// <summary>
        /// the control this form control is built around
        /// </summary>
        internal controlType control;

        /// <summary>
        /// binding used to pass data between WPF display and code-behind.
        /// </summary>
        protected Binding binding;

        //--saveable stuff--//
        private Label label;
        protected Orientation orientation { get { return stackPanel.Orientation; } }
        protected string englishTitle { get { return label.Content.ToString(); } }

        /// <summary>
        /// protected EVC
        /// </summary>
        /// <param name="name"></param>
        /// <param name="engishTitle"></param>
        /// <param name="orientation"></param>
        protected FormControl(string name, string engishTitle, controlType control, Orientation orientation = Orientation.Vertical): base(name)
        {
            //setup stack panel
            this.stackPanel = new StackPanel();
            this.stackPanel.Orientation = orientation;

            //set the control
            this.control = control;
            this.BindControl();

            //add a header
            this.label= new Label();
            label.Content = engishTitle;

            this.stackPanel.Children.Add(label);
            this.stackPanel.Children.Add(control);
        }
        protected FormControl(): this("unnamedControll", "Unnamed Control", null,Orientation.Vertical)
        {
            
        }

        protected abstract void BindControl();

        //--force set--//
        public abstract void SetValue(dataType value);

        //--save/load stuff--//
        protected override void ReadXMLInner(XmlReader reader)
        {
            this.label.Content = reader.ReadElementContentAsString();

            string orientationString = reader.ReadElementContentAsString();
            stackPanel.Orientation = orientationString.Equals("Vertical") ? Orientation.Vertical : Orientation.Horizontal;

            this.ReadControl(reader);
        }
        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteElementString("englishTitle", this.englishTitle);
            writer.WriteElementString("orientation", this.orientation.ToString());

                
            this.WriteControl(writer);
        }

        /// <summary>
        /// writes the control's value and anything else required
        /// </summary>
        /// <param name="writer"></param>
        protected abstract void WriteControl(XmlWriter writer);
        /// <summary>
        /// reads the control's value and anything else needed.
        /// </summary>
        /// <param name="reader"></param>
        protected abstract void ReadControl(XmlReader reader);
    }
}
