using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using LibGit2Sharp;
using System.IO;

namespace ProofOfConcept
{
    class Program
    {
        static string userName;

        static string workignDir = @"C:\GitTest";

        static void Main(string[] args)
        {
            //get user stuff!
            Console.Write("Enter your user name: ");
            userName = Console.ReadLine();
            Console.WriteLine("Welcome: " + userName);

            //do we need to clone a new instance of the repo?
            string pathToMyCopy = Path.Combine(workignDir, userName);
            string pathToMaster = Path.Combine(workignDir, @"Master\.git");

            Console.Write("Looking for local repo in: " + pathToMyCopy + "...");
            if (!Directory.Exists(pathToMyCopy))
            {
                Console.WriteLine("None found! Cloneing!");
                Repository.Clone(pathToMaster, pathToMyCopy);
            }
            else
            {
                Console.WriteLine("Found! Pulling latest!");
                using (var repo = new Repository(pathToMyCopy))
                {

                    repo.Network.Fetch(repo.Network.Remotes.First,
                            new UsernamePasswordCredentials()
                            {
                                Username = "username",
                                Password = "password"
                            });

                }
            }

            
            /*
            //edit some text!
            Console.WriteLine();
            Console.WriteLine("Enter your report!");
            string reportText = Console.ReadLine();

            //save it to a file!
            File.AppendAllText(Path.Combine(pathToMyCopy, "report.txt"), reportText);

            //now stage it and send it up!
            using(var repo = new Repository(pathToMyCopy))
            {
                Commands.Stage(repo, Path.Combine(pathToMyCopy, "report.txt"));

                Signature author = new Signature(userName, "@someEmail.net", DateTime.Now);
                Signature comitter = author;

                Commit commit = repo.Commit("Here's a commit " + userName + "made!", author, comitter);
            }
            */
           
        }
    }
}
