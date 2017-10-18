using System;
using System.Collections.Generic;
using System.Text;

namespace ProofOfConcept
{
    abstract class Report
    {
        //--member fields--//
        /// <summary>
        /// UNIQUE string for the author. I'm not gonna enfore the uniqueness through code though
        /// that's too much effort for a quick'n'dirty proof of concept thing.
        /// </summary>
        public string author { get; private set; }
        /// <summary>
        /// should be the last time this report was modified. But I'm gonna hard-code it for now, just
        /// to simplify testing.
        /// </summary>
        public DateTime lastModified { get; private set; }

        /// <summary>
        /// components of this report!
        /// </summary>
        private List<ReportField> _fields;
        /// <summary>
        /// visible array of components
        /// </summary>
        public ReportField[] fields { get { return this._fields.ToArray(); } }

        //--construction--//
        public Report(string author, DateTime lastModified)
        {
            this.author = author;
            this.lastModified = lastModified;
            this._fields = new List<ReportField>();
        }

        /// <summary>
        /// adds a field to this report and sets its parent
        /// </summary>
        /// <param name="field"></param>
        public void AddField(ReportField field)
        {
            if (this._fields.Find(item => item.name.Equals(field.name)) != null)
                throw new ArgumentException("Cannot add component " + field.name + " to report, as a report field with that id already exists!");

            this._fields.Add(field);
            field.report = this;
        }

        //--debugging/testing--//
        /// <summary>
        /// prints this report to the screen. Not to be confused with PrintToPDF, which doesn't exist yet!
        /// </summary>
        public virtual void PrintToString()
        {
            foreach (ReportField field in _fields)
                field.PrintToScreen();
        }
    }
}
