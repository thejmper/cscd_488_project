using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
        }

        protected ControlDate(): base("untitledControlDate", "untitled date control", new DatePicker())
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new DateDataHolder();

            this.binding = new Binding("value");
            binding.Source = dataHolder;
            control.SetBinding(DatePicker.TextProperty, binding);
        }

        //--cloning--//
        public override FormElement Clone()
        {
            ControlDate clone = new ControlDate(this.name, this.englishTitle, this.orientation);
            clone.dataHolder.date = this.dataHolder.date;
            (clone.control).GetBindingExpression(DatePicker.TextProperty).UpdateTarget();

            return clone;
        }

        public override void SetValue(DateTime value)
        {
            dataHolder.date = value;

            //changed DatePicker.SelectedDateProperty from DatePicker.TextProperty
            control.GetBindingExpression(DatePicker.TextProperty).UpdateTarget();
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            (control).GetBindingExpression(DatePicker.TextProperty).UpdateSource();
            writer.WriteElementString("text", this.dataHolder.date.ToShortDateString());
        }

        protected override void ReadControl(XmlReader reader)
        {
            String dateString = reader.ReadElementContentAsString();
            string [] parts = dateString.Split('/');
            int year;
            Int32.TryParse(parts[2], out year);
            int month;
            Int32.TryParse(parts[0], out month);
            int day;
            Int32.TryParse(parts[1], out day);

            //added line to test load previously entered date
            DateTime date = new DateTime(2017, 12, 12);//new DateTime(year, month, day);
            this.SetValue(date);
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
