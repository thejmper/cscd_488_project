using System;
using System.Collections.Generic;

using System.Xml;
using System.Xml.Schema;
using System.Xml.Serialization;

using WpfApp1.Reports.Fields;

namespace WpfApp1.Reports
{
    /// <summary>
    /// group or more than one element
    /// </summary>
    public class ElementGroupDynamic: ElementGroup
    {
        //--member fields--//
        //--construction--//
        /// <summary>
        /// EVC for public use
        /// </summary>
        /// <param name="author"></param>
        /// <param name="lastModified"></param>
        public ElementGroupDynamic(string name): base(name)
        {
        }
        /// <summary>
        /// DVC for serializer use
        /// </summary>
        private ElementGroupDynamic(): base()
        {

        }

        //--setters--//
        /// <summary>
        /// adds a field to this report, if its ID isn't already in use.
        /// </summary>
        /// <param name="field"></param>
        public void AddElement(IReportElement field)
        {
            this.AddElementInternal(field);
        }
        //--save/load--//
    }
}
