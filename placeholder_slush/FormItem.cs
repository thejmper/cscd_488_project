using System;
using System.Windows;
using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

namespace WpfApp1.UIItems
{
    /// <summary>
    /// generic class for some part of a saveable 
    /// </summary>
    abstract class FormItem<T> : IXmlSerializable where T : UIElement
    {


        //--save/load stuff--//
        public XmlSchema GetSchema()
        {
            return null;
        }
        public void ReadXml(XmlReader reader)
        {
            throw new NotImplementedException();
        }
        public void WriteXml(XmlWriter writer)
        {
            throw new NotImplementedException();
        }
    }
}
