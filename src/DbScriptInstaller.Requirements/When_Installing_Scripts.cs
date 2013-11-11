using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using Xunit;
using Xunit.Extensions;

namespace DbScriptInstaller.Requirements
{
    public class When_Installing_Scripts
    {
        private IScriptInstaller Actual;
        /// <summary>
        /// Initializes a new instance of the When_Install_Scripts class.
        /// </summary>
        public When_Installing_Scripts()
        {
            Actual = ScriptInstallerFactory.CreateInstaller(ConfigurationManager.ConnectionStrings["Country"]);
        }

        [Fact]
        public void Should_Accept_Collection_of_Scripts()
        {
            ICollection<string> scripts = new List<string>();
            scripts.Add("SELECT * FROM Countries");
            Assert.DoesNotThrow(() => Actual.Install(scripts));
        }

        [Fact]
        public void Should_Accept_Collection_of_RunnableScript()
        {
            ICollection<RunnableScript> runnableScripts = new List<RunnableScript>();
            runnableScripts.Add(new RunnableScript()
            {
                SQLScript = "SELECT * FROM Countries"
            });

            Assert.DoesNotThrow(() => Actual.Install(runnableScripts));
        }

        [Fact]
        public void Should_Accept_IScriptLoader()
        {
            // Arrange
            ICollection<string> filePaths = new List<string>();
            string path;
            string assemblyFile = (
                new System.Uri(Assembly.GetExecutingAssembly().CodeBase)
            ).AbsolutePath;

            path = Path.Combine(assemblyFile, @"TestScripts\CreateTables.sql");
            filePaths.Add(path);
            path = Path.Combine(assemblyFile,@"TestScripts\InstallData.sql");
            filePaths.Add(path);

            IScriptLoader loader = ScriptInstallerFactory.CreateLoader(null);

            // Act, Assert
            Assert.DoesNotThrow(() => Actual.Install(loader));
        }

        #region Validation/Contract Tests
        [Fact]
        public void Should_Reject_Null_IScriptLoader()
        {
            IScriptLoader loader = null;
            Assert.Throws<ArgumentNullException>(() => Actual.Install(loader));
        }
        [Fact]
        public void Should_Reject_Null_Collection_of_Scripts()
        {
            ICollection<string> scripts = null;
            Assert.Throws<ArgumentNullException>(() => Actual.Install(scripts));
        }
        [Fact]
        public void Should_Reject_Null_Collection_of_RunnableScript()
        {
            ICollection<RunnableScript> runnableScripts = null;
            Assert.Throws<ArgumentNullException>(() => Actual.Install(runnableScripts));
        }
        [Fact]
        public void Should_Reject_Zero_Scripts()
        {
            ICollection<string> scripts = new List<string>();
            Assert.Throws<ArgumentException>(() => Actual.Install(scripts));
        }
        [Fact]
        public void Should_Reject_Zero_RunnableScript()
        {
            ICollection<RunnableScript> runnableScripts = new List<RunnableScript>();
            Assert.Throws<ArgumentException>(() => Actual.Install(runnableScripts));
        }
        #endregion
    }
}
