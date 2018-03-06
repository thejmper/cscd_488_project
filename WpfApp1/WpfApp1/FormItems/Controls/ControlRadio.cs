using System.Windows;
using System.Windows.Controls;
using ALInspectionApp.FormItems.Layout;

namespace ALInspectionApp.FormItems.Controls
{
    /// <summary>
    /// represents a radio-button control where only one option can be checked at a time.
    /// this doesn's subclass FormControl because it doesn't actually have any control functions, those
    /// are delegated to the ControlBooleans within, this just make sure the other ControlBooleans know when they
    /// should set themselves to false if the selected value cahnges.
    /// </summary>
    public class ControlRadio : ElementGroup<ControlBoolean>
    {
        //--member fields--//
        public override UIElement UIelement { get { return stackPanel; } }
        private StackPanel stackPanel;

        //--construction--//
        /// <summary>
        /// creates a new controlRadio 
        /// </summary>
        /// <param name="name">unique non-user-visible name</param>
        /// <param name="controls">set of checkboxes that'll make up this radio array</param>
        public ControlRadio(string name, ControlBoolean[] controls): base(name)
        {
            this.stackPanel = new StackPanel();
            this.stackPanel.Orientation = Orientation.Horizontal;
            foreach(ControlBoolean check in controls)
            {
                this.AddElementInternal(check);
            }
        }
        protected ControlRadio(): this("unnamedRadioControl", new ControlBoolean[0])
        {

        }

        /// <summary>
        /// called when adding a new element. Adds it and adds the proper event listener.
        /// </summary>
        /// <param name="element"></param>
        protected override void AddElementInternal(ControlBoolean element)
        {
            base.AddElementInternal(element);
            element.onChecked += OnControlChecked;

            this.stackPanel.Children.Add(element.UIelement);
        }

        /// <summary>
        /// event handler for when one of the internal control checkboxes is checked. Sets all the
        /// others to false so there is never more than one checkbox that is checked at any given time.
        /// </summary>
        /// <param name="control"></param>
        private void OnControlChecked(ControlBoolean control)
        {
            if (!this.elementList.Contains(control))
                return;

            foreach(ControlBoolean c in this.elementList)
            {
                if (c != control)
                    c.SetValue(false);
            }

        }


        protected override ElementGroup<ControlBoolean> CloneInner()
        {
            
            ControlRadio clone = new ControlRadio(this.name, new ControlBoolean[0]);
            return clone;
        }
    }
}
