using System;
using System.Windows;
using System.Windows.Controls;
using System.Xml;
using System.Collections.Generic;

using WpfApp1.FormItems;

namespace WpfApp1.Case
{
    /// <summary>
    /// class for a single form, 1-for-1 with the existing goverment stuff.
    /// </summary>
    public class Form : ElementGroup<FormElement>
    {
        //--member fields--//
        /// <summary>
        /// get the UIelement used to represent this object!
        /// </summary>
        public override UIElement UIelement { get { return this.stackPanel; } }

        /// <summary>
        /// stack panel used to hold our visual elements
        /// </summary>
        private StackPanel stackPanel;

        //--construction--/
        public Form(string name): base(name)
        {
            this.stackPanel = new StackPanel();
            this.elementList = new List<FormElement>();
        }
        protected Form(): this("unnamedForm")
        {
            
        }

        //--cloning--//
        protected override ElementGroup<FormElement> CloneInner()
        {
            Form clone = new Form(this.name);
            return clone;
        }
        public Form Clone(string name)
        {
            Form clone = (Form)this.Clone();
            clone.name = name;

            return clone;
        }

        //--manipulation--//
        public void AddElement(FormElement element)
        {
            this.AddElementInternal(element);
        }

        protected override void AddElementInternal(FormElement element)
        {
            base.AddElementInternal(element);

            stackPanel.Children.Add(element.UIelement);
        }


        //--save/load stuff--//



    }
}
