using WpfApp1.Case;
using WpfApp1.Users;

using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace WpfApp1
{
    /// <summary>
    /// static class for holding system-wide stuff we need to keep track of.
    /// </summary>
    static class UserPrefs
    {
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
                _caseFile.OpenAsUser(user);
            }
        }
        private static CaseFile _caseFile;

        public static ObservableCollection<User> users;


        //--methods--//
        /// <summary>
        /// called when we first load in. VERY IMPORTANT>
        /// </summary>
        public static void OnLoad()
        {
            users = new ObservableCollection<User>();
            UserSyncer userSyncer = new UserSyncer();
            foreach (User aUser in userSyncer.WebGetListOfUsers())
            {
                users.Add(aUser);
            }
            //TODO: REMOVE THIS, just for testing. Instead. load this from the database.
            AddUser(new User("sCarter", "pass", "Samantha Carter"));
            AddUser(new User("jO'Niell", "pass", "Jack O'Niell"));
            AddUser(new User("dJackson", "pass", "Daniel Jackson"));
            AddUser(new User("cMitchell", "pass", "Cameron Mitchell"));
            AddUser(new User("vMalDoran", "pass", "Vala Mal Doran"));
            AddUser(new User("gHammond", "pass", "George Hammond"));
        }

        public static void SetUser(User newUser, bool wasCheckedOnline)
        {
            user = newUser;
            userIsAuthenticatedOnline = wasCheckedOnline;
        }
        public static void AddUser(User user)
        {
            foreach (User registerdUser in users)
            {
                if (user.id == registerdUser.id)
                {
                    throw new System.ArgumentException("Cannot add" + user.id + "to system, a user with that ID already exists!");
                }
                else if(user.name == registerdUser.name)
                {
                    throw new System.ArgumentException("Cannot add" + user.name + "to system, a user with that name already exists!");
                }
            }
            //TODO: add error checking.
            //if (users.Exists(element => element.id.Equals(user.id)))
            //    throw new System.ArgumentException("Cannot add" + user.id + "to system, a user with that ID already exists!");

            users.Add(user);
        }
    }
}
