using System;
using System.Collections.Generic;
using System.Windows;
using System.Xml;
using System.Xml.Serialization;

namespace WpfApp1.FormItems
{
    public abstract class ElementGroup<T>: FormElement where T: FormElement
    {

        //--construction--//
        /// <summary>
        /// elements contained within this form
        /// </summary>
        protected List<T> elementList;

        //--constructors--//
        protected ElementGroup(string name): base(name)
        {
            this.elementList = new List<T>();
        }
        protected ElementGroup(): this("untitledForm")
        {

        }

        //--cloning--//
        public override FormElement Clone()
        {
            ElementGroup<T> clone = this.CloneInner();
            
            foreach(T element in this.elementList)
            {
                clone.AddElementInternal((T)element.Clone());
            }

            return clone;
        }
        protected abstract ElementGroup<T> CloneInner();

        //--readonly--//
        protected override void SetReadOnlyInternal(bool isReadOnly)
        {
            foreach(FormElement element in this.elementList)
                element.SetReadOnly(isReadOnly);
        }

        //--element manipulation--//
        protected virtual void AddElementInternal(T element)
        {
            if (elementList.Find(item => item.name.Equals(element.name)) != null)
                throw new System.ArgumentException("Cannot add element " + element.name + ". to Form " + this.name + " that tag is already in use!");

            elementList.Add(element);
        }

        //--save/load--//
        protected override void ReadXMLInner(XmlReader reader)
        {
            reader.ReadStartElement();
            reader.MoveToContent();

            while(reader.NodeType != XmlNodeType.EndElement)
            {
                Type type = Type.GetType(reader.GetAttribute("type"));

                XmlSerializer ser = new XmlSerializer(type);
                T element = (T)ser.Deserialize(reader);

                this.AddElementInternal(element);

                reader.MoveToContent();
            }
        }
        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteComment("Below is the list of items contained within this group");
            writer.WriteStartElement("elementList");

            //write elements here
            foreach (T element in this.elementList)
            {
                writer.WriteStartElement(element.GetType().Name);
                element.WriteXml(writer);
                writer.WriteEndElement();
            }
            //done
            writer.WriteEndElement();
        }
    }
}
