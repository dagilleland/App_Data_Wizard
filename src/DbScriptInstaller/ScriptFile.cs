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
    public class ScriptFile
    {
        public List<RunnableScript> ScriptBlocks { get; set; }
        public string FilePath { get; set; }
        public string FileName { get { return Path.GetFileName(FilePath); } }
    }
}
