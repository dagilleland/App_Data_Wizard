// TODO: Add XML comments
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Xml;

namespace DbScriptInstaller
{
    public class ScriptInstaller : IScriptInstaller
    {
        public string ConnectionString { get; private set; }
        public DbProviderFactory Factory { get; private set; }

        internal ScriptInstaller(string connectionString, DbProviderFactory dbProviderFactory)
        {
            ConnectionString = connectionString;
            Factory = dbProviderFactory;
        }

        #region Private Fields and Properties
        //private const string DefaultScriptFolder = @"~\App_Data\";

        //public string LocalWebConfig
        //{ get { return Path.GetDirectoryName(this.AppRelativeVirtualPath); } }
        //private ConnectionStringSettings DbConnectionSettings
        //{ get { return ConfigurationManager.ConnectionStrings[ConnectionStringName.Value]; } }
        //private string SqlScriptLastExecuted
        //{ get { return ConfigurationManager.AppSettings["SqlScriptLastExecuted"]; } }
        //private string SqlScriptFolder
        //{ get { return string.IsNullOrEmpty(ConfigurationManager.AppSettings["SqlScriptFolder"]) ? DefaultScriptFolder : ConfigurationManager.AppSettings["SqlScriptFolder"]; } }
        //private string SqlScriptNamingPattern
        //{ get { return ConfigurationManager.AppSettings["SqlScriptNamingPattern"]; } }
        //private Regex FilePattern
        //{ get { return new Regex(string.IsNullOrEmpty(SqlScriptNamingPattern) ? @".*.sql" : SqlScriptNamingPattern, RegexOptions.IgnoreCase); } }
        //private List<string> FileNames
        //{ get { return Directory.GetFiles(Server.MapPath(SqlScriptFolder)).Where(file => FilePattern.IsMatch(file)).ToList<string>(); } }

        // Following line adapted from the DotNetNuke.Data.SqlDataProvider SqlDelimiterRegex property

        private static Regex SqlDelimiterRegex =
            new Regex(@"(?<=(?:[^\w]+|^))GO(?=(?: |\t)*?(?:\r?\n|$))",
                RegexOptions.Compiled | RegexOptions.IgnoreCase | RegexOptions.Multiline);

        #endregion

        #region Public Methods
        /// <summary>
        /// Simple test of whether we can connect to & execute scripts against the database
        /// </summary>
        /// <param name="exceptionMessage">Details of the exception, or null</param>
        /// <returns>true if the database is accessible, false if it is not</returns>
        public bool CanConnect(out string exceptionMessage)
        {
            try
            {
                ExecuteNonQuery(CommandType.Text, "SELECT 1");
                exceptionMessage = null;
                return true;
            }
            catch (Exception ex)
            {
                exceptionMessage = ex.Message;
                return false;
            }
        }

        /// <summary>
        /// Processes a collection of script files to be run on the database.
        /// </summary>
        /// <param name="scriptFiles">A collection of complete file paths to SQL script files.</param>
        public List<ScriptFile> Install(ICollection<string> scriptFiles)
        {
            if (scriptFiles == null)
                throw new ArgumentNullException("scriptFiles", "scriptFiles is null.");
            if (scriptFiles.Count == 0)
                throw new ArgumentException("scriptFiles", "scriptFiles is empty");

            List<ScriptFile> allScripts = new List<ScriptFile>();
            foreach (string script in scriptFiles)
                allScripts.Add(new ScriptFile() { FilePath = script, ScriptBlocks = RunInstallationScript(script) });

            int errorCount = 0;
            foreach (ScriptFile script in allScripts)
                foreach (var executedBlock in script.ScriptBlocks)
                    if (!executedBlock.Installed.Value)
                        errorCount++;

            return allScripts;
        }

        public List<ScriptFile> Install(ICollection<RunnableScript> scripts)
        {
            if (scripts == null)
                throw new ArgumentNullException("scripts", "scripts is null.");
            if (scripts.Count == 0)
                throw new ArgumentException("scripts", "scripts is empty");

            throw new NotImplementedException("not yet implemented");
        }

        public List<ScriptFile> Install(ScriptFile scriptFile)
        {
            if (scriptFile == null)
                throw new ArgumentNullException("scriptFile", "scriptFile is null.");

            return Install(scriptFile.ScriptBlocks);
        }

        public List<ScriptFile> Install(IScriptLoader scriptLoader)
        {
            if (scriptLoader == null)
                throw new ArgumentNullException("scriptLoader", "scriptLoader is null.");

            return Install(scriptLoader.Scripts);
        }
        #endregion

        #region Private Methods (general)
        #endregion

        #region Private Methods (Script Installation)
        /// <summary>
        /// Opens the file at the provided scriptPath and splits it into individual blocks of SQL commands to be run on the database.
        /// </summary>
        /// <param name="scriptPath">The complete file path of the SQL script file.</param>
        private List<RunnableScript> RunInstallationScript(string scriptPath)
        {
            string script = File.ReadAllText(scriptPath);
            string[] scripts = SqlDelimiterRegex.Split(script);
            List<RunnableScript> results = new List<RunnableScript>();
            foreach (string item in scripts)
            {
                RunnableScript thisScript = new RunnableScript();
                thisScript.SQLScript = item.Replace("\r\n", "<br/>");
                try
                {
                    ExecuteNonQuery(CommandType.Text, item);
                    thisScript.Installed = true;
                }
                catch (Exception ex)
                {
                    thisScript.Installed = false;
                    thisScript.FailureMessage = ex.Message.Replace("\r\n", "<br/>");
                }
                results.Add(thisScript);
            }
            return results;
        }

        /// <summary>
        /// Executes an individual SQL command text against the database.
        /// </summary>
        /// <param name="commandType">The type of command to execute (Text, StoredProcedure, or TableDirect)</param>
        /// <param name="text">The SQL script to execute.</param>
        private void ExecuteNonQuery(CommandType commandType, string text)
        {
            if (String.IsNullOrEmpty(text))
                throw new ArgumentException("SQL text is null or empty.", "text");

            // 1) Create the Connection Object
            DbConnection conn = Factory.CreateConnection();
            conn.ConnectionString = ConnectionString;

            // 2) Create the Command Object
            DbCommand cmd = Factory.CreateCommand();
            cmd.Connection = conn;
            cmd.CommandType = commandType;
            cmd.CommandText = text;

            // 3) Open the connection to get & display the data
            using (cmd.Connection)
            {
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
            }
        }
        #endregion
    }
}