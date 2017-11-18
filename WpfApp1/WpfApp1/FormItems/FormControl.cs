using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Windows.Data;

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
            Label label = new Label();
            label.Content = engishTitle;

            this.stackPanel.Children.Add(label);
            this.stackPanel.Children.Add(control);
        }

        protected abstract void BindControl();

        //--save/load stuff--//
        protected override void ReadXMLInner(XmlReader reader)
        {
            throw new NotImplementedException();
        }
        protected override void WriteXMLInner(XmlWriter writer)
        {
            throw new NotImplementedException();
        }


    }
}
