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
    public class RunnableScript
    {
        public string SQLScript { get; set; }
        public bool? Installed { get; set; }
        public string FailureMessage { get; set; }
    }
}
