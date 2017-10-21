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
            //build a form!
            IReportElement testGroup = BuildTestGroup();
            Console.WriteLine(testGroup);

            Console.WriteLine("\n    >saving to XML");
            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "testXML");
            Console.WriteLine("    >saving into " + dir);


            XmlSerializer ser = new XmlSerializer(testGroup.GetType());
            using(TextWriter writer = new StreamWriter(dir + @"\groupTest.xml"))
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
            ElementGroup testGroup = new ElementGroup("TestGroup");

            IReportField bool1 = new FieldBoolean("bool1", false);
            IReportField bool2 = new FieldBoolean("bool2", true);
            IReportField bool3 = new FieldBoolean("bool3", false);

            IReportField specialBool = new FieldBooleanDescription("specialBool", "bool tooltop!", false);
            IReportField specialBool2 = new FieldBooleanDescription("specialBool2", "bool tooltop!", false);

            IReportField textField = new FieldString("textField");
            textField.SetData("This is some text for the text field!");

            testGroup.AddElement(bool1);
            testGroup.AddElement(bool2);
            testGroup.AddElement(bool3);

            testGroup.AddElement(specialBool);
            testGroup.AddElement(specialBool2);

            testGroup.AddElement(textField);

            return testGroup;
        }
    }
}


/*
//get a working directory to put testing files into.
string workingDirectory = AppDomain.CurrentDomain.BaseDirectory;
workingDirectory = Path.Combine(workingDirectory, "testXML");

Console.WriteLine("Working directory: " + workingDirectory);
Console.WriteLine("All .xml files will be read from and written to that directory.");

Console.WriteLine("\n");
IReportField boolField = new FieldBoolean("testField", false);
IReportField specialBoolean = new FieldBooleanDescription("secondTest", "a boolean field with a summary for the user", false);

//testing setter
boolField.SetData(true);
specialBoolean.SetData(true);
//testing string setter
boolField.SetData("true");

Console.WriteLine("Initial Value: " + boolField.ToString());

//now serialize!
//you could also use typeof(FieldBoolean) but that wouldn't work for multiple fields
XmlSerializer ser = new XmlSerializer(specialBoolean.GetType());
using(TextWriter writer = new StreamWriter(workingDirectory + @"\test.xml"))
{
    ser.Serialize(writer, specialBoolean);
}
Console.WriteLine("\nFinished write! Check "+ workingDirectory + " for a file named test.xml");

Console.WriteLine("\nNow it's time to read!");

IReportField readField;
using(TextReader reader = new StreamReader(workingDirectory + @"\test.xml"))
{
    readField = (FieldBooleanDescription)ser.Deserialize(reader);
}

Console.WriteLine("read in: " + readField.ToString());
*/
