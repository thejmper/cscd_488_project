﻿using ALInspectionApp.CaseObject;
using ALInspectionApp.Users;

using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System;
using System.Windows;
using System.Xml.Serialization;

namespace ALInspectionApp.Users
{
    /// <summary>
    /// static class for holding system-wide stuff we need to keep track of.
    /// </summary>
    static class UserPrefs
    {
        //--constants--//
        public const string CASEFILE_EXTENSION = ".csfl";
        public const string CASEFILE_FILTER = "Casefiles (*.csfl)|*.csfl";
        public const string FORM_EXTENSION = ".frm";
        public const string FORM_SEARCH_FILTER = "*.frm";

        //--variables--//
        /// <summary>
        /// the currently logged-in user
        /// </summary>
        public static User user { get; private set; }
        /// <summary>
        /// has this user's login been checked against the online database? If no, don't give full
        /// permissions because he might be hacking around in the code
        /// </summary>
        public static bool userIsAuthenticatedOnline { get; private set; }

        private static MainWindow _mainWindow;
        public static MainWindow mainWindow
        {
            get
            {
                return _mainWindow;
            }
            set
            {
                _mainWindow = value;
            }
        }


        /// <summary>
        /// the casefile we're looking at.
        /// </summary>
        public static CaseFile caseFile
        {
            get
            {
                return _caseFile;
            }
            set
            {
                _caseFile = value;
                report = _caseFile.OpenAsUser(user);
                _caseFile.onDataChanged += CaseFileNewDataWatcher;
                toggleCaseFileButtons(_caseFile != null);
            }
        }

        private static void toggleCaseFileButtons(bool enable)
        {
            _mainWindow.SaveFile.IsEnabled = enable;
            if(isOnline)
            {
                _mainWindow.MergeFile.IsEnabled = enable;
                _mainWindow.btnAssignUser.IsEnabled = enable;
                _mainWindow.btnCloseFile.IsEnabled = enable;
            }
            
            if(caseFile.assignedUserIDs.Contains(user.id) && enable)
                _mainWindow.addForm.IsEnabled = enable;
            

        }

        private static void CaseFileNewDataWatcher()
        {

        }

        private static CaseFile _caseFile;

        /// <summary>
        /// Whether the application has internet connectivity
        /// </summary>
        public static bool isOnline
        {
            get
            {
                return _isOnline;
            }
            set
            {
                _isOnline = value;
                toggleOnlineOptions(_isOnline);
            }
        }

        private static void toggleOnlineOptions(bool isOnline)
        {
            if(mainWindow != null)
                mainWindow.admin.IsEnabled = isOnline;
        }

        private static bool _isOnline;

        /// <summary>
        /// the report we're working on, if we're a field user.
        /// </summary>
        public static Report report { get; private set; }

        /// <summary>
        /// collection of users on this machine
        /// </summary>
        public static ObservableCollection<User> users;

        /// <summary>
        /// collection of forms we can potentially add to a report!
        /// </summary>
        public static List<Form> formtemplates { get; private set; }

        //--methods--//
        /// <summary>
        /// called when we first load in. VERY IMPORTANT>
        /// </summary>
        public static void OnLoad()
        {
            isOnline = true; // Default to assuming there is internet unless otherwise told
            users = new ObservableCollection<User>();
            UserSyncer userSyncer = new UserSyncer();
            foreach (User aUser in userSyncer.WebGetListOfUsers())
            {
                users.Add(aUser);
            }

            LoadFormTemplates();
        }

        /// <summary>
        /// loads all formtemplates from external files into the system so they can
        /// then be added to casefiles at will.
        /// </summary>
        private static void LoadFormTemplates()
        {
            formtemplates = new List<Form>();
            string[] formFiles = Directory.GetFiles(GetFormDirectory(), FORM_SEARCH_FILTER);

            for(int i = 0; i < formFiles.Length; i++)
            {
                try
                {
                    XmlSerializer ser = new XmlSerializer(typeof(Form));
                    using (TextReader reader = new StreamReader(formFiles[i]))
                    {
                        Form form = (Form)ser.Deserialize(reader);
                        formtemplates.Add(form);
                    }

                } catch (Exception ex)
                {
                    MessageBox.Show("Error when loading form template '" + formtemplates[i] + "' " + ex.ToString());
                }
            }
        }

        /// <summary>
        /// sets the user when user logs in.
        /// </summary>
        /// <param name="newUser"></param>
        /// <param name="wasCheckedOnline"></param>
        public static void SetUser(User newUser, bool wasCheckedOnline)
        {
            user = newUser;
            userIsAuthenticatedOnline = wasCheckedOnline;
        }
        /// <summary>
        /// adds a new user to the database and local copy.4
        /// throws an exception if the unique ID already exists.
        /// </summary>
        /// <param name="user"></param>
        public static void AddUser(User user)
        {
            foreach (User registerdUser in users)
            {
                if (user.id == registerdUser.id)
                {
                    throw new System.ArgumentException("Cannot add" + user.id + "to system, a user with that ID already exists!");
                }
 
            }
            users.Add(user);
        }

        /// <summary>
        /// gets a path to our workign directory
        /// </summary>
        /// <returns></returns>
        private static string GetPath(string fileName)
        {
            string baseDir = Directory.GetParent(Directory.GetCurrentDirectory() + @"..\..\..").FullName;
            string path = Path.Combine(baseDir, "testXML");
            return path + fileName;
        }

        /// <summary>
        /// returns the path where our forms are stored. Used because we had to use a non-typical address
        /// for testing purposes.
        /// </summary>
        /// <returns></returns>
        public static string GetFormDirectory()
        {
            return GetPath(@"/FormTemplates");
        }
        /// <summary>
        /// returns the path where our casefiles are stored. used because we had to use a non-typical address
        /// for testing purpuses.
        /// </summary>
        /// <returns></returns>
        public static string GetCasefileDirectory()
        {
            return GetPath(@"\CaseFiles");
        }

        public static string GetPasswordHashDirectory()
        {
            return GetPath(@"\Hashes");

        }
    }
}
