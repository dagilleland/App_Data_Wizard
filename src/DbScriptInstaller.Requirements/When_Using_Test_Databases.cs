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
    public class When_Using_Test_Databases
    {
        private IScriptInstaller Actual { get; set; }

        [Fact]
        public void Should_Connect_To_SqlServer_Database()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ConfigurationManager.ConnectionStrings["Country"]);
            string exceptionMessage;
            bool actualCanConnect = Actual.CanConnect(out exceptionMessage);

            Assert.True(actualCanConnect);
        }

        [Fact]
        public void Should_Report_No_Error_For_Connect_To_SqlServer_Database()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ConfigurationManager.ConnectionStrings["Country"]);
            string exceptionMessage;
            Actual.CanConnect(out exceptionMessage);

            Assert.Equal<string>(null, exceptionMessage);
        }
    }
}
