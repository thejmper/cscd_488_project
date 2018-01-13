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
            //this.SetValue(DateTime.Now);
        }

        protected ControlDate(): base("untitledControlDate", "untitled date control", new DatePicker())
        {

        }

        protected override void BindControl()
        {
            this.dataHolder = new DateDataHolder();

            this.binding = new Binding("SelectedDate");
            this.binding.Mode = BindingMode.TwoWay;
            binding.Source = dataHolder;
            control.SetBinding(DatePicker.SelectedDateProperty, binding);
        }

        //--cloning--//
        public override FormElement Clone()
        {
            ControlDate clone = new ControlDate(this.name, this.englishTitle, this.orientation);
            clone.dataHolder.SelectedDate = this.dataHolder.SelectedDate;
            (clone.control).GetBindingExpression(DatePicker.SelectedDateProperty).UpdateTarget();

            return clone;
        }

        public override void SetValue(DateTime value)
        {
            System.Windows.Forms.MessageBox.Show("setting date to: " + value);

            dataHolder.SelectedDate = value;
            //changed DatePicker.TextProperty from DatePicker.TextProperty

            //((DatePicker)control).SelectedDate = value;
            //var v = DatePicker.SelectedDateProperty;
            //var v2 = control.GetBindingExpression(v);
            //v2.UpdateTarget();

            control.SelectedDate = new DateTime(1941, 12, 7);

            //System.Windows.Forms.MessageBox.Show("Setting date to " + value + "/nNow set to: " + control.SelectedDate);
        }

        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            this.control.IsEnabled = !isReadOnly;
        }

        protected override void WriteControl(XmlWriter writer)
        {
            //(control).GetBindingExpression(DatePicker.TextProperty).UpdateSource();
            //writer.WriteElementString("SelectedDateProperty", ((DatePicker)control).SelectedDate.ToString());
            writer.WriteElementString("selectedDate", control.SelectedDate.ToString());
        }

        protected override void ReadControl(XmlReader reader)
        {
            String dateString = reader.ReadElementContentAsString();
            DateTime dt = Convert.ToDateTime(dateString);

            this.SetValue(dt);
        }

        /// <summary>
        /// we need a class to put our data, not just a reference, because otherwise
        /// the WPF doesn't update right and generally does silly things.
        /// </summary>
        private class DateDataHolder
        {
            public DateTime SelectedDate { get; set; }
        }
    }
}
