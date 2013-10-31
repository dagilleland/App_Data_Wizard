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
    public interface IScriptInstaller
    {
        DbProviderFactory Factory { get; }
        string ConnectionString { get; }

        List<ScriptFile> Install(IEnumerable<RunnableScript> scripts);
        /// <summary>
        /// Processes a collection of script files to be run on the database.
        /// </summary>
        /// <param name="scriptFiles">A collection of complete file paths to SQL script files.</param>
        List<ScriptFile> Install(IEnumerable<string> scriptFiles);
        /// <summary>
        /// Simple test of whether we can connect to & execute scripts against the database
        /// </summary>
        /// <param name="exceptionMessage">Details of the exception, or an empty string</param>
        /// <returns>true if the database is accessible, false if it is not</returns>
        bool CanConnect(out string exceptionMessage);
    }
}
