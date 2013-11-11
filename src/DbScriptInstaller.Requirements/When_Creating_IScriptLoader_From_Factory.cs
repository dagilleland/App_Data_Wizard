using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Linq;
using System.Text;
using Xunit;
using Xunit.Extensions;

namespace DbScriptInstaller.Requirements
{
    public class When_Creating_IScriptLoader_From_Factory
    {
        [Fact]
        public void Should_Create_IScriptLoader()
        {
            ICollection<string> filePaths = new List<string>();
            filePaths.Add("");
            IScriptLoader loader = ScriptInstallerFactory.CreateLoader(filePaths);
            Assert.NotNull(loader);
        }

        [Fact]
        public void Should_Reject_Null_FilePaths()
        {
            Assert.Throws<ArgumentNullException>(() => ScriptInstallerFactory.CreateLoader(null));
        }

        [Fact]
        public void Should_Reject_Zero_FilePaths()
        {
            Assert.Throws<ArgumentException>(() => ScriptInstallerFactory.CreateLoader(new List<string>()));
        }
    }
}
