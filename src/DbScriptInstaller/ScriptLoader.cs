using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DbScriptInstaller
{
    public class ScriptLoader : IScriptLoader
    {
        public ScriptLoader(ICollection<string> filePaths)
        {
            if (filePaths == null)
                throw new ArgumentNullException("filePaths", "filePaths is null.");
            if (filePaths.Count == 0)
                throw new ArgumentException("filePaths", "filePaths must have at least one file path.");

        }
    }
}
