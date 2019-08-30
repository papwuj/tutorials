# Cognos - Connections
You can report interactive user reports in Cognos Studio on the top of various data sources by creating relational and OLAP connections in web administration interface which are later used for data modeling in Framework Manager known as packages. All the reports and dashboards that are created in Cognos Studio they are published to Cognos Connection and portal for distribution. The report studio can be used to run the complex report and to view the Business Intelligence information or this can also be accessed from different portals where they are published.

Cognos Connections are used to access reports, queries, analysis, and packages. They can also be used to create report shortcuts, URLs and pages and to organize entries and they can also be customized for other use.

![Connections](../cognos/images/connections.jpg)

## Connecting Different Data Sources
A data source defines the physical connection to a database and different connection parameters like connection time out, location of database, etc. A data source connection contains credential and sign on information. You can create a new database connection or can also edit an existing data source connection.

You can also combine one or more data source connections and create packages and published them using Framework manager.

### Dynamic Query Mode
The dynamic query mode is used to provide communication to data source using XMLA/Java connections. To connect to the Relation database, you can use type4 JDBC connection which converts JDBC calls into vendor specific format. It provides improved performance over type 2 drivers because there is no need to convert calls to ODBC or database API. Dynamic query mode in Cognos connection can support the following types of Relational databases −

   * Microsoft SQL Server
   * Oracle
   * IBM DB2
   * Teradata
   * Netezza

To support OLAP data sources, Java/XMLA connectivity provides optimized and enhanced MDX for different OLAP versions and technology. The Dynamic query mode in Cognos can be used with the following OLAP data sources −

   * SAP Business Information Warehouse (SAP BW)
   * Oracle Essbase
   * Microsoft Analysis Services
   * IBM Cognos TM1
   * IBM Cognos Real-time Monitoring

### DB2 Data Sources
The DB2 connection type are used to connect to DB2 Windows, Unix and Linux, Db2 zOS, etc.

The common connection parameters used in DB2 data source includes −

   * Database Name
   * Timeouts
   * Signon
   * DB2 connect string
   * Collation Sequence

## Creating a Data Source Connection in IBM Cognos
To create models in IBM Cognos Framework Manager, there is a need to create a data source connection. When defining the data source connection, you need to enter the connection parameters – location of database, timeout interval, Sign-on, etc.

In IBM Cognos Connection → click on the **Launch IBM Cognos Administration**

![IBM Cognos Administration](../cognos/images/ibm_cognos_administration.jpg)

In the Configuration tab, click Data Source Connections. In this window, navigate to the **New Data Source button**.

![Configuration](../cognos/images/configuration.jpg)



![Data Source Connections](../cognos/images/data_source_connections.jpg)

Enter the unique connection name and description.

![New Data Source](../cognos/images/new_data_source.jpg)

You can add a description related to the data source to uniquely identify the connection and click the next button.

![New Data Source Wizard](../cognos/images/new_data_source_wizard.jpg)

Select the type of connection from the drop down list and click on the next button as shown in the following screenshot.

![Type of Connection](../cognos/images/type_of_connection.jpg)

In the next screen that appears, enter the connection details as shown in the following screenshot.

![Connection Details](../cognos/images/connection_details.jpg)

You can use the Test connection to test the connectivity to the data source using connection parameters that you have defined. Click on the finish button once done.

## Data Source Security Setup
Data Source Security can be defined using IBM Cognos authentication. As per the data source, different types of authentication can be configured in the Cognos connection −

**No Authentication** − This allows login to the data source without using any sign-on credentials. This type of connection doesn’t provide data source security in connection.

**IBM Cognos Software Service Credential** − In this type of a sign-on, you log in to the data source using a logon specified for the IBM Cognos Service and the user does not require a separate database sign-on. In a live environment, it is advisable to use individual database sign on.

**External Name Space** − It requires the same BI logon credentials that are used to authenticate the external authentication namespace. The user must be logged into the name space before logging in to the data source and it should be active.

![Signons](../cognos/images/signons.jpg)

All the data sources also support data source sign-on defined for everyone in the group or for individual users, group or roles. If the data source requires a data source sign-on, but you don't have the access to a sign-on for this data source, you will be prompted to log on each time you access the data source.

IBM Cognos also supports security at cube level. If you are using cubes, security may be set at the cube level. For **Microsoft Analysis Service**, security is defined at the cube level roles.


[Previous Page](../cognos/cognos_components_and_services.md) [Next Page](../cognos/cognos_packages.md) 
