using System;
using System.Collections.Generic;
using System.Text;

namespace ProofOfConcept
{
    abstract class ReportField
    {
        //--member fields--//
        /// <summary>
        /// the report this component belongs to!
        /// </summary>
        public Report report { get; internal set; }
        /// <summary>
        /// UNIQUE name/id for this report component
        /// </summary>
        public string name { get; private set; }
        
        //--construction--//
        public ReportField(string name)
        {
            this.name = name;
        }

        //--use--//
        /// <summary>
        /// merges a bunch of fields into one!
        /// </summary>
        /// <param name="otherFields"></param>
        /// <returns></returns>
        public abstract ReportField Merge(ReportField[] otherFields);

        /// <summary>
        /// prints this field off to the screen so we can test it!
        /// </summary>
        public abstract void PrintToScreen();

    }

}
