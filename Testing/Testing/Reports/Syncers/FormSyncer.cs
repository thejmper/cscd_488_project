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
    public class FormSyncer
    {
        MySqlConnection conn;

        public FormSyncer()
        {
            string connectionString = System.IO.File.ReadAllText(@"conn.txt");
            conn = new MySqlConnection(connectionString);
        }

        public Form SyncForm(Form form)
        {
            if (FormExists(form))
            {
                if (IsLocalOlder(form))
                {
                    return GetForm(form.formID);
                }
                else
                {
                    return UpdateForm(form);
                }
            }
            return InsertForm(form);
        }

        public Form UpdateForm(Form form)
        {
            try
            {
                conn.Open();

                string sqlStatement = "UPDATE form SET fields_xml=@xml, last_modified=UTC_TIMESTAMP() WHERE form_id=@form_id";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@form_id", form.formID);
                // Get XML for form and add it to the @xml parameter
                XmlSerializer ser = new XmlSerializer(form.GetType());
                using (TextWriter writer = new StringWriter())
                {
                    ser.Serialize(writer, form);
                    command.Parameters.AddWithValue("@xml", writer.ToString());
                }
                command.ExecuteNonQuery();

                return form;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return null;
            }
        }

        public Form GetForm(string formID)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT * FROM forms WHERE form_id=@form_id";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@form_id", formID);

                reader = command.ExecuteReader();
                Form tempForm = new Form("");
                while (reader.Read())
                {
                    String reportID = reader["report_id"].ToString();
                    String fieldsXML = reader["fields_xml"].ToString();
                    XmlSerializer ser = new XmlSerializer(tempForm.GetType());
                    using (TextReader tReader = new StringReader(fieldsXML))
                    {
                        tempForm = (Form)ser.Deserialize(tReader);
                    }
                }
                conn.Close();
                return tempForm;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return null;
            }
        }

        private Boolean IsLocalOlder(Form form)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT last_modified FROM forms WHERE form_id=@form_id";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@form_id", form.formID);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    DateTime lastModified = DateTime.Parse(reader["last_modified"].ToString());
                    if (lastModified.ToLocalTime().CompareTo(DateTime.Now) >= 0)
                    {
                        conn.Close();
                        return true;
                    }
                }
                conn.Close();
                return false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return false;
            }
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
                Console.WriteLine(e.ToString());
                return null;
            }
        }

        public Form InsertForm(Form form)
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

                return form;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return form;
            }
        }

        public Boolean FormExists(Form form)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT COUNT(form_id) FROM forms WHERE form_id=@form_id";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@form_id", form.formID);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int number = int.Parse(reader["count(form_id)"].ToString());
                    if (number > 0)
                    {
                        conn.Close();
                        return true;
                    }
                }
                conn.Close();
                return false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return false;
            }
        }
    }
}
