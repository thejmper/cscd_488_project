﻿using System;
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
    class ReportSyncer
    {
        string reportSyncAddress;

        public ReportSyncer()
        {
            reportSyncAddress = "http://anthonyreinecker.com/seniorproject/reportsync.php";
        }

        public void InsertReport(Report report)
        {
            if (GetReport(report.reportID) == null)
            {
                using (WebClient client = new WebClient())
                {
                    NameValueCollection postData = new NameValueCollection()
                {
                    {"author_id", report.licensorID },
                    {"case_id", report.caseFile.caseID }
                };
                    string pagesource = Encoding.UTF8.GetString(client.UploadValues(reportSyncAddress, postData));
                    report.reportID = pagesource;
                }
            }
            else
            {
                UpdateReport(report);
            }

            FormSyncer formSyncer = new FormSyncer();
            foreach (Form form in report.forms)
            {
                formSyncer.InsertForm(form);
            }
        }

        private void UpdateReport(Report report)
        {

        }

        public Report GetReport(string reportID)
        {
            WebRequest request = WebRequest.Create(reportSyncAddress + "?report_id=" + reportID);
            request.CachePolicy = new HttpRequestCachePolicy(HttpRequestCacheLevel.NoCacheNoStore);
            request.Method = "GET";
            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    string pagesource = stream.ReadToEnd();
                    if (pagesource == "")
                    {
                        return null;
                    }
                    else
                    {
                        string[] result = pagesource.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries);
                        Report temp = new Report(result[2] + "_Report", result[2], result[2], null);
                        temp.reportID = reportID;
                        return temp;
                    }
                }
            }
        }

        public List<Report> GetReports(CaseFile caseFile)
        {
            List<Report> reports = new List<Report>();
            WebRequest request = WebRequest.Create(reportSyncAddress + "?case_id=" + caseFile.caseID);
            request.CachePolicy = new HttpRequestCachePolicy(HttpRequestCacheLevel.NoCacheNoStore);
            request.Method = "GET";
            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    string pagesource = stream.ReadToEnd();
                    if (pagesource == "")
                    {
                        return null;
                    }
                    else
                    {
                        string[] result = pagesource.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries);
                        foreach (string reportLine in result)
                        {
                            string[] reportResult = reportLine.Split(new string[] { "|" }, StringSplitOptions.RemoveEmptyEntries);
                            Report temp = new Report(reportResult[2] + "_Report", reportResult[2], reportResult[2], caseFile); // TODO: Change it so it actually gets and provides the full name of the user
                            temp.reportID = reportResult[0].ToString();
                            reports.Add(temp);
                        }

                        return reports;
                    }
                }
            }
        }
    }
}