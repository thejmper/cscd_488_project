using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.Reports.Syncers
{
    class ReportSyncer
    {
        MySqlConnection conn;

        public ReportSyncer()
        {
            string connectionString = System.IO.File.ReadAllText(@"conn.txt");
            conn = new MySqlConnection(connectionString);
        }

        public Report SyncReport(CaseFile caseFile, String reportID)
        {
            Report report = caseFile.GetReport(reportID);

            if (ReportExists(reportID))
            {
                if (IsLocalOlder(report))
                {
                    return UpdateLocalReport(caseFile, reportID);
                }
                else
                {
                    UpdateLocalReport(caseFile, reportID);
                    return report;
                }
            }
            else
            {
                InsertReport(caseFile, report);
                return report;
            }
        }

        public Boolean IsLocalOlder(Report report)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT last_modified FROM reports WHERE report_id=@reportID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@reportID", report.reportID);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    DateTime lastModified = DateTime.Parse(reader["last_modified"].ToString());
                    Console.WriteLine("Last Modified: " + lastModified.ToString());
                    if (lastModified.ToLocalTime().CompareTo(report.lastModified) >= 0)
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

        public CaseFile GetAllReports(CaseFile caseFile)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT * FROM reports WHERE case_id=@caseID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@caseID", caseFile.caseID);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    String reportID = reader["report_id"].ToString();
                    String caseID = reader["case_id"].ToString();
                    string authorID = reader["author_id"].ToString();
                    DateTime lastModified = reader.GetDateTime("last_modified").ToLocalTime();
                    Report tempReport = caseFile.AddReport(reportID, authorID.ToString());
                    tempReport.lastModified = lastModified;
                    FormSyncer formSyncer = new FormSyncer();
                    formSyncer.GetForms(tempReport);
                }

                conn.Close();
                return caseFile;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return caseFile;
            }
        }

        private Report UpdateLocalReport(CaseFile caseFile, String reportID)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT * FROM reports WHERE report_id=@reportID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@reportID", reportID);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    String caseID = reader["case_id"].ToString();
                    int authorID = reader.GetInt32("author_id");
                    DateTime lastModified = reader.GetDateTime("last_modified").ToLocalTime();
                    conn.Close();
                    caseFile.UpdateReport(reportID, lastModified);
                }

                conn.Close();
                return null;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return null;
            }
        }

        public Boolean InsertReport(CaseFile caseFile, Report report)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string insertStatement = "INSERT INTO reports" +
                    "(case_id, author_id, last_modified) " +
                    "VALUES (@caseID," +
                    "@authorID, UTC_TIMESTAMP())";
                MySqlCommand command = new MySqlCommand(insertStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@caseID", caseFile.caseID);
                command.Parameters.AddWithValue("@authorID", "Kenny"); // TODO: Switch to current users ID

                command.ExecuteNonQuery();
                string getIDStatement = "SELECT @@IDENTITY AS theID";
                command = new MySqlCommand(getIDStatement, conn);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    report.reportID = reader["theID"].ToString();
                }

                conn.Close();

                FormSyncer syncer = new FormSyncer();

                foreach (Form form in report.forms)
                {
                    syncer.InsertForm(form);
                }

                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return false;
            }
        }

        private Boolean ReportExists(String reportID)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT COUNT(report_id) FROM reports WHERE report_id=@reportID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@reportID", reportID);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int number = int.Parse(reader["count(report_id)"].ToString());
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
