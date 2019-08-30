# Apache Derby - Tools
Apache Derby provides you tools such as **sysinfo, ij** and, **dblook**.

## sysinfo tool
Using this tool, you can get information about Java and Derby environment.

Browse through the bin folder of Derby installation directory and execute the sysinfo command as shown below −

```
C:\Users\MY_USER>cd %DERBY_HOME%/bin
C:\Derby\bin>sysinfo
```
On executing, it gives you system information about java and derby as given below −

```
------------------ Java Information ------------------
Java Version: 1.8.0_101
Java Vendor: Oracle Corporation
Java home: C:\Program Files\Java\jdk1.8.0_101\jre
Java classpath: C:\Users\Tutorialspoint\Google
Drive\Office\Derby\derby_zip\New folder\db-derby-10.12.1.1-
bin\lib;C:\EXAMPLES_\Task\jars\*;C:\EXAMPLES\jars\mysql-connector-java-5.1.40-
bin.jar;C:\Users\Tutorialspoint\Google Drive\Office\37.Junit
Update\jars;C:\Program Files\Apache Software Foundation\Tomcat
8.5\lib\*;C:\Derby\lib\derby.jar;C:\Derby\lib\derbyclient.jar;C:\Derby\lib\derb
yLocale_cs.jar;C:\Derby\lib\derbyLocale_de_DE.jar;C:\Derby\lib\derbyLocale_es.j
ar;C:\Derby\lib\derbyLocale_fr.jar;C:\Derby\lib\derbyLocale_hu.jar;C:\Derby\lib
\derbyLocale_it.jar;C:\Derby\lib\derbyLocale_ja_JP.jar;C:\Derby\lib\derbyLocale
_ko_KR.jar;C:\Derby\lib\derbyLocale_pl.jar;C:\Derby\lib\derbyLocale_pt_BR.jar;C
:\Derby\lib\derbyLocale_ru.jar;C:\Derby\lib\derbyLocale_zh_CN.jar;C:\Derby\lib\
derbyLocale_zh_TW.jar;C:\Derby\lib\derbynet.jar;C:\Derby\lib\derbyoptionaltools
.jar;C:\Derby\lib\derbyrun.jar;C:\Derby\lib\derbytools.jar;;C:\Derby/lib/derby.
jar;C:\Derby/lib/derbynet.jar;C:\Derby/lib/derbyclient.jar;C:\Derby/lib/derbyto
ols.jar;C:\Derby/lib/derbyoptionaltools.jar
OS name: Windows 10
OS architecture: amd64
OS version: 10.0
Java user name: Tutorialspoint
Java user home: C:\Users\Tutorialspoint
Java user dir: C:\Derby\bin
java.specification.name: Java Platform API Specification
java.specification.version: 1.8
java.runtime.version: 1.8.0_101-b13
--------- Derby Information --------
[C:\Derby\lib\derby.jar] 10.14.2.0 - (1828579)
[C:\Derby\lib\derbytools.jar] 10.14.2.0 - (1828579)
[C:\Derby\lib\derbynet.jar] 10.14.2.0 - (1828579)
[C:\Derby\lib\derbyclient.jar] 10.14.2.0 - (1828579)
[C:\Derby\lib\derbyoptionaltools.jar] 10.14.2.0 - (1828579)
------------------------------------------------------
----------------- Locale Information -----------------
Current Locale : [English/United States [en_US]]
Found support for locale: [cs]
 version: 10.14.2.0 - (1828579)
Found support for locale: [de_DE]
 version: 10.14.2.0 - (1828579)
Found support for locale: [es]
 version: 10.14.2.0 - (1828579)
Found support for locale: [fr]
 version: 10.14.2.0 - (1828579)
Found support for locale: [hu]
 version: 10.14.2.0 - (1828579)
Found support for locale: [it]
 version: 10.14.2.0 - (1828579)
Found support for locale: [ja_JP]
 version: 10.14.2.0 - (1828579)
Found support for locale: [ko_KR]
 version: 10.14.2.0 - (1828579)
Found support for locale: [pl]
 version: 10.14.2.0 - (1828579)
Found support for locale: [pt_BR]
 version: 10.14.2.0 - (1828579)
Found support for locale: [ru]
 version: 10.14.2.0 - (1828579)
Found support for locale: [zh_CN]
 version: 10.14.2.0 - (1828579)
Found support for locale: [zh_TW]
 version: 10.14.2.0 - (1828579)
------------------------------------------------------
------------------------------------------------------
```
## ijtool
Using this tool, you can run scripts and queries of apache Derby.

Browse through the bin folder of Derby installation directory and execute the ij command as shown below −

```
C:\Users\MY_USER>cd %DERBY_HOME%/bin
C:\Derby\bin>ij
```
This will give you **ij shell** where you can execute derby command and scripts, as shown below −

```
ij version 10.14
ij>
```
Using **help** command, you can get the list of commands supported by this shell.

```
C:\Derby\bin>cd %DERBY_HOME%/bin
C:\Derby\bin>ij
ij version 10.14
ij> help;
Supported commands include:
 PROTOCOL 'JDBC protocol' [ AS ident ];
 -- sets a default or named protocol
 DRIVER 'class for driver'; -- loads the named class
 CONNECT 'url for database' [ PROTOCOL namedProtocol ] [ AS connectionName ];
 -- connects to database URL
 -- and may assign identifier
 SET CONNECTION connectionName; -- switches to the specified connection
 SHOW CONNECTIONS; -- lists all connections
 AUTOCOMMIT [ ON | OFF ]; -- sets autocommit mode for the connection
 DISCONNECT [ CURRENT | connectionName | ALL ];
 -- drop current, named, or all connections;
-- the default is CURRENT
 SHOW SCHEMAS; -- lists all schemas in the current database
 SHOW [ TABLES | VIEWS | PROCEDURES | FUNCTIONS | SYNONYMS ] { IN schema };
 -- lists tables, views, procedures, functions or
synonyms
 SHOW INDEXES { IN schema | FROM table };
 -- lists indexes in a schema, or for a table
 SHOW ROLES; -- lists all defined roles in the database,
sorted
 SHOW ENABLED_ROLES; -- lists the enabled roles for the current
 -- connection (to see current role use
 -- VALUES CURRENT_ROLE), sorted
 SHOW SETTABLE_ROLES; -- lists the roles which can be set for the
 -- current connection, sorted
 DESCRIBE name; -- lists columns in the named table
 COMMIT; -- commits the current transaction
 ROLLBACK; -- rolls back the current transaction
 PREPARE name AS 'SQL-J text'; -- prepares the SQL-J text
 EXECUTE { name | 'SQL-J text' } [ USING { name | 'SQL-J text' } ] ;
 -- executes the statement with parameter
-- values from the USING result set row
 REMOVE name; -- removes the named previously prepared
statement
 RUN 'filename'; -- run commands from the named file
 ELAPSEDTIME [ ON | OFF ]; -- sets elapsed time mode for ij
 MAXIMUMDISPLAYWIDTH integerValue;
 -- sets the maximum display width for
-- each column to integerValue
 ASYNC name 'SQL-J text'; -- run the command in another thread
 WAIT FOR name; -- wait for result of ASYNC'd command
 HOLDFORCONNECTION; -- sets holdability for a connection to HOLD
 -- (i.e. ResultSet.HOLD_CURSORS_OVER_COMMIT)
 NOHOLDFORCONNECTION; -- sets holdability for a connection to NO HOLD
 -- (i.e. ResultSet.CLOSE_CURSORS_AT_COMMIT)
 GET [SCROLL INSENSITIVE] [WITH { HOLD | NOHOLD }] CURSOR name AS 'SQL-J
query';
 -- gets a cursor (JDBC result set) on the query
-- the default is a forward-only cursor with
holdability
 NEXT name; -- gets the next row from the named cursor
 FIRST name; -- gets the first row from the named scroll
cursor
 LAST name; -- gets the last row from the named scroll
cursor
 PREVIOUS name; -- gets the previous row from the named scroll
cursor
 ABSOLUTE integer name; -- positions the named scroll cursor at the
absolute row number
 -- (A negative number denotes position from the
last row.)
 RELATIVE integer name; -- positions the named scroll cursor relative to
the current row
 -- (integer is number of rows)
 AFTER LAST name; -- positions the named scroll cursor after the
last row
 BEFORE FIRST name; -- positions the named scroll cursor before the
first row
 GETCURRENTROWNUMBER name; -- returns the row number for the current
position of the named scroll cursor
 -- (0 is returned when the cursor is not
positioned on a row.)
 CLOSE name; -- closes the named cursor
 LOCALIZEDDISPLAY [ ON | OFF ];
 -- controls locale sensitive data representation
 EXIT; -- exits ij
 HELP; -- shows this message
Any unrecognized commands are treated as potential SQL-J commands and executed
directly.
```
## dblooktool
This tool is used to generate Data Definition Language.

Browse through the bin folder of Derby installation directory and execute the **dblook** command as shown below −

```
C:\Users\MY_USER>cd %DERBY_HOME%/bin
C:\Derby\bin>dblook -d myURL
```
Where, **myURL** is the connection URL of the database for which you need to generate DDL.


[Previous Page](../apache_derby/apache_derby_environment_setup.md) [Next Page](../apache_derby/apache_derby_syntax.md) 
