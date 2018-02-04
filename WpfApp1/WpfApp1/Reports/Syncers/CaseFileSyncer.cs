using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using WpfApp1.Case;
using WpfApp1.Users;

namespace WpfApp1.Reports.Syncers
{
    public class CaseFileSyncer
    {
        string caseSyncAddress;

        public CaseFileSyncer()
        {
            caseSyncAddress = "http://anthonyreinecker.com/seniorproject/casesync.php";
        }

        //public Case.CaseFile SyncCaseFile(Case.CaseFile caseFile, User user)
        //{
        //    if (CaseExists(caseFile))
        //    {
        //        if (IsAssignedCase(user, caseFile))
        //        {
        //            if (IsLocalOlder(caseFile))
        //            {
        //                return GetCaseFile(caseFile);
        //            }
        //            else
        //            {
        //                ReportSyncer syncer = new ReportSyncer();
        //                foreach (Report report in caseFile.reports)
        //                {
        //                    syncer.SyncReport(caseFile, report.reportID);
        //                }
        //                return caseFile;
        //            }
        //        }
        //        else
        //        {
        //            Console.WriteLine("You aren't assigned to this case");
        //            return caseFile;
        //        }
        //    }
        //    else
        //    {
        //        InsertCaseFile(caseFile);
        //        return caseFile;
        //    }
        //}

        //public Boolean AssignUser(User user, Case.CaseFile caseFile)
        //{
        //    try
        //    {
        //        conn.Open();

        //        string sqlStatement = "INSERT INTO assigned" +
        //            "(username, case_id) " +
        //            "VALUES (@username, @case_id)";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@username", user.id);
        //        command.Parameters.AddWithValue("@case_id", caseFile.caseID);

        //        command.ExecuteNonQuery();

        //        conn.Close();
        //        return true;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e);
        //        return false;
        //    }
        //}

        public Boolean AssignUser(string userID, string caseFileID)
        {
            using (WebClient client = new WebClient())
            {
                NameValueCollection postData = new NameValueCollection()
                {
                    {"username", userID },
                    {"caseID", caseFileID }
                };
                string pagesource = Encoding.UTF8.GetString(client.UploadValues(caseSyncAddress, postData));
                return true;
                // TODO: Check if user is already added
            }

            return false;
        }

        //private Boolean IsAssignedCase(User user, Case.CaseFile caseFile)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT EXISTS (SELECT * FROM assigned WHERE username=@username AND case_id=@case_id) as assigned";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@username", user.id);
        //        command.Parameters.AddWithValue("@case_id", caseFile.caseID);

        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            Boolean assigned = reader.GetBoolean("assigned");
        //            conn.Close();
        //            return assigned;
        //        }

        //        conn.Close();
        //        return false;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e);
        //        return false;
        //    }
        //}

        //private Boolean IsLocalOlder(Case.CaseFile caseFile)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT last_modified FROM case_files WHERE case_id=@caseID";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@caseID", caseFile.caseID);
        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            DateTime lastModified = DateTime.Parse(reader["last_modified"].ToString());
        //            Console.WriteLine("Last Modified: " + lastModified.ToString());
        //            if (lastModified.ToLocalTime().CompareTo(caseFile.lastModified) >= 0)
        //            {
        //                conn.Close();
        //                return true;
        //            }
        //        }
        //        conn.Close();
        //        return false;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return false;
        //    }
        //}

        //public Case.CaseFile GetCaseFile(Case.CaseFile caseFile)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT * FROM case_files WHERE case_id=@caseID";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@caseID", caseFile.caseID);

        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            String caseID = reader["case_id"].ToString();
        //            String facilityName = reader["facility_name"].ToString();
        //            int facilityLicense = reader.GetInt32("facility_license");
        //            conn.Close();
        //            Case.CaseFile tempCaseFile = new Case.CaseFile(caseID, facilityName, facilityLicense);
        //            ReportSyncer syncer = new ReportSyncer();
        //            return syncer.GetAllReports(tempCaseFile);
        //        }

        //        conn.Close();
        //        return caseFile;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return caseFile;
        //    }
        //}

        //public Case.CaseFile GetCaseFile(int caseFileID)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT * FROM case_files WHERE case_id=@caseID";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@caseID", caseFileID);

        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            String caseID = reader["case_id"].ToString();
        //            String facilityName = reader["facility_name"].ToString();
        //            int facilityLicense = reader.GetInt32("facility_license");
        //            conn.Close();
        //            return new Case.CaseFile(caseID, facilityName, facilityLicense);
        //        }

        //        conn.Close();
        //        return null;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return null;
        //    }
        //}

        public CaseFile GetCaseFile(string caseFileID)
        {
            WebRequest request = WebRequest.Create(caseSyncAddress + "?case_id=" + caseFileID);
            request.Method = "GET";
            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    string pagesource = stream.ReadToEnd();
                    Console.WriteLine(pagesource);
                    if (pagesource == "invalid")
                    {
                        return null;
                    }
                    else
                    {
                        string[] result = pagesource.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries);
                        CaseFile temp = new CaseFile("null", result[0], int.Parse(result[1]));
                        temp.caseID = caseFileID;
                        if (int.Parse(result[2]) == 1)
                        {
                            temp.closed = true;
                        }
                        return temp;
                    }
                }
            }
        }

        public List<CaseFile> GetAllCaseFiles()
        {
            List<CaseFile> caseFiles = new List<CaseFile>();

            WebRequest request = WebRequest.Create(caseSyncAddress);
            request.Method = "GET";
            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    string pagesource = stream.ReadToEnd();
                    string[] result = pagesource.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries);
                    foreach (string caseFileLine in result)
                    {
                        string[] caseFileResult = caseFileLine.Split(new string[] { "|" }, StringSplitOptions.RemoveEmptyEntries);
                        CaseFile temp = new CaseFile("null", caseFileResult[1], int.Parse(caseFileResult[2]));
                        temp.caseID = caseFileResult[0];
                        if (int.Parse(caseFileResult[3]) == 1)
                        {
                            temp.closed = true;
                        }
                        caseFiles.Add(temp);
                    }
                }
            }

            return caseFiles;
        }

        public CaseFile CreateCaseFile(string facilityName, int facilityLicenseNumber)
        {
            using (WebClient client = new WebClient())
            {
                NameValueCollection postData = new NameValueCollection()
                {
                    {"facility_name", facilityName },
                    {"facility_license", facilityLicenseNumber.ToString() }
                };
                string pagesource = Encoding.UTF8.GetString(client.UploadValues(caseSyncAddress, postData));
                if (pagesource == "already exists")
                {
                    return null;
                }
                string caseID = pagesource;
                CaseFile temp = new CaseFile("null", facilityName, facilityLicenseNumber);
                temp.caseID = caseID;
                return temp;
            }
        }

        //private Boolean InsertCaseFile(Case.CaseFile caseFile)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string insertStatement = "INSERT INTO case_files" +
        //            "(facility_name, facility_license) " +
        //            "VALUES (@facilityName," +
        //            "@facilityLicense)";
        //        MySqlCommand command = new MySqlCommand(insertStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@facilityName", caseFile.facilityName);
        //        command.Parameters.AddWithValue("@facilityLicense", caseFile.facilitylicenseNumber);

        //        command.ExecuteNonQuery();
        //        string getIDStatement = "SELECT @@IDENTITY AS theID";
        //        command = new MySqlCommand(getIDStatement, conn);
        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            caseFile.caseID = reader["theID"].ToString();
        //        }
        //        conn.Close();

        //        ReportSyncer syncer = new ReportSyncer();

        //        foreach (Report report in caseFile.reports)
        //        {
        //            syncer.InsertReport(caseFile, report);
        //        }

        //        return true;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return false;
        //    }
        //}

        //private Boolean CaseExists(Case.CaseFile caseFile)
        //{
        //    try
        //    {
        //        MySqlDataReader reader = null;
        //        conn.Open();

        //        string sqlStatement = "SELECT COUNT(case_id) FROM case_files WHERE case_id=@caseID";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@caseID", caseFile.caseID);
        //        reader = command.ExecuteReader();
        //        while (reader.Read())
        //        {
        //            int number = int.Parse(reader["count(case_id)"].ToString());
        //            if (number > 0)
        //            {
        //                conn.Close();
        //                return true;
        //            }
        //        }
        //        conn.Close();
        //        return false;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return false;
        //    }
        //}

        //public Boolean UpdateCaseFile(Case.CaseFile caseFile)
        //{
        //    if (!CaseExists(caseFile))
        //    {
        //        return false;
        //    }

        //    try
        //    {
        //        conn.Open();
        //        string sqlStatement = "UPDATE case_files " +
        //            "SET facility_name=@facilityName, facility_license=@facilityLicense";
        //        MySqlCommand command = new MySqlCommand(sqlStatement, conn);
        //        command.Prepare();
        //        command.Parameters.AddWithValue("@facilityName", caseFile.facilityName);
        //        command.Parameters.AddWithValue("@facilityLicense", caseFile.facilitylicenseNumber);
        //        command.ExecuteNonQuery();

        //        conn.Close();
        //        return true;
        //    }
        //    catch (Exception e)
        //    {
        //        Console.WriteLine(e.ToString());
        //        return false;
        //    }
        //}
    }
}
