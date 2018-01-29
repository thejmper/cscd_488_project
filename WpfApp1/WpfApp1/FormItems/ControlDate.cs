using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Xml;

namespace WpfApp1.FormItems
{
    public class ControlDate : FormControl<DatePicker, DateTime>
    {
        //--member fields--//
        private DateDataHolder dataHolder;

        //--construction--//
        public ControlDate(string name, string engishTitle, Orientation orientation = Orientation.Vertical) : base(name, engishTitle, new DatePicker(), orientation)
        {
            DatePicker dp = new DatePicker();
            dp.SelectedDate = new DateTime(1999,1,1);
            dp.DisplayDate  = new DateTime(1999, 1, 1);
            dp.SelectedDateChanged += Dp_SelectedDateChanged;
            this.control = dp;
        }

        private void Dp_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            DatePicker d = (DatePicker)sender;
            DateTime t = (DateTime)d.SelectedDate;
            SetValue(t);
            
        }

        protected ControlDate() : base("untitledControlDate", "untitled date control", new DatePicker())
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
            clone.dataHolder.date = this.dataHolder.date;
            (clone.control).GetBindingExpression(DatePicker.SelectedDateProperty).UpdateTarget();

            return clone;
        }

        public override void SetValue(DateTime value)
        {
            dataHolder.date = value;

            //changed DatePicker.selectedDateProperty from DatePicker.TextProperty

            //((DatePicker)control).SelectedDate = value;
            //var v = DatePicker.SelectedDateProperty;
            //var v2 = control.GetBindingExpression(v);
            //v2.UpdateTarget();
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            (control).GetBindingExpression(DatePicker.SelectedDateProperty).UpdateSource();
            String s = dataHolder.date.ToString();
            writer.WriteElementString("SelectedDateProperty", s);
        }

        protected override void ReadControl(XmlReader reader)
        {
            //TODO: make this work.
            String dateString = reader.ReadElementContentAsString();
            //DateTime dt = Convert.ToDateTime(dateString);

            //this.SetValue(dt);
            //((DatePicker)control).SelectedDate = dt;

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