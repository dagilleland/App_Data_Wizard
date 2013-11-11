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
    public interface IScriptLoader
    {
        ICollection<RunnableScript> Scripts {get;}
        ICollection<ScriptFile> ScriptFiles {get;}
    }
}
