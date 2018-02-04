using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Cache;
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

        public Boolean IsUserAssigned(string userID, string caseFileID)
        {
            WebRequest request = WebRequest.Create(caseSyncAddress + "?case_id=" + caseFileID + "&username=" + userID);
            request.CachePolicy = new HttpRequestCachePolicy(HttpRequestCacheLevel.NoCacheNoStore);
            request.Method = "GET";
            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    string pagesource = stream.ReadToEnd();
                    if (pagesource == "1")
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
        }

        public CaseFile GetCaseFile(string caseFileID)
        {
            WebRequest request = WebRequest.Create(caseSyncAddress + "?case_id=" + caseFileID);
            request.CachePolicy = new HttpRequestCachePolicy(HttpRequestCacheLevel.NoCacheNoStore);
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
            request.CachePolicy = new HttpRequestCachePolicy(HttpRequestCacheLevel.NoCacheNoStore);
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

        public void InsertCaseFile(CaseFile file)
        {
            using (WebClient client = new WebClient())
            {
                NameValueCollection postData = new NameValueCollection()
                {
                    {"facility_name", file.facilityName },
                    {"facility_license", file.facilitylicenseNumber.ToString() }
                };
                string pagesource = Encoding.UTF8.GetString(client.UploadValues(caseSyncAddress, postData));
                file.caseID = pagesource;
            }

            ReportSyncer reportSyncer = new ReportSyncer();
            foreach (Report report in file.reports)
            {
                reportSyncer.InsertReport(report);
            }
        }
    }
}
