using ALInspectionApp.CaseObject;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Cache;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace ALInspectionApp.Reports.Syncers
{
    public class FormSyncer
    {
        string formSyncAddress;

        public FormSyncer()
        {
            formSyncAddress = "http://anthonyreinecker.com/seniorproject/formsync.php";
        }

        // TODO: Handle duplicate forms
        public void InsertForm(Form form)
        {
            string formXML;
            XmlSerializer ser = new XmlSerializer(form.GetType());
            using (TextWriter writer = new StringWriter())
            {
                ser.Serialize(writer, form);
                formXML = writer.ToString();
            }

            try
            {
                using (WebClient client = new WebClient())
                {
                    NameValueCollection postData = new NameValueCollection()
                {
                    {"report_id", form.report.reportID },
                    {"fields_xml",  formXML }
                };
                    string pagesource = Encoding.UTF8.GetString(client.UploadValues(formSyncAddress, postData));
                    form.formID = pagesource;
                }
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
            }
        }

        public List<Form> GetForms(Report report)
        {
            List<Form> forms = new List<Form>();
            try
            {
                WebRequest request = WebRequest.Create(formSyncAddress + "?report_id=" + report.reportID);
                request.CachePolicy = new HttpRequestCachePolicy(HttpRequestCacheLevel.NoCacheNoStore);
                request.Method = "GET";
                using (WebResponse response = request.GetResponse())
                {
                    using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                    {
                        string pagesource = stream.ReadToEnd();
                        if (pagesource == "")
                        {
                            return forms;
                        }
                        else
                        {
                            string[] result = pagesource.Split(new string[] { "```" }, StringSplitOptions.RemoveEmptyEntries);
                            foreach (string formLine in result)
                            {
                                string[] formResult = formLine.Split(new string[] { "|" }, StringSplitOptions.RemoveEmptyEntries);
                                Form tempForm = new Form("null");
                                XmlSerializer ser = new XmlSerializer(tempForm.GetType());
                                using (TextReader tReader = new StringReader(formResult[2]))
                                {
                                    tempForm = (Form)ser.Deserialize(tReader);
                                }
                                forms.Add(tempForm);
                            }

                            return forms;
                        }
                    }
                }
            } catch (WebException e)
            {
                Console.WriteLine(e.Message);
                return forms;
            }
        }
    }
}
