using System;
using System.Collections.Specialized;
using System.IO;
using System.Net;
using System.Text;
using System.Xml.Serialization;
using WpfApp1.Reports;
using WpfApp1.Reports.Fields;
using WpfApp1.Reports.Syncers;
using WpfApp1.Users;

namespace Testing
{
    class Program
    {
        static void Main(string[] args)
        {
            string urlAddress = "http://anthonyreinecker.com/test.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection postData = new NameValueCollection()
                {

                };

                string pagesource = Encoding.UTF8.GetString(client.UploadValues(urlAddress, postData));
                Console.WriteLine(pagesource);
                Console.WriteLine("Press enter to close...");
                Console.ReadLine();
            }
            //TestGroup();
            //TestForm();
        }
        private static void TestForm()
        {
            CaseFile caseFile = new CaseFile("case00001", "Steve's assisted living", 00004);
            Report report = caseFile.AddReport("kenny00001", "kenny");
            Form form = report.AddForm(new Form("formA"));
            User testUser;


            Console.WriteLine(caseFile);

            Console.WriteLine("Testing users");
            UserSyncer userSyncer = new UserSyncer();
            userSyncer.CreateUser("tester", "tpassword", "Bob", false);
            Console.WriteLine("Testing valid login info");
            testUser = userSyncer.Login("tester", "tpassword");
            Console.WriteLine("Testing invalid login info");
            userSyncer.Login("tester", "asd");
            Console.WriteLine("Testing colliding usernames user creation");
            userSyncer.CreateUser("tester", "tPassword", "Bill", true);

            CaseFileSyncer syncer = new CaseFileSyncer();
            Console.WriteLine("Testing inserting case file into database");
            //syncer.SyncCaseFile(caseFile, testUser);
            caseFile.Sync(testUser);
            Console.WriteLine("Testing updating case file already in database");
            CaseFile caseFile2 = new CaseFile("case00001", "Bob's assisted living", 00004);
            //syncer.SyncCaseFile(caseFile2, testUser);
            caseFile2.Sync(testUser);
            CaseFile caseFile3 = new CaseFile(caseFile2.caseID, "Bob's existing living", 00004);
            syncer.UpdateCaseFile(caseFile3);

            CaseFile databaseCaseFile = new CaseFile("14", "invalid", -1);
            //databaseCaseFile = syncer.SyncCaseFile(databaseCaseFile, testUser);
            databaseCaseFile.Sync(testUser);
            Console.WriteLine(databaseCaseFile);





            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "testXML");
            
            XmlSerializer ser = new XmlSerializer(caseFile.GetType());
            
            using (TextWriter writer = new StreamWriter(dir + @"\groupTest.xml"))
            {
                ser.Serialize(writer, caseFile);
            }
            

            Console.WriteLine("\n    >done!");
            Console.WriteLine("    >Now reading from file!");


            CaseFile readField;
            using (TextReader reader = new StreamReader(dir + @"\groupTest.xml"))
            {
                readField = (CaseFile)ser.Deserialize(reader);
            }

            Console.WriteLine(readField);
            
        }






        private void TestRadioField()
        {
            string[] radioOptions = { "op1", "op2", "op3", "op3" };
            FieldRadio radioTest = new FieldRadio("radioTest", radioOptions);

            Console.WriteLine(radioTest);

            radioTest.SetData("op2");
            Console.WriteLine(radioTest);

            (radioTest.elements[2] as FieldBoolean).SetData(true);
            Console.WriteLine(radioTest);
        }
        private static void TestGroup()
        {
            //build a form!
            IReportElement testGroup = BuildTestGroup();
            Console.WriteLine(testGroup);

            Console.WriteLine("\n    >saving to XML");
            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "testXML");
            Console.WriteLine("    >saving into " + dir);


            XmlSerializer ser = new XmlSerializer(testGroup.GetType());
            using (TextWriter writer = new StreamWriter(dir + @"\groupTest.xml"))
            {
                ser.Serialize(writer, testGroup);
            }


            Console.WriteLine("\n    >done!");
            Console.WriteLine("    >Now reading from file!");

            IReportElement readField;
            using (TextReader reader = new StreamReader(dir + @"\groupTest.xml"))
            {
                readField = (IReportElement)ser.Deserialize(reader);
            }

            Console.WriteLine("    >done!\n\n");
            Console.WriteLine(readField.ToString());
        }
        private static IReportElement BuildTestGroup()
        {
            ElementGroupDynamic testGroup = new ElementGroupDynamic("TestGroup");

            IReportElement bool1 = new FieldBoolean("bool1", false);
            IReportElement bool2 = new FieldBoolean("bool2", true);
            IReportElement bool3 = new FieldBoolean("bool3", false);

            IReportElement specialBool = new FieldBoolean("specialBool", false, "tooltip!");
            IReportElement specialBool2 = new FieldBoolean("specialBool2", false, "tooltip!");

            IReportField textField = new FieldString("textField");
            textField.SetData("This is some text for the text field!");

            IReportElement comment = new ElementComment("comment1", "This is a comment text block!");

            IReportField intField1 = new FieldInteger("intField1", "int field description");
            intField1.SetData(5);

            IReportElement specialString = new FieldString("specialString", "field Description");

            ElementGroupDynamic row = new ElementGroupDynamic("testRow");
            row.AddElement(new FieldBoolean("boolField", false));
            row.AddElement(new FieldInteger("intField"));

            FieldRows fieldRow = new FieldRows("fieldRows", row);
            fieldRow.AddRow();
            fieldRow.AddRow();


            IReportField intField2 = new FieldInteger("intField2");
            intField2.SetData("41");

            string[] radioOptions = { "op1", "op2", "op3", "op3" };
            FieldRadio radioTest = new FieldRadio("radioTest", radioOptions);
            radioTest.SetData("op3");

            string[] listOptions = { "li1", "li2", "li3", "li4" };
            FieldList listTest = new FieldList("listTest", listOptions);
            listTest.SetData("li2");





            //testGroup.AddElement(specialBool);
            //testGroup.AddElement(specialBool2);
             
            //testGroup.AddElement(textField);
            //testGroup.AddElement(comment);

            //testGroup.AddElement(intField1);
            //testGroup.AddElement(intField2);

            //testGroup.AddElement(specialString);

            //testGroup.AddElement(radioTest);

            //testGroup.AddElement(listTest);

            testGroup.AddElement(fieldRow);

            testGroup.AddElement(bool1);
            testGroup.AddElement(bool2);
            testGroup.AddElement(bool3);

            return testGroup;
        }
    }
}



