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

    // TODO: Re-instate these test for self-checking Requirements
    //public class When_Running_DDL_Scripts
    //{
    //}
    //public class Requirements_Self_Check
    //{
    //    private DbCommand Command
    //    {
    //        get
    //        {
    //            var setting = ConfigurationManager.ConnectionStrings["Country"];
    //            var factory = DbProviderFactories.GetFactory(setting.ProviderName);
    //            var conn = factory.CreateConnection();
    //            conn.ConnectionString = setting.ConnectionString;
    //            var cmd = factory.CreateCommand();
    //            cmd.Connection = conn;
    //            return cmd;
    //        }
    //    }

    //    [Fact(Skip="Incomplete")]
    //    public void Should_Have_Test_Database()
    //    {
            
    //    }

    //    [Theory(Skip="Incomplete")]
    //    [InlineData("")]
    //    public void Should_Have_Tables_In_Test_Database(string tableName)
    //    {
    //        throw new NotImplementedException();
    //    }
    //}
}
