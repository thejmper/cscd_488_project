using System.Xml;
using System.Xml.Serialization;

namespace Testing.Reports.Fields
{
    /// <summary>
    /// interface for a generic report-building field.
    /// Anything that implements this needs to be a PUBLIC class
    /// so serialization can work!
    /// </summary>
    public interface IReportField : IReportElement
    {      
        /// <summary>
        /// sets the data in this field to the given parameter, 
        /// error checking is always handled by the field itself.
        /// </summary>
        /// <param name="data"></param>
        void SetData(object data);
        /// <summary>
        /// set data from a string
        /// </summary>
        /// <param name="dataString"></param>
        void SetData(string dataString);
        /// <summary>
        /// gets the data contained in this field.
        /// </summary>
        object GetData();


        //you're gonna want to use activator.createInstance here,
        //so the XML document can handle multiple versions of the same
        //interface.
    }
}
