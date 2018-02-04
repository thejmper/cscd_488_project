using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Xml;
using WpfApp1.Case;

namespace WpfApp1.FormItems
{
    //TODO figure out how to set the orginal value after loading
    public class ControlDate : FormControl<DatePicker, DateTime>
    {
        //--member fields--//
        private DateDataHolder dataHolder;
        private Form form;

        //--construction--//
        public ControlDate(string name, string engishTitle, DatePicker dp, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, dp, orientation)
        {
        }

        public static ControlDate NewControlDate(string name, string engishTitle, Orientation orientation = Orientation.Vertical)
        {
            DatePicker dp = new DatePicker();
            ControlDate controlDate = new ControlDate(name, engishTitle, dp, orientation);
            controlDate.control.SelectedDateChanged += delegate(object sender, SelectionChangedEventArgs e) { Dp_SelectedDateChanged(sender, e, controlDate); };
            return controlDate;
        }

        private static void Dp_SelectedDateChanged(object sender, SelectionChangedEventArgs e, ControlDate controlDate)
        {
            
            DatePicker d = (DatePicker)sender;
            if (d.SelectedDate == null)
            {
                return;
            }
            DateTime t = (DateTime)d.SelectedDate;
            controlDate.SetValue(t);
            //controlDate.control.SelectedDate = t;
            //controlDate.dataHolder.date = t;
            
        }

        public ControlDate() : base("untitledControlDate", "untitled date control", new DatePicker())
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new DateDataHolder();

            this.binding = new Binding("SelectedDateProperty");
            binding.Source = dataHolder;
            control.SetBinding(DatePicker.SelectedDateProperty, binding);
        }

        //--cloning--//
        public override FormElement Clone()
        {
            //TODO fix this too add event to the date picker
            //ControlDate clone = new ControlDate(this.name, this.englishTitle, this.orientation);
            ControlDate clone = NewControlDate(this.name, englishTitle, this.orientation);
            clone.dataHolder.date = this.dataHolder.date;
            (clone.control).GetBindingExpression(DatePicker.SelectedDateProperty).UpdateTarget();

            return clone;
        }

        public override void SetValue(DateTime value)
        {
            dataHolder.date = value;
            ((DatePicker)control).SelectedDate = value;
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            String s = dataHolder.date.ToString();
            writer.WriteElementString("SelectedDateProperty", s);
        }

        protected override void ReadControl(XmlReader reader)
        {
            //TODO: make this work.
            String dateString = reader.ReadElementContentAsString();
            if (dateString != "")
            {
                DateTime dt = Convert.ToDateTime(dateString);

                this.SetValue(dt);
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