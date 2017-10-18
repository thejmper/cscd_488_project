using System;
using System.Collections.Generic;
using System.Text;

namespace ProofOfConcept
{
    class Tester
    {
        public static void Main(String[] args)
        {
            //create a report!
            UserReport steveReport = new UserReport("steve", new DateTime(2016, 5, 1));
            steveReport.AddField(new TextField("textField1", "This is what Steve wrote. Steve went out to the place and found some stuff. It was very informational. Also, there was cake."));

            UserReport kennyReport = new UserReport("kenny", new DateTime(2015, 5, 12));
            kennyReport.AddField(new TextField("textField1", "This is kenny's report. Kenny is a very terse man."));
            kennyReport.AddField(new TextField("texField2", "Kenny added a second text field to his report because he's special like that."));

            UserReport lateReport = new UserReport("lateLarry", new DateTime(2000, 4, 14));
            lateReport.AddField(new TextField("textField1", "Larry forgot to file his report from years ago. It should end up at the top of the list though, even though it's at the bottom of the tester file!"));
            
            
            //display for testing
            Console.WriteLine("");
            Console.WriteLine(">>>>>>> We are currently on user machines <<<<<<<<");
            Console.WriteLine("");

            
            steveReport.PrintToString();
            Console.WriteLine("");
            kennyReport.PrintToString();
            Console.WriteLine("");
            lateReport.PrintToString();

            //now we move to the server. In reality, we'd need to send the UserReport files out to the server and assemble them now,
            //but that's a lot of work so we're going to assume the classes just magically showed up on the server. We're not
            //trying to proove that we can do THAT anyways. We want to show off the merge code.

            Console.WriteLine("");
            Console.WriteLine(">>>>>>> We are currently on THE SERVER! <<<<<<<<");
            Console.WriteLine("");

            //collate reports into one!
            UserReport[] reports = { steveReport, kennyReport, lateReport };

            MasterReport master = MasterReport.CombineIntoOne(reports);
            master.PrintToString();

            Console.ReadKey();
        }
    }
}
