using System;
using System.Collections.Generic;
using System.Text;

namespace ProofOfConcept
{
    class TextField : ReportField
    {

        //--member fields--//
        private string text;

        //--construction--//
        /// <summary>
        /// constructor. In reality the text field should be set dynamically as the user types, 
        /// but that would be too much hastle for a simple proof of concept program.
        /// </summary>
        /// <param name="name"></param>
        /// <param name="text"></param>
        public TextField(string name, string text) : base(name)
        {
            this.text = text;
        }

        public override ReportField Merge(ReportField[] otherFields)
        {
            StringBuilder sb = new StringBuilder();
            
            for(int i = 0; i < otherFields.Length; i++)
            {
                TextField tf = otherFields[i] as TextField;
                if (tf == null)
                    throw new Exception("Error, one or more of the fields you're trying to merge isn't actually a text field!");

                sb.AppendLine(tf.text);
                sb.AppendLine("    -"+ tf.report.author +" at: " +  tf.report.lastModified);
                sb.AppendLine("");
            }

            return new TextField(otherFields[0].name, sb.ToString());
        }

        public override void PrintToScreen()
        {
            Console.WriteLine(this.name);
            Console.WriteLine(this.text);
        }
    }
}
