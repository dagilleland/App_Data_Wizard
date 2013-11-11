using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;

namespace DbScriptInstaller
{
    public class ScriptLoader : IScriptLoader
    {
        public ICollection<ScriptFile> ScriptFiles { get; private set; }

        public ICollection<RunnableScript> Scripts { get; private set; }

        public ScriptLoader(ICollection<string> filePaths)
        {
            if (filePaths == null)
                throw new ArgumentNullException("filePaths", "filePaths is null.");
            if (filePaths.Count == 0)
                throw new ArgumentException("filePaths", "filePaths must have at least one file path.");

            ScriptFiles = new List<ScriptFile>();
            Scripts = new List<RunnableScript>();
            foreach (string path in filePaths)
            {
                ScriptFile scriptFile = new ScriptFile()
                                {
                                    FilePath = path,
                                    ScriptBlocks = LoadAndParse(path)
                                };
                foreach (var script in scriptFile.ScriptBlocks)
                {
                    Scripts.Add(script);
                }
                ScriptFiles.Add(scriptFile);
            }
        }

        // Following line adapted from the DotNetNuke.Data.SqlDataProvider SqlDelimiterRegex property
        private static Regex SqlDelimiterRegex =
            new Regex(@"(?<=(?:[^\w]+|^))GO(?=(?: |\t)*?(?:\r?\n|$))",
                RegexOptions.Compiled | RegexOptions.IgnoreCase | RegexOptions.Multiline);

        private List<RunnableScript> LoadAndParse(string path)
        {
            string script = File.ReadAllText(path);
            string[] scripts = SqlDelimiterRegex.Split(script);
            List<RunnableScript> results = new List<RunnableScript>();
            foreach (string item in scripts)
            {
                RunnableScript thisScript = new RunnableScript();
                thisScript.SQLScript = item.Replace("\r\n", Environment.NewLine);
                results.Add(thisScript);
            }

            return results;
        }
    }
}
