using System;
using System.Windows.Controls;
using System.Windows.Data;
using System.Xml;

namespace ALInspectionApp.FormItems.Controls
{
    /// <summary>
    /// control that represents a boolean checkbox. Can also be nested inside a radiobutton controller.
    /// </summary>
    public class ControlBoolean : FormControl<CheckBox, bool>
    {
        /// <summary>
        /// delegate called when this control is checked, but NOT when it is unchecked.
        /// </summary>
        /// <param name="control"></param>
        public delegate void onCheckedHandler(ControlBoolean control);
        
        //--member fields--//
        private BoolDataHolder dataHolder;

        /// <summary>
        /// onCheckedHandler invoked when this control is checked but NOT when it is unchecked.
        /// </summary>
        public onCheckedHandler onChecked;

        //--construction--//
        /// <summary>
        /// Creates a new control boolean
        /// </summary>
        /// <param name="name">unique id of this control, not visible to user</param>
        /// <param name="engishTitle">display name of this control</param>
        /// <param name="orientation">where the control's name is displayed relative to the control itself</param>
        public ControlBoolean(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new CheckBox(), orientation)
        {
        }

        protected ControlBoolean() : base("untitledControlDate", "untitled date control", new CheckBox())
        {
        }

        protected override void BindControl()
        {
            this.dataHolder = new BoolDataHolder();

            this.binding = new Binding("value");
            binding.Source = dataHolder;
            control.SetBinding(CheckBox.IsCheckedProperty, binding);
            control.Checked += Control_Checked;
        }

        /// <summary>
        /// event relay, used to the form element can fire an event when its UI element (the WPF checkbox) is clicked.
        /// this is needed for radio controls.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Control_Checked(object sender, System.Windows.RoutedEventArgs e)
        {
            if(this.onChecked != null)
            {
                this.onChecked.Invoke(this);
            }
        }

        //--cloning--//
        public override FormElement Clone()
        {
            ControlBoolean clone = new ControlBoolean(this.name, this.englishTitle, this.orientation);
            clone.dataHolder.value = this.dataHolder.value;
            (clone.control).GetBindingExpression(CheckBox.IsCheckedProperty).UpdateTarget();

            return clone;
        }

        public override void SetValue(bool value)
        {
            dataHolder.value = value;
            (control).GetBindingExpression(CheckBox.IsCheckedProperty).UpdateTarget();

            if (value && this.onChecked != null)
                this.onChecked.Invoke(this);                
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            //I did this instead of just doing a dataHolder.value.toString because
            //sometimes it gives a wierd string that's not easily parsed. Doing it manually
            //takes more code but is less prone to wierd errors.
            (control).GetBindingExpression(CheckBox.IsCheckedProperty).UpdateSource();
            if (this.dataHolder.value)
            {
                writer.WriteElementString("value", "true");
            }
            else
            {
                writer.WriteElementString("value", "false");
            }
        }

        protected override void ReadControl(XmlReader reader)
        {
            //just like in the write method, the boolean parsing is done manually to avoid
            //wierd errors that cropped up during testing with bool.toString() and bool.parse() not
            //agreeing on a format. 
            String valueString = reader.ReadElementContentAsString();
            if (valueString == "true")
            {
                this.SetValue(true);
            }
            else
            {
                this.SetValue(false);
            }
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class BoolDataHolder
        {
            public bool value { get; set; }
        }
    }
}
