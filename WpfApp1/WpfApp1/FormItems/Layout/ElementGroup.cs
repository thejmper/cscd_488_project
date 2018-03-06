using System;
using System.Collections.Generic;
using System.Xml;
using System.Xml.Serialization;

namespace ALInspectionApp.FormItems.Layout
{
    /// <summary>
    /// abstract group that contains within it several form elements
    /// </summary>
    /// <typeparam name="T">type of form element to be contained</typeparam>
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
            foreach (FormElement element in this.elementList)
            {
                element.SetReadOnly(isReadOnly);
            }
        }

        //--element manipulation--//
        /// <summary>
        /// adds a new form element to this element group. Throws an exception if an element with
        /// the same id is already contained in this element group.
        /// </summary>
        /// <param name="element"></param>
        protected virtual void AddElementInternal(T element)
        {
            if (elementList.Find(item => item.name.Equals(element.name)) != null)
                throw new System.ArgumentException("Cannot add element " + element.name + ". to Form " + this.name + " that tag is already in use!");

            elementList.Add(element);
        }
        /// <summary>
        /// removes an element from this element list. Throws an exception if the element does not exist.
        /// </summary>
        /// <param name="element"></param>
        protected virtual void RemoveElementInternal(T element)
        {
            if (elementList.Find(item => item.name.Equals(element.name)) == null)
                throw new ArgumentException("Cannot remove element " + element.name + " it does not exist in group " + this.name);

            elementList.Remove(element);

        }

        //--save/load--//
        protected override void ReadXMLInner(XmlReader reader)
        {
            reader.ReadStartElement();
            reader.MoveToContent();

            //make sure there's actually a list to read. If
            //we're looking at <elementList /> assumptions later
            //in the code will cause stuff to break.
            if (reader.NodeType == XmlNodeType.EndElement)
            {
                return;
            }
            //read each element from the xml element list
            while(reader.NodeType != XmlNodeType.EndElement)
            {
                //figure out the type so we know which deserializer to create
                Type type = Type.GetType(reader.GetAttribute("type"));

                XmlSerializer ser = new XmlSerializer(type);
                T element = (T)ser.Deserialize(reader);

                this.AddElementInternal(element);

                reader.MoveToContent();
                //at this point, we've consumed the end of the element tag, so we're either
                //at the start of a new open element tag, in which case we'll just read it,
                //or we've reached the </elementList> tag in which case we continue.
            }
            //read the </elementlist> tag. Important, otherwise things will break in unexpected ways.
            reader.ReadEndElement();
        }
        protected override void WriteXMLInner(XmlWriter writer)
        {
            writer.WriteComment("Below is the list of items contained within this group");
            writer.WriteStartElement("elementList");

            //delegate to each element's writeXML method.
            //write elements here
            foreach (T element in this.elementList)
            {
                writer.WriteStartElement(element.GetType().Name);
                element.WriteXml(writer);
                writer.WriteEndElement();
            }
            //done
            //write the closing tag for the <elementlist> tag. This is really important, 
            //otherwise open tags will stack up and you'll end up with a malformed XML file at the end of it all,
            //but it's not always obvious why the end tags aren't being formed, since later "write.WriteEndElement()" 
            //calls are closing what this should've closed.
            writer.WriteEndElement();
       
        }
    }
}
