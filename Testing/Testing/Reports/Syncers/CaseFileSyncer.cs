using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Testing.Users;

namespace Testing.Reports.Syncers
{
    class CaseFileSyncer
    {
        MySqlConnection conn;

        public CaseFileSyncer()
        {
            conn = new MySqlConnection(
                "server=5;" +
                "user id=user;" +
                "password=password;" +
                "database=anthoqn6_480;");
        }

        public CaseFile SyncCaseFile(CaseFile caseFile, User user)
        {
            if (CaseExists(caseFile))
            {
                if (IsAssignedCase(user, caseFile))
                {
                    return GetCaseFile(caseFile);
                }
                else
                {
                    Console.WriteLine("You aren't assigned to this case");
                    return caseFile;
                }
            }
            else
            {
                InsertCaseFile(caseFile);
                return caseFile;
            }
        }

        public Boolean AssignUser(User user, CaseFile caseFile)
        {
            try
            {
                conn.Open();

                string sqlStatement = "INSERT INTO assigned" +
                    "(username, case_id) " +
                    "VALUES (@username, @case_id)";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@username", user.username);
                command.Parameters.AddWithValue("@case_id", caseFile.caseID);

                command.ExecuteNonQuery();

                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return false;
            }
        }

        private Boolean IsAssignedCase(User user, CaseFile caseFile)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT EXISTS (SELECT * FROM assigned WHERE username=@username AND case_id=@case_id) as assigned";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@username", user.username);
                command.Parameters.AddWithValue("@case_id", caseFile.caseID);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    Boolean assigned = reader.GetBoolean("assigned");
                    conn.Close();
                    return assigned;
                }

                conn.Close();
                return false;
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return false;
            }
        }

        private Boolean IsLocalOlder(CaseFile caseFile)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT last_modified FROM case_files WHERE case_id=@caseID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@caseID", caseFile.caseID);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    DateTime lastModified = DateTime.Parse(reader["last_modified"].ToString());
                    Console.WriteLine("Last Modified: " + lastModified.ToString());
                    if (lastModified.ToLocalTime().CompareTo(caseFile.lastModified) >= 0)
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

        public CaseFile GetCaseFile(CaseFile caseFile)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT * FROM case_files WHERE case_id=@caseID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@caseID", caseFile.caseID);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    String caseID = reader["case_id"].ToString();
                    String facilityName = reader["facility_name"].ToString();
                    int facilityLicense = reader.GetInt32("facility_license");
                    conn.Close();
                    CaseFile tempCaseFile = new CaseFile(caseID, facilityName, facilityLicense);
                    ReportSyncer syncer = new ReportSyncer();
                    return syncer.GetAllReports(tempCaseFile);
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

        public CaseFile GetCaseFile(int caseFileID)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT * FROM case_files WHERE case_id=@caseID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@caseID", caseFileID);

                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    String caseID = reader["case_id"].ToString();
                    String facilityName = reader["facility_name"].ToString();
                    int facilityLicense = reader.GetInt32("facility_license");
                    conn.Close();
                    return new CaseFile(caseID, facilityName, facilityLicense);
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

        private Boolean InsertCaseFile(CaseFile caseFile)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string insertStatement = "INSERT INTO case_files" +
                    "(facility_name, facility_license) " +
                    "VALUES (@facilityName," +
                    "@facilityLicense)";
                MySqlCommand command = new MySqlCommand(insertStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@facilityName", caseFile.facilityName);
                command.Parameters.AddWithValue("@facilityLicense", caseFile.facilityLicenseNo);

                command.ExecuteNonQuery();
                string getIDStatement = "SELECT @@IDENTITY AS theID";
                command = new MySqlCommand(getIDStatement, conn);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    caseFile.caseID = reader["theID"].ToString();
                }
                conn.Close();

                ReportSyncer syncer = new ReportSyncer();

                foreach (Report report in caseFile.reports)
                {
                    syncer.InsertReport(caseFile, report);
                }

                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return false;
            }
        }

        private Boolean CaseExists(CaseFile caseFile)
        {
            try
            {
                MySqlDataReader reader = null;
                conn.Open();

                string sqlStatement = "SELECT COUNT(case_id) FROM case_files WHERE case_id=@caseID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@caseID", caseFile.caseID);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int number = int.Parse(reader["count(case_id)"].ToString());
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

        public Boolean UpdateCaseFile(CaseFile caseFile)
        {
            if (!CaseExists(caseFile))
            {
                return false;
            }

            try
            {
                conn.Open();
                string sqlStatement = "UPDATE case_files " +
                    "SET facility_name=@facilityName, facility_license=@facilityLicense " +
                    "WHERE case_id=@caseID";
                MySqlCommand command = new MySqlCommand(sqlStatement, conn);
                command.Prepare();
                command.Parameters.AddWithValue("@caseID", caseFile.caseID);
                command.Parameters.AddWithValue("@facilityName", caseFile.facilityName);
                command.Parameters.AddWithValue("@facilityLicense", caseFile.facilityLicenseNo);
                command.ExecuteNonQuery();

                conn.Close();
                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
                return false;
            }
        }
    }
}
