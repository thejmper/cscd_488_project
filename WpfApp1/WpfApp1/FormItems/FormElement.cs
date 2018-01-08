using System;
using System.Windows;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;
namespace WpfApp1.FormItems
{
    /// <summary>
    /// the base class for everything that makes up a form, up to and including the form itself.
    /// This class is responsible for drawing itself and saving itself.
    /// </summary>
    public abstract class FormElement : IXmlSerializable
    {
        //--member fields--//
        /// <summary>
        /// the UIElement used to represent this form element!
        /// </summary>
        public abstract UIElement UIelement { get; }
        /// <summary>
        /// UNIQUE (within scope) name of this element.
        /// </summary>
        public string name { get; protected set; }

        public bool isReadOnly { get; private set; }

        //--construction--//
        protected FormElement(string name)
        {
            this.name = name;
        }
        protected FormElement(): this("unnamedElement")
        {

        }

        //--cloning--//
        public abstract FormElement Clone();

        //--mark read-only. really only needed for controls
        protected abstract void SetReadOnlyInternal(bool isReadOnly);
        public void SetReadOnly(bool isreadOnly)
        {
            this.isReadOnly = isreadOnly;
            this.SetReadOnlyInternal(isreadOnly);
        }

        //--save/load stuff--//
        //abstract methods
        protected abstract void ReadXMLInner(XmlReader reader);
        protected abstract void WriteXMLInner(XmlWriter writer);

        public XmlSchema GetSchema()
        {
            return null;
        }
        /// <summary>
        /// loading method. Delegates to an internal readXMLInner method for most of the work,
        /// but handles stuff that's unique between all form elements. (namely, reading the leading
        /// tag and consuming the closing one so nothing breaks.)
        /// </summary>
        /// <param name="reader"></param>
        public virtual void ReadXml(XmlReader reader)
        {
            //read the start element so we can get to the contained data!
            reader.ReadStartElement();
            this.name = reader.ReadElementContentAsString();
            reader.MoveToContent();
            this.isReadOnly = reader.ReadElementContentAsString().ToLower().Equals("true") ? true : false;


            //delegate!
            this.ReadXMLInner(reader);

            //consume the closing element tag so we don't break anything
            reader.ReadEndElement();
        }
        /// <summary>
        /// saving method. Delegates to an internal writeXMLInner method for most of the work,
        /// but handles stuff that's common accross all form elements.
        /// </summary>
        /// <param name="writer"></param>
        public virtual void WriteXml(XmlWriter writer)
        {
            //save the qualified type of this element so we know which sub-class it is
            //when we load it back, that way we know which subclass's read-inner method to call!
            writer.WriteAttributeString("type", this.GetType().FullName);
            writer.WriteElementString("name", this.name);

            string isReadOnlyString = isReadOnly ? "true" : "false";
            writer.WriteElementString("isReadOnly", isReadOnlyString);

            this.WriteXMLInner(writer);

            writer.WriteEndElement();
        }
    }
}
