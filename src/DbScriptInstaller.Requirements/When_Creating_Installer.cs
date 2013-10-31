using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using Xunit;
using Xunit.Extensions;

namespace DbScriptInstaller.Requirements
{
    public class When_Creating_Installer
    {
        #region Instantiation Tests
        [Fact]
        public void Should_Create_From_ConnectionString()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ExpectedConnectionString);
            Assert.NotNull(Actual);
        }

        [Fact]
        public void Should_Create_From_ConnectionString_ProviderName()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ExpectedConnectionString, ExpectedProvider);
            Assert.NotNull(Actual);
        }

        [Fact]
        public void Should_Create_From_ConnectionString_ProviderFactory()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ExpectedConnectionString, ExpectedProviderFactory);
            Assert.NotNull(Actual);
        }

        [Fact]
        public void Should_Create_From_Parts_With_IntegratedSecurity()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ExpectedServer, ExpectedDatabase, ExpectedProvider);
            Assert.NotNull(Actual);
        }

        [Fact]
        public void Should_Create_From_Parts_With_User_Password()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ExpectedConnectionString, ExpectedDatabase, ExpectedUserId, ExpectedPassword, ExpectedProvider);
            Assert.NotNull(Actual);
        }
        #endregion

        #region Property Tests
        private IScriptInstaller Actual;

        private const string ExpectedServer = ".";
        private const string ExpectedDatabase = "Northwind";
        private const string ExpectedProvider = "System.Data.SqlClient";
        private const string ExpectedUserId = "sa";
        private const string ExpectedPassword = "password";
        private static string ExpectedConnectionString { get { return string.Format("Data Source={0};Initial Catalog={1};Integrated Security=true;", ExpectedServer, ExpectedDatabase); } }
        private static string ExpectedConnectionStringWithPassword { get { return string.Format("Data Source={0};Initial Catalog={1};UserId={2};Password={3};", ExpectedServer, ExpectedDatabase, ExpectedUserId, ExpectedPassword); } }
        private static DbProviderFactory ExpectedProviderFactory { get { return DbProviderFactories.GetFactory(ExpectedProvider); } }

        public static IEnumerable<object[]> TestInstallers
        {
            get
            {
                yield return new object[] { ScriptInstallerFactory.CreateInstaller(ExpectedConnectionString), ExpectedConnectionString, ExpectedProviderFactory };
                yield return new object[] { ScriptInstallerFactory.CreateInstaller(ExpectedConnectionString, ExpectedProvider), ExpectedConnectionString, ExpectedProviderFactory };
                yield return new object[] { ScriptInstallerFactory.CreateInstaller(ExpectedConnectionString, ExpectedProviderFactory), ExpectedConnectionString, ExpectedProviderFactory };
                yield return new object[] { ScriptInstallerFactory.CreateInstaller(ExpectedServer, ExpectedDatabase, ExpectedProvider), ExpectedConnectionString, ExpectedProviderFactory };
                yield return new object[] { ScriptInstallerFactory.CreateInstaller(ExpectedServer, ExpectedDatabase, ExpectedUserId, ExpectedPassword, ExpectedProvider), ExpectedConnectionStringWithPassword, ExpectedProviderFactory };
            }
        }

        [Theory]
        [PropertyData("TestInstallers")]
        public void Should_Set_ConnectionString(IScriptInstaller installer, string expectedConnectionString, DbProviderFactory expectedFactory)
        {
            Assert.Equal(expectedConnectionString, installer.ConnectionString);
        }

        [Theory]
        [PropertyData("TestInstallers")]
        public void Should_Set_ProviderFactory(IScriptInstaller installer, string expectedConnectionString, DbProviderFactory expectedFactory)
        {
            Assert.Equal(expectedFactory, installer.Factory);
        }
        #endregion
    }
}
