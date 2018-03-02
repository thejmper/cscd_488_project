using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Xml;
using WpfApp1.CaseObject;

namespace WpfApp1.FormItems
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

        /*
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

            d.DisplayDate = new DateTime(1, 2, 3);
        }
        */

        public ControlDate() : this("untitledControlDate", "untitled date control")
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
            ControlDate clone = new ControlDate(this.name, this.englishTitle, this.orientation);
            //ControlDate clone = NewControlDate(this.name, englishTitle, this.orientation);
            clone.dataHolder.date = this.dataHolder.date;
            (clone.control).GetBindingExpression(DatePicker.SelectedDateProperty).UpdateTarget();

            return clone;
        }

        public override void SetValue(DateTime value)
        {
            dataHolder.date = value;
            ((DatePicker)control).SelectedDate = value;
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