using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace Testing.Reports.Syncers
{
    class FormSyncer
    {
        MySqlConnection conn;

        public FormSyncer()
        {
            string connectionString = System.IO.File.ReadAllText(@"conn.txt");
            conn = new MySqlConnection(connectionString);
        }

        public Form SyncForm(Form form)
        {
            
            return null;
        }

        public Report GetForms(Report report)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT * FROM forms WHERE report_id=@report_id";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@report_id", report.reportID);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    String formID = reader["form_id"].ToString();
                    String fieldsXML = reader["fields_xml"].ToString();
                    Form tempForm = new Form("");
                    XmlSerializer ser = new XmlSerializer(tempForm.GetType());
                    using (TextReader tReader = new StringReader(fieldsXML))
                    {
                        tempForm = (Form)ser.Deserialize(tReader);
                    }

                    report.AddForm(tempForm);
                }
                conn.Close();
                return report;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return null;
            }
        }

        public Boolean InsertForm(Form form)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string insertStatement = "INSERT INTO forms" +
                    "(report_id, fields_xml, last_modified) " +
                    "VALUES (@report_id, @xml, UTC_TIMESTAMP())";
                MySqlCommand command = new MySqlCommand(insertStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@report_id", form.getReportID());
                // Get XML for form and add it to the @xml parameter
                XmlSerializer ser = new XmlSerializer(form.GetType());
                using (TextWriter writer = new StringWriter())
                {
                    ser.Serialize(writer, form);
                    command.Parameters.AddWithValue("@xml", writer.ToString());
                }

                command.ExecuteNonQuery();
                string getIDStatement = "SELECT @@IDENTITY AS theID";
                command = new MySqlCommand(getIDStatement, conn);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    form.formID = reader["theID"].ToString();
                }
                conn.Close();

                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return false;
            }
        }
    }
}
