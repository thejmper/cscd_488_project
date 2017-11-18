using System;
using System.Collections.Generic;
using System.Windows;
using System.Xml;

namespace WpfApp1.FormItems
{
    public abstract class ElementGroup: FormElement
    {

        //--construction--//
        /// <summary>
        /// elements contained within this form
        /// </summary>
        protected List<FormElement> elementList;

        protected ElementGroup(string name)
        {
            this.elementList = new List<FormElement>();
        }

        protected virtual void AddElement(FormElement element)
        {
            if (elementList.Find(item => item.name.Equals(element.name)) != null)
                throw new System.ArgumentException("Cannot add element " + element.name + ". to Form " + this.name + " that tag is already in use!");

            elementList.Add(element);
        }

        protected override void ReadXMLInner(XmlReader reader)
        {
            throw new NotImplementedException();
        }
        protected override void WriteXMLInner(XmlWriter writer)
        {
            throw new NotImplementedException();
        }
    }
}
