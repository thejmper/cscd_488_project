﻿using ALInspectionApp.CaseObject;
using ALInspectionApp.Users;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Cache;
using System.Text;
using System.Threading.Tasks;

namespace ALInspectionApp.Reports.Syncers
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
            try
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
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
                return false;
            }
        }

        public Boolean IsUserAssigned(string userID, string caseFileID)
        {
            try
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
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
                return false;
            }
        }

        public CaseFile GetCaseFile(string caseFileID)
        {
            try
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
                                temp.CloseCase();
                            }
                            return temp;
                        }
                    }
                }
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
                return null;
            }
        }

        public List<CaseFile> GetAllCaseFiles()
        {
            List<CaseFile> caseFiles = new List<CaseFile>();

            try
            {
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
                                temp.CloseCase();
                            }
                            caseFiles.Add(temp);
                        }
                    }
                }
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
            }

            return caseFiles;
        }

        public CaseFile CreateCaseFile(string facilityName, int facilityLicenseNumber)
        {
            try
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
                    CaseFile temp = new CaseFile(facilityName, facilityName, facilityLicenseNumber);
                    temp.caseID = caseID;
                    return temp;
                }
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                UserPrefs.isOnline = false;
                return new CaseFile(facilityName, facilityName, facilityLicenseNumber);
            }
            
        }

        public void InsertCaseFile(CaseFile file)
        {
            if (GetCaseFile(file.caseID) == null)
            {
                try
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
                } catch (WebException e)
                {
                    Console.WriteLine(e.Message);
                    UserPrefs.isOnline = false;
                }
            }
            else
            {
                UpdateCaseFile(file);
            }

            ReportSyncer reportSyncer = new ReportSyncer();
            foreach (Report report in file.reports)
            {
                reportSyncer.InsertReport(report);
            }
        }

        private void UpdateCaseFile(CaseFile file)
        {

        }
    }
}
