using System.Xml.Serialization;

namespace Testing.Reports.Fields
{
    public interface IReportElement: IXmlSerializable
    {
        /// <summary>
        /// String name that must be unique within the form!
        /// </summary>
        string name { get; }
    }
}
