using System;
using System.Windows.Data;
using System.Windows.Controls;
using System.Xml;

namespace ALInspectionApp.FormItems.Controls
{
    /// <summary>
    /// represents an integer control.
    /// </summary>
    public class ControlInteger : FormControl<TextBox, int>
    {
        //--member fields--//
        private IntDataHolder dataHolder;

        //--construction--//
        /// <summary>
        /// constructs an integer controller
        /// </summary>
        /// <param name="name">unique id of this controller, not user visible</param>
        /// <param name="engishTitle">user-visible title of this integer control</param>
        /// <param name="orientation">where the user-visible title is placed relative to the control</param>
        public ControlInteger(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new TextBox(), orientation)
        {
        }
        protected ControlInteger(): base("untitledControlInteger", "untitled integer control", new TextBox())
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new IntDataHolder();

            this.binding= new Binding("value");
            binding.Source = dataHolder;
            control.SetBinding(TextBox.TextProperty, binding);

            control.TextInput += Control_TextInput;
        }

        private void Control_TextInput(object sender, System.Windows.Input.TextCompositionEventArgs e)
        {
            if (this.onDataChanged != null)
                this.onDataChanged.Invoke();
        }

        //--cloning--//
        public override FormElement Clone()
        {
            ControlInteger clone = new ControlInteger(this.name, this.englishTitle, this.orientation);
            clone.dataHolder.value = this.dataHolder.value;
            (clone.control).GetBindingExpression(TextBox.TextProperty).UpdateTarget();

            return clone;
        }

        /// <summary>
        /// forces the control to the given value, can be fired even is the control is set to readonly.
        /// </summary>
        /// <param name="value"></param>
        public override void SetValue(int value)
        {
            dataHolder.value = value;
            (control).GetBindingExpression(TextBox.TextProperty).UpdateTarget();
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsReadOnly = isReadOnly;
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class IntDataHolder
        {
            public int value { get; set; }
        }

        protected override void WriteControl(XmlWriter writer)
        {
            (control).GetBindingExpression(TextBox.TextProperty).UpdateSource();
            writer.WriteElementString("value", this.dataHolder.value.ToString());
        }

        protected override void ReadControl(XmlReader reader)
        {
            this.SetValue(Int32.Parse(reader.ReadElementContentAsString()));
        }


    }
}
