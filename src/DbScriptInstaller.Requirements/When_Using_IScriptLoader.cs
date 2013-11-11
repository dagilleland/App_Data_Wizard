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
    public class When_Using_IScriptLoader
    {

        [Fact] // TODO: Change to [Theory]
        public void Should_Parse_Script_Files()
        {
            // Arrange
            ICollection<string> filePaths = new List<string>();
            string path;
            string assemblyFile = (
                new System.Uri(Assembly.GetExecutingAssembly().CodeBase)
            ).AbsolutePath;

            path = Path.Combine(Path.GetDirectoryName(assemblyFile), @"TestScripts\CreateTables.sql");
            filePaths.Add(path);

            IScriptLoader loader = ScriptInstallerFactory.CreateLoader(filePaths);

            // Act
            ICollection<RunnableScript> scripts = loader.Scripts;

            // Assert
            Assert.Equal(5, scripts.Count);
        }

        [Fact] // TODO: Change to [Theory]
        public void Should_Load_Script_Files()
        {
            throw new NotImplementedException();
        }
    }
}
