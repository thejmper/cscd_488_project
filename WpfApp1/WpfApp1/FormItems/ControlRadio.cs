using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;

namespace WpfApp1.FormItems
{
    public class ControlRadio : ElementGroup<ControlBoolean>
    {
        //--member fields--//
        public override UIElement UIelement { get { return stackPanel; } }
        private StackPanel stackPanel;

        //--construction--//
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

        protected override void AddElementInternal(ControlBoolean element)
        {
            base.AddElementInternal(element);
            element.onChecked += OnControlChecked;

            this.stackPanel.Children.Add(element.UIelement);
        }

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
            ControlBoolean[] checks = new ControlBoolean[this.elementList.Count];
            for(int i = 0; i < checks.Length; i++)
            {
                checks[i] = (ControlBoolean)this.elementList[i].Clone();
            }

            ControlRadio clone = new ControlRadio(this.name, checks);
            return clone;
        }
    }
}
