using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Xml;
using System.Windows.Data;
using System;

namespace WpfApp1.FormItems
{
    public abstract class FormControl<T>: FormElement where T: Control
    {
        public override UIElement UIelement { get { return this.stackPanel; } }

        /// <summary>
        /// stack panel used to format data.
        /// </summary>
        protected StackPanel stackPanel;
        /// <summary>
        /// the control this form control is built around
        /// </summary>
        protected T control;

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
        protected FormControl(string name, string engishTitle, T control, Orientation orientation = Orientation.Vertical): base(name)
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

        protected abstract void WriteControl(XmlWriter writer);
        protected abstract void ReadControl(XmlReader reader);
    }
}
