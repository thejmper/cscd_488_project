using System;
using System.IO;
using System.Xml.Serialization;
using Testing.Reports;
using Testing.Reports.Fields;

namespace Testing
{
    class Program
    {
        static void Main(string[] args)
        {
            TestForm();
        }
        private static void TestForm()
        {
            CaseFile caseFile = new CaseFile("case00001", "Steve's assisted living", 00004);
            Report report = caseFile.AddReport("kenny00001", "kenny");
            Form form = report.AddForm(new Form("formA"));


            Console.WriteLine("> :" + form);

            return;
            /*
            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "testXML");

            XmlSerializer ser = new XmlSerializer(testForm.GetType());
            using (TextWriter writer = new StreamWriter(dir + @"\groupTest.xml"))
            {
                ser.Serialize(writer, testForm);
            }

            Console.WriteLine("\n    >done!");
            Console.WriteLine("    >Now reading from file!");

            IReportElement readField;
            using (TextReader reader = new StreamReader(dir + @"\groupTest.xml"))
            {
                readField = (IReportElement)ser.Deserialize(reader);
            }

            Console.WriteLine(readField);
            */
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

            IReportElement specialBool = new FieldBooleanDescription("specialBool", "bool tooltop!", false);
            IReportElement specialBool2 = new FieldBooleanDescription("specialBool2", "bool tooltop!", false);

            IReportField textField = new FieldString("textField");
            textField.SetData("This is some text for the text field!");

            IReportElement comment = new ElementComment("comment1", "This is a comment text block!");

            IReportField intField1 = new FieldIntegerDescription("intField1", "int field description");
            intField1.SetData(5);

            IReportElement specialString = new FieldStringDescription("specialString", "field Description");


            IReportField intField2 = new FieldInteger("intField2");
            intField2.SetData("41");

            string[] radioOptions = { "op1", "op2", "op3", "op3" };
            FieldRadio radioTest = new FieldRadio("radioTest", radioOptions);
            radioTest.SetData("op3");

            string[] listOptions = { "li1", "li2", "li3", "li4" };
            FieldList listTest = new FieldList("listTest", listOptions);
            listTest.SetData("li2");





            testGroup.AddElement(specialBool);
            testGroup.AddElement(specialBool2);
             
            testGroup.AddElement(textField);
            testGroup.AddElement(comment);

            testGroup.AddElement(intField1);
            testGroup.AddElement(intField2);

            testGroup.AddElement(specialString);

            testGroup.AddElement(radioTest);

            testGroup.AddElement(listTest);

            testGroup.AddElement(bool1);
            testGroup.AddElement(bool2);
            testGroup.AddElement(bool3);

            return testGroup;
        }
    }
}



