using System;
using System.Collections.Generic;
using System.Text;

namespace ProofOfConcept
{
    class MasterReport: Report
    {
        public MasterReport(): base("Server", DateTime.Now)
        {

        }

        public static MasterReport CombineIntoOne(Report[] reports)
        {
            //first gather all the fields we need!
            List<ReportField> fields = new List<ReportField>();

            foreach(UserReport report in reports)
            {
                fields.AddRange(report.fields);
            }

            //create a master Report
            MasterReport masterReport = new MasterReport();

            //a list of all the fields we've sucessfully merged!
            List<ReportField> mergedFields = new List<ReportField>();

            while (fields.Count > 0)
            {
                ReportField current = fields[0];

                //find all that match!
                List<ReportField> matches = fields.FindAll(item => item.name.Equals(current.name));
                fields.RemoveAll(item => matches.Contains(item));

                matches.Sort((f1, f2) => f1.report.lastModified.CompareTo(f2.report.lastModified));

                ReportField newField = current.Merge(matches.ToArray());

                masterReport.AddField(newField);
            }

            return masterReport;
        }

        public override void PrintToString()
        {
            Console.WriteLine("Master Report");
            base.PrintToString();
        }
    }
}
