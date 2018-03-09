using System;
using System.Windows.Controls;
using System.Windows.Data;
using System.Xml;

namespace ALInspectionApp.FormItems.Controls
{
    /// <summary>
    /// control that displays a date. Not much more to say here.
    /// </summary>
    public class ControlDate : FormControl<DatePicker, DateTime>
    {
        //--member fields--//
        private DateDataHolder dataHolder;

        //--construction--//
        public ControlDate(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new DatePicker(), orientation)
        {

        }

        public ControlDate() : this("untitledControlDate", "untitled date control")
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new DateDataHolder();

            this.binding = new Binding("SelectedDateProperty");
            binding.Source = dataHolder;
            control.SetBinding(DatePicker.SelectedDateProperty, binding);

            control.SelectedDateChanged += Control_SelectedDateChanged;
        }

        private void Control_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (this.onDataChanged != null)
                this.onDataChanged.Invoke();
        }

        //--cloning--//
        public override FormElement Clone()
        { 
            ControlDate clone = new ControlDate(this.name, this.englishTitle, this.orientation);
            //ControlDate clone = NewControlDate(this.name, englishTitle, this.orientation);
            clone.dataHolder.date = this.dataHolder.date;
            (clone.control).GetBindingExpression(DatePicker.SelectedDateProperty).UpdateTarget();

            return clone;
        }

        public override void SetValue(DateTime value)
        {
            //make sure we don't accidently call this when the user didn't enter anything new
            control.SelectedDateChanged -= this.Control_SelectedDateChanged;

            dataHolder.date = value;
            ((DatePicker)control).SelectedDate = value;

            //make sure we don't accidently call this when the user didn't enter anything new
            control.SelectedDateChanged += this.Control_SelectedDateChanged;
        }
        public DateTime GetValue()
        {
            return dataHolder.date;
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            String s = ((DatePicker)control).SelectedDate.ToString();
            writer.WriteElementString("SelectedDateProperty", s);
        }

        protected override void ReadControl(XmlReader reader)
        {
            String dateString = reader.ReadElementContentAsString();
            if (dateString != "")
            {
                DateTime dt = Convert.ToDateTime(dateString);

                this.SetValue(dt);
                ((DatePicker)control).DisplayDate = dt;
            }

        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class DateDataHolder
        {
            public DateTime date { get; set; }
        }

    }
}