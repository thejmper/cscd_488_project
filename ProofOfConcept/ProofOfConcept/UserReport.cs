using System;
using System.Collections.Generic;
using System.Text;

namespace ProofOfConcept
{
    class UserReport: Report
    {

        //--construction--//
        public UserReport(string author, DateTime lastModified):base(author, lastModified){

        }

        //--use--//
        public override void PrintToString()
        {
            Console.WriteLine("Author: {0}", this.author);
            Console.WriteLine("Last Modified: {0}", this.lastModified.ToString());
            base.PrintToString();
        }
    }
}
