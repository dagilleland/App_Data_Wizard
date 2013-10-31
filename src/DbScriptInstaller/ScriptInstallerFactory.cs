// TODO: Add XML comments
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
    public class ScriptInstallerFactory
    {
        public const string DEFAULT_PROVIDER_NAME = "System.Data.SqlClient";

        public static IScriptInstaller CreateInstaller(string connectionString, string providerName)
        {
            return CreateInstaller(connectionString, DbProviderFactories.GetFactory(providerName));
        }

        public static IScriptInstaller CreateInstaller(string connectionString, DbProviderFactory dbProviderFactory)
        {
            return new ScriptInstaller(connectionString, dbProviderFactory);
        }

        public static IScriptInstaller CreateInstaller(string connectionString)
        {
            return CreateInstaller(connectionString, DEFAULT_PROVIDER_NAME);
        }
        public static IScriptInstaller CreateInstaller(string serverName, string databaseName, string providerName)
        {
            return CreateInstaller(string.Format("Data Source={0};Initial Catalog={1};Integrated Security=true;", serverName, databaseName), providerName);
        }
        public static IScriptInstaller CreateInstaller(string serverName, string databaseName, string userId, string password, string providerName)
        {
            return CreateInstaller(string.Format("Data Source={0};Initial Catalog={1};UserId={2};Password={3};", serverName, databaseName, userId, password), providerName);
        }
    }
}
