# MySQLi - Quick Guide
# MySQLi - Introduction
## What is Database?
A database is a separate application that stores a collection of data. Each database has one or more distinct APIs for creating, accessing, managing, searching and replicating the data it holds.

Other kinds of data stores can be used, such as files on the file system or large hash tables in memory but data fetching and writing would not be so fast and easy with those types of systems.

So nowadays, we use relational database management systems (RDBMS) to store and manage huge volume of data. This is called relational database because all the data is stored into different tables and relations are established using primary keys or other keys known as foreign keys.

A **Relational DataBase Management System (RDBMS)** is a software that −

   * Enables you to implement a database with tables, columns and indexes.
   * Guarantees the Referential Integrity between rows of various tables.
   * Updates the indexes automatically.
   * Interprets an SQL query and combines information from various tables.

## RDBMS Terminology
Before we proceed to explain MySQLi database system, let's revise few definitions related to database.

   * **Database** − A database is a collection of tables, with related data.
   * **Table** − A table is a matrix with data. A table in a database looks like a simple spreadsheet.
   * **Column** − One column (data element) contains data of one and the same kind, for example the column postcode.
   * **Row** − A row (= tuple, entry or record) is a group of related data, for example the data of one subscription.
   * **Redundancy** − Storing data twice, redundantly to make the system faster.
   * **Primary Key** − A primary key is unique. A key value can not occur twice in one table. With a key, you can find at most one row. 
   * **Foreign Key** − A foreign key is the linking pin between two tables.
   * **Compound Key** − A compound key (composite key) is a key that consists of multiple columns, because one column is not sufficiently unique.
   * **Index** − An index in a database resembles an index at the back of a book.
   * **Referential Integrity** − Referential Integrity makes sure that a foreign key value always points to an existing row.

## MySQLi Database
MySQLi is a fast, easy-to-use RDBMS being used for many small and big businesses. MySQLi Extension is developed, marketed, and supported by MySQL. MySQL is becoming so popular because of many good reasons −

   * MySQLi is released under an open-source license. So you have nothing to pay to use it.
   * MySQLi is a very powerful program in its own right. It handles a large subset of the functionality of the most expensive and powerful database packages.
   * MySQLi uses a standard form of the well-known SQL data language.
   * MySQLi works on many operating systems and with many languages including PHP, PERL, C, C++, JAVA, etc.
   * MySQLi works very quickly and works well even with large data sets.
   * MySQLi is very friendly to PHP, the most appreciated language for web development.
   * MySQLi supports large databases, up to 50 million rows or more in a table. The default file size limit for a table is 4GB, but you can increase this (if your operating system can handle it) to a theoretical limit of 8 million terabytes (TB).
   * MySQLi is customizable. The open-source GPL license allows programmers to modify the MySQL software to fit their own specific environments.

## Before You Begin
Before you begin this tutorial, you should have a basic knowledge of the information covered in our PHP and HTML tutorials.

This tutorial focuses heavily on using MySQLi in a PHP environment. Many examples given in this tutorial will be useful for PHP Programmers.

We recommend you check our [PHP Tutorial](/php/index.htm)  for your reference.

# MySQLi - Installation
## Downloading MySQL
The MySQLi extension is designed to work with MySQL version 4.1.13 or newer, So have to download MySQL. All downloads for MySQL are located at [MySQL Downloads](https://www.mysql.com/downloads) . Pick the latest version number for  you want and, as exactly as possible, the platform you want.

## Installing MySQL on Linux/UNIX
The recommended way to install MySQL on a Linux system is via RPM. MySQL AB makes the following RPMs available for download on its web site −

   * **MySQL** − The MySQL database server, which manages databases and tables, controls user access, and processes SQL queries.
   * **MySQL-client** − MySQL client programs, which make it possible to connect to and interact with the server.
   * **MySQL-devel** − Libraries and header files that come in handy when compiling other programs that use MySQL.
   * **MySQL-shared** − Shared libraries for the MySQL client.
   * **MySQL-bench** − Benchmark and performance testing tools for the MySQL database server.

The MySQL RPMs listed here are all built on a SuSE Linux system, but they'll usually work on other Linux variants with no difficulty.

Now, follow the following steps to proceed for installation −

   * Login to the system using **root** user.
   * Switch to the directory containing the RPMs −
   * Install the MySQL database server by executing the following command. Remember to replace the filename in italics with the file name of your RPM.

```
[root@host]# rpm -i MySQL-5.0.9-0.i386.rpm
```
   * Above command takes care of installing MySQL server, creating a user of MySQL, creating necessary configuration and starting MySQL server automatically.
   * You can find all the MySQL related binaries in /usr/bin and /usr/sbin. All the tables and databases will be created in /var/lib/mysql directory.
   * This is optional but recommended step to install the remaining RPMs in the same manner −

```
[root@host]# rpm -i MySQL-client-5.0.9-0.i386.rpm
[root@host]# rpm -i MySQL-devel-5.0.9-0.i386.rpm
[root@host]# rpm -i MySQL-shared-5.0.9-0.i386.rpm
[root@host]# rpm -i MySQL-bench-5.0.9-0.i386.rpm
```
## Installing MySQL on Windows
Default installation on any version of Windows is now much easier than it used to be, as MySQL now comes neatly packaged with an installer. Simply download the installer package, unzip it anywhere, and run setup.exe.

Default installer setup.exe will walk you through the trivial process and by default will install everything under C:\mysql.

Test the server by firing it up from the command prompt the first time. Go to the location of the mysqld server which is probably C:\mysql\bin, and type −

```
mysqld.exe --console
```
**NOTE** − If you are on NT, then you will have to use mysqld-nt.exe instead of mysqld.exe

If all went well, you will see some messages about startup and InnoDB. If not, you may have a permissions issue. Make sure that the directory that holds your data is accessible to whatever user (probably mysql) the database processes run under.

MySQL will not add itself to the start menu, and there is no particularly nice GUI way to stop the server either. Therefore, if you tend to start the server by double clicking the mysqld executable, you should remember to halt the process by hand by using mysqladmin, Task List, Task Manager, or other Windows-specific means.

## Verifying MySQL Installation
After MySQL has been successfully installed, the base tables have been initialized, and the server has been started, you can verify that all is working as it should via some simple tests.

## Use the mysqladmin Utility to Obtain Server Status
Use **mysqladmin** binary to check server version. This binary would be available in /usr/bin on linux and in C:\mysql\bin on windows.

```
[root@host]# mysqladmin --version
```
It will produce the following result on Linux. It may vary depending on your installation −

```
mysqladmin  Ver 8.23 Distrib 5.0.9-0, for redhat-linux-gnu on i386
```
If you do not get such message, then there may be some problem in your installation and you would need some help to fix it.

## Execute simple SQL commands using MySQL Client
You can connect to your MySQL server by using MySQL client using **mysql** command. At this moment, you do not need to give any password as by default it will be set to blank.

So just use following command

```
[root@host]# mysql
```
It should be rewarded with a mysql&gt; prompt. Now, you are connected to the MySQL server and you can execute all the SQL command at mysql&gt; prompt as follows −

```
mysql> SHOW DATABASES;
+----------+
| Database |
+----------+
| mysql    |
| test     |
+----------+
2 rows in set (0.13 sec)
```
## Post-installation Steps
MySQL ships with a blank password for the root MySQL user. As soon as you have successfully installed the database and client, you need to set a root password as follows −

```
[root@host]# mysqladmin -u root password "new_password";
```
Now to make a connection to your MySQL server, you would have to use the following command −

```
[root@host]# mysql -u root -p
Enter password:*******
```
UNIX users will also want to put your MySQL directory in your PATH, so you won't have to keep typing out the full path every time you want to use the command-line client. For bash, it would be something like −

```
export PATH = $PATH:/usr/bin:/usr/sbin
```
## Running MySQL at boot time
If you want to run MySQL server at boot time, then make sure you have following entry in /etc/rc.local file.

```
/etc/init.d/mysqld start
```
Also,you should have mysqld binary in /etc/init.d/ directory.

# MySQLi - Administration
## Running and Shutting down MySQLi Server
MySQLi is extended of MySQL so first check if your MySQL server is running or not. You can use the following command to check this −

```
ps -ef | grep mysqld
```
If your MySql is running, then you will see **mysqld** process listed out in your result. If server is not running, then you can start it by using the following command−

```
root@host# cd /usr/bin
./safe_mysqld &
```
Now, if you want to shut down an already running MySQL server, then you can do it by using the following command −

```
root@host# cd /usr/bin
./mysqladmin -u root -p shutdown
Enter password: ******
```
## Setting Up a MySQLi User Account
For adding a new user to MySQLi Which is improved version of MySQL, you just need to add a new entry to **user** table in database **mysql**.

Below is an example of adding new user **guest** with SELECT, INSERT and UPDATE privileges with the password **guest123**; the SQL query is −

```
root@host# mysql -u root -p
Enter password:*******
mysql> use mysql;
Database changed

mysql> INSERT INTO user (
   host, user, password, select_priv, insert_priv, update_priv) 
   VALUES ('localhost', 'guest', PASSWORD('guest123'), 'Y', 'Y', 'Y');

Query OK, 1 row affected (0.20 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 1 row affected (0.01 sec)

mysql> SELECT host, user, password FROM user WHERE user = 'guest';
+-----------+---------+------------------+
| host      | user    | password         |
+-----------+---------+------------------+
| localhost | guest | 6f8c114b58f2ce9e |
+-----------+---------+------------------+
1 row in set (0.00 sec)
```
When adding a new user, remember to encrypt the new password using PASSWORD() function provided by MySQL. As you can see in the above example the password mypass is encrypted to 6f8c114b58f2ce9e.

Notice the FLUSH PRIVILEGES statement. This tells the server to reload the grant tables. If you don't use it, then you won't be able to connect to mysql using the new user account at least until the server is rebooted.

You can also specify other privileges to a new user by setting the values of following columns in user table to 'Y' when executing the INSERT query or you can update them later using UPDATE query.

   * Select_priv
   * Insert_priv
   * Update_priv
   * Delete_priv
   * Create_priv
   * Drop_priv
   * Reload_priv
   * Shutdown_priv
   * Process_priv
   * File_priv
   * Grant_priv
   * References_priv
   * Index_priv
   * Alter_priv

Another way of adding user account is by using GRANT SQL command; following example will add user **zara** with password **zara123** for a particular database called **TUTORIALS**.

```
root@host# mysql -u root -p password;
Enter password:*******
mysql> use mysql;
Database changed

mysql> GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP
   -> ON TUTORIALS.*
   -> TO 'zara'@'localhost'
   -> IDENTIFIED BY 'zara123';
```
This will also create an entry in mysql database table called **user**.

**NOTE** − MySQL does not terminate a command until you give a semi colon (;) at the end of SQL command.

## The /etc/my.cnf File Configuration
Most of the cases, you should not touch this file. By default, it will have the following entries −

```
[mysqld]
datadir = /var/lib/mysql
socket = /var/lib/mysql/mysql.sock

[mysql.server]
user = mysql
basedir = /var/lib

[safe_mysqld]
err-log = /var/log/mysqld.log
pid-file = /var/run/mysqld/mysqld.pid
```
Here, you can specify a different directory for error log, otherwise you should not change any entry in this table.

## Administrative MySQLi Command
Here is the list of important MySQLi commands, which you will use time to time to work with MySQL database −

   * **USE Databasename** − This will be used to select a particular database in MySQLi workarea.
   * **SHOW DATABASES** − Lists the databases that are accessible by the MySQLi DBMS.
   * **SHOW TABLES** − Shows the tables in the database once a database has been selected with the use command.
   * **SHOW COLUMNS FROM tablename** − Shows the attributes, types of attributes, key information, whether NULL is permitted, defaults, and other information for a table.
   * **SHOW INDEX FROM tablename** − Presents the details of all indexes on the table, including the PRIMARY KEY.
   * **SHOW TABLE STATUS LIKE tablename\G** − Reports details of the MySQLi DBMS performance and statistics.

# MySQLi - PHP Syntax
MySQLi works very well in combination of various programming languages like PERL, C, C++, JAVA and PHP. Out of these languages, PHP is the most popular one because of its web application development capabilities.

This tutorial focuses heavily on using MySQLi in a PHP environment. PHP provides various functions to access MySQLi database and to manipulate data records inside MySQLi database. You would require to call PHP functions in the same way you call any other PHP function.

The PHP functions for use with MySQLi have the following general format −

```
mysqli_function(value,value,...);
```
The second part of the function name is specific to the function, usually a word that describes what the function does. The following are two of the functions, which we will use in our tutorial −

```
mysqli_connect($connect);
mysqli_query($connect,"SQL statement");
```
Following example shows a generic syntax of PHP to call any MySQLi function.

```
<html>
   <head>
      <title>PHP with MySQLi</title>
   </head>
   
   <body>
      <?php
         $retval = mysqli_function(value, [value,...]);
         if( !$retval ){
            die ( "Error: a related error message" );
         }
         // Otherwise MySQLi  or PHP Statements
      ?>
   </body>
</html>
```
Starting from next chapter, we will see all the important MySQLi functionality along with PHP.

# MySQLi - Connection
## MySQLi Connection using mysql binary
You can establish MySQLi database using **mysql** binary at command prompt.

### Example
Here is a simple example to connect to MySQL server to establish mysqli database from command prompt −

```
[root@host]# mysql -u root -p
Enter password:******
```
This will give you mysql&gt; command prompt where you will be able to execute any SQL command. Following is the result of above command −

```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2854760 to server version: 5.0.9

Type 'help;' or '\h' for help. Type '\c' to clear the buffer.
```
In above example, we have used **root** as a user but you can use any other user. Any user will be able to perform all the SQL operations, which are allowed to that user.

You can disconnect from MySQL database any time using **exit** command at mysql&gt; prompt.

```
mysql> exit
Bye
```
## MySQLi Connection using PHP Script
PHP provides **mysqli_connect()** function to open a database connection. This function takes five parameters and returns a MySQLi link identifier on success or FALSE on failure.

### Syntax
```
connection mysqli_connect(server,user,passwd,new_link,client_flag);
```


You can disconnect from MySQLi database anytime using another PHP function **mysqli_close()**. This function takes a single parameter, which is a connection returned by **mysqli_connect()** function.

### Syntax
```
bool mysqli_close ( resource $link_identifier );
```
If a resource is not specified then last opened database is closed. This function returns true if it closes connection successfully otherwise it returns false.

### Example
Try out the following example to connect to a MySQL server −

```
<html>
   <head>
      <title>Connecting MySQLi Server</title>
   </head>
   
   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'guest';
         $dbpass = 'guest123';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
   
         if(! $conn ){
            die('Could not connect: ' . mysqli_error());
         }
         echo 'Connected successfully';
         mysqli_close($conn);
      ?>
   </body>
</html>
```
If above example is connected with MySQLi, then the output should be like this on your browser −

```
Connected successfully
```
# MySQLi - Create Database
## Create Database using mysqladmin
You would need special privileges to create or to delete a MySQLi database. So assuming you have access to root user, you can create any database using mysql **mysqladmin** binary.

### Example
Here is a simple example to create database called **TUTORIALS** −

```
[root@host]# mysqladmin -u root -p create TUTORIALS
Enter password:******
```
This will create a MySQLi database TUTORIALS.

## Create Database using PHP Script
PHP uses **mysqli_query** function to create or delete a MySQLi database. This function takes two parameters and returns TRUE on success or FALSE on failure.

### Example
Try out the following example to create a database −

```
<html>
   <head>
      <title>Connecting MySQLi Server</title>
   </head>
   
   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'root';
         $dbpass = '<password here>';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
   
         if(! $conn ){
            echo 'Connected failure<br>';
         }
         echo 'Connected successfully<br>';
         $sql = "CREATE DATABASE TUTORIALS";
         
         if (mysqli_query($conn, $sql)) {
            echo "Database created successfully";
         } else {
            echo "Error creating database: " . mysqli_error($conn);
         }
         mysqli_close($conn);
      ?>
   </body>
</html>
```
If connected and created database successfully,then the sample output should be like this −

```
Connected successfully
Database created successfully
```
# MySQLi - Drop Database
## Drop Database using mysqladmin
You would need special privileges to create or to delete a MySQLi database. So assuming you have access to root user, you can create any database using mysql **mysqladmin** binary.

Be careful while deleting any database because you will lose your all the data available in your database.

Here is an example to delete a database created in previous chapter −

```
[root@host]# mysqladmin -u root -p drop TUTORIALS
Enter password:******
```
This will give you a warning and it will confirm if you really want to delete this database or not.

```
Dropping the database is potentially a very bad thing to do.
Any data stored in the database will be destroyed.

Do you really want to drop the 'TUTORIALS' database [y/N] y
Database "TUTORIALS" dropped
```
## Drop Database using PHP Script
PHP uses **query** function to create or delete a MySQLi database. This function takes two parameters and returns TRUE on success or FALSE on failure.

### Example
Try out the following example to delete a database −

```
<html>
   <head>
      <title>Connecting MySQLi Server>/title>
   </head>
   
   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'root';
         $dbpass = '<Password Here>';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
         
         if(! $conn ){
            echo 'Connected failure<br>';
         }
         echo 'Connected successfully<br>';
         $sql = "DROP DATABASE TUTORIALS";
         
         if (mysqli_query($conn, $sql)) {
         echo "Record deleted successfully";
         } else {
            echo "Error deleting record: " . mysqli_error($conn);
         }
         mysqli_close($conn);
      ?>
   </body>
</html>
```
**WARNING** − While deleting a database using PHP script, it does not prompt you for any confirmation. So be careful while deleting a MySQLi database.

If connected and deleted database successfully,then the sample output should be like this −

```
Connected successfully
Database deleted successfully
```
# MySQLi - Select Database
Once you get connection with MySQLi server, it is required to select a particular database to work with. This is because there may be more than one database available with MySQLi Server.

## Syntax
```
bool mysqli_select_db( db_name, connection );
```


## Example
Here is the example showing you how to select a database.

```
<html>
   <head>
      <title>Connecting MySQLi Server</title>
   </head>

   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'root';
         $dbpass = '<Password Here>';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
   
         if(! $conn ) {
            echo 'Connected failure<br>';
         }
         echo 'Connected successfully<br>';
         mysqli_select_db( 'TUTORIALS' );
   
         //Write some code here
         mysqli_close($conn);
      ?>
   </body>
</html>
```
If connected and Selected database successfully,then the sample output should be like this −

```
Connected successfully
```
# MySQLi - Data Types
Properly defining the fields in a table is important to the overall optimization of your database. You should use only the type and size of field you really need to use; don't define a field as 10 characters wide if you know you're only going to use 2 characters. These types of fields (or columns) are also referred to as data types, after the **type of data** you will be storing in those fields.

MySQLi uses many different data types broken into three categories: numeric, date and time, and string types.

## Numeric Data Types
MySQLi uses all the standard ANSI SQL numeric data types, so if you're coming to MySQLi from a different database system, these definitions will look familiar to you. The following list shows the common numeric data types and their descriptions −

   * **INT** − A normal-sized integer that can be signed or unsigned. If signed, the allowable range is from -2147483648 to 2147483647. If unsigned, the allowable range is from 0 to 4294967295. You can specify a width of up to 11 digits.
   * **TINYINT** − A very small integer that can be signed or unsigned. If signed, the allowable range is from -128 to 127. If unsigned, the allowable range is from 0 to 255. You can specify a width of up to 4 digits.
   * **SMALLINT** − A small integer that can be signed or unsigned. If signed, the allowable range is from -32768 to 32767. If unsigned, the allowable range is from 0 to 65535. You can specify a width of up to 5 digits.
   * **MEDIUMINT** − A medium-sized integer that can be signed or unsigned. If signed, the allowable range is from -8388608 to 8388607. If unsigned, the allowable range is from 0 to 16777215. You can specify a width of up to 9 digits.
   * **BIGINT** − A large integer that can be signed or unsigned. If signed, the allowable range is from -9223372036854775808 to 9223372036854775807. If unsigned, the allowable range is from 0 to 18446744073709551615. You can specify a width of up to 20 digits.
   * **FLOAT(M,D)** − A floating-point number that cannot be unsigned. You can define the display length (M) and the number of decimals (D). This is not required and will default to 10,2, where 2 is the number of decimals and 10 is the total number of digits (including decimals). Decimal precision can go to 24 places for a FLOAT.
   * **DOUBLE(M,D)** − A double precision floating-point number that cannot be unsigned. You can define the display length (M) and the number of decimals (D). This is not required and will default to 16,4, where 4 is the number of decimals. Decimal precision can go to 53 places for a DOUBLE. REAL is a synonym for DOUBLE.
   * **DECIMAL(M,D)** − An unpacked floating-point number that cannot be unsigned. In unpacked decimals, each decimal corresponds to one byte. Defining the display length (M) and the number of decimals (D) is required. NUMERIC is a synonym for DECIMAL.

## Date and Time Types
The MySQL date and time datatypes are −

   * **DATE** − A date in YYYY-MM-DD format, between 1000-01-01 and 9999-12-31. For example, December 30th, 1973 would be stored as 1973-12-30.
   * **DATETIME** − A date and time combination in YYYY-MM-DD HH:MM:SS format, between 1000-01-01 00:00:00 and 9999-12-31 23:59:59. For example, 3:30 in the afternoon on December 30th, 1973 would be stored as 1973-12-30 15:30:00.
   * **TIMESTAMP** − A timestamp between midnight, January 1, 1970 and sometime in 2037. This looks like the previous DATETIME format, only without the hyphens between numbers; 3:30 in the afternoon on December 30th, 1973 would be stored as 19731230153000 ( YYYYMMDDHHMMSS ).
   * **TIME** − Stores the time in HH:MM:SS format.
   * **YEAR(M)** − Stores a year in 2-digit or 4-digit format. If the length is specified as 2 (for example YEAR(2)), YEAR can be 1970 to 2069 (70 to 69). If the length is specified as 4, YEAR can be 1901 to 2155. The default length is 4.

## String Types
Although numeric and date types are fun, most data you'll store will be in string format. This list describes the common string datatypes in MySQLi.

   * **CHAR(M)** − A fixed-length string between 1 and 255 characters in length (for example CHAR(5)), right-padded with spaces to the specified length when stored. Defining a length is not required, but the default is 1.
   * **VARCHAR(M)** − A variable-length string between 1 and 255 characters in length; for example VARCHAR(25). You must define a length when creating a VARCHAR field.
   * **BLOB or TEXT** − A field with a maximum length of 65535 characters. BLOBs are "Binary Large Objects" and are used to store large amounts of binary data, such as images or other types of files. Fields defined as TEXT also hold large amounts of data; the difference between the two is that sorts and comparisons on stored data are case sensitive on BLOBs and are not case sensitive in TEXT fields. You do not specify a length with BLOB or TEXT.
   * **TINYBLOB or TINYTEXT** − A BLOB or TEXT column with a maximum length of 255 characters. You do not specify a length with TINYBLOB or TINYTEXT.
   * **MEDIUMBLOB or MEDIUMTEXT** − A BLOB or TEXT column with a maximum length of 16777215 characters. You do not specify a length with MEDIUMBLOB or MEDIUMTEXT.
   * **LONGBLOB or LONGTEXT** − A BLOB or TEXT column with a maximum length of 4294967295 characters. You do not specify a length with LONGBLOB or LONGTEXT.
   * **ENUM** − An enumeration, which is a fancy term for list. When defining an ENUM, you are creating a list of items from which the value must be selected (or it can be NULL). For example, if you wanted your field to contain "A" or "B" or "C", you would define your ENUM as ENUM ('A', 'B', 'C') and only those values (or NULL) could ever populate that field.

# MySQLi - Create Tables
The table creation command requires −

   * Name of the table
   * Names of fields
   * Definitions for each field

## Syntax
Here is generic SQL syntax to create a MySQLi table −

```
CREATE TABLE table_name (column_name column_type);
```
Now, we will create following table in **TUTORIALS** database.

```
CREATE TABLE tutorials_inf(
   id INT AUTO_INCREMENT,
   name VARCHAR(20) NOT NULL,
   primary key (id),
);
```
Here few items need explanation −

   * Field Attribute **NOT NULL** is being used because we do not want this field to be NULL. So if user will try to create a record with NULL value, then MySQLi will raise an error.
   * Field Attribute **AUTO_INCREMENT** tells MySQLi to go ahead and add the next available number to the id field.
   * Keyword **PRIMARY KEY** is used to define a column as primary key. You can use multiple columns separated by comma to define a primary key.

## Creating Tables from Command Prompt
This is easy to create a MySQLi table from mysql&gt; prompt. You will use SQL command **CREATE TABLE** to create a table.

### Example
Here is an example, which creates **tutorials_tbl** −

```
root@host# mysql -u root -p
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> CREATE TABLE tutorials_inf(
   id INT AUTO_INCREMENT,name VARCHAR(20) NOT NULL,primary key (id));
Query OK, 0 rows affected (0.16 sec)

mysql>
```
**NOTE** − MySQLi does not terminate a command until you give a semicolon (;) at the end of SQL command.

## Creating Tables Using PHP Script
To create new table in any existing database you would need to use PHP function **mysqli_query()**. You will pass its second argument with proper SQL command to create a table.

### Example
Here is an example to create a table using PHP script −

```
<html>
   <head>
      <title>Creating MySQLi Tables</title>
   </head>
   
   <body>
      <?php  
         $host = 'localhost:3306';  
         $user = 'root';  
         $pass = '<Password Here>';  
         $dbname = 'TUTORIALS';  
         $conn = mysqli_connect($host, $user, $pass,$dbname);  
         
         if(!$conn){  
            die('Could not connect: '.mysqli_connect_error());  
         }  
         echo 'Connected successfully<br/>';  
  
         $sql = "create table tutorials_inf(
            id INT AUTO_INCREMENT,name VARCHAR(20) NOT NULL,primary key (id))";  
         
         if(mysqli_query($conn, $sql)){  
         echo "Table created successfully";  
         } else {  
            echo "Table is not created successfully ";  
         }  
         mysqli_close($conn);  
      ?>  
   </body>
</html>
```
The sample output should be like this −

```
Connected successfully
Table created successfully
```
# MySQLi - Drop Tables
It is very easy to drop an existing MySQLi table, but you need to be very careful while deleting any existing table because data lost will not be recovered after deleting a table.

## Syntax
Here is generic SQL syntax to drop a MySQLi table −

```
DROP TABLE table_name ;
```
## Dropping Tables from Command Prompt
This needs just to execute **DROP TABLE** SQL command at mysql&gt; prompt.

### Example
Here is an example, which deletes **tutorials_inf** −

```
root@host# mysql -u root -p
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> DROP TABLE tutorials_inf
Query OK, 0 rows affected (0.8 sec)

mysql>
```
## Dropping Tables Using PHP Script
To drop an existing table in any database, you would need to use PHP function **mysqli_query()**. You will pass its second argument with proper SQL command to drop a table.

### Example
```
<html>
   <head>
      <title>Dropping MySQLi Tables</title>
   </head>
   
   <body>
      <?php  
         $host = 'localhost:3306';  
         $user = 'root';  
         $pass = '';  
         $dbname = 'TUTORIALS';  
         $conn = mysqli_connect($host, $user, $pass,$dbname);  
         
         if(!$conn) {  
            die('Could not connect: '.mysqli_connect_error());  
         }  
         echo 'Connected successfully<br/>';  
         $sql = "DROP TABLE tutorials_inf";
         
         if(mysqli_query($conn, $sql)) {  
            echo "Table is deleted successfully";  
         } else {  
            echo "Table is not deleted successfully\n";
         }  
         mysqli_close($conn);  
      ?>  
   </body>
</html>
```
The sample output should be like this −

```
Connected successfully
Table is deleted successfully
```
# MySQLi - Insert Query
To insert data into MySQLi table, you would need to use SQL **INSERT INTO** command. You can insert data into MySQLi table by using mysql&gt; prompt or by using any script like PHP.

## Syntax
Here is generic SQL syntax of INSERT INTO command to insert data into MySQLi table:

```
INSERT INTO table_name 
   ( field1, field2,...fieldN )
   VALUES
   ( value1, value2,...valueN );
```
To insert string data types, it is required to keep all the values into double or single quote, for example:- **"value"**.

## Inserting Data from Command Prompt
This will use SQL INSERT INTO command to insert data into MySQLi table tutorials_inf.

### Example
Following example will create 3 records into **tutorials_tbl** table −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> INSERT INTO tutorials_inf 
   ->(id, name)
   ->VALUES
   ->(10, "John Poul");
Query OK, 1 row affected (0.01 sec)
```
**NOTE** − Please note that all the arrow signs (-&gt;) are not part of SQL command; they are indicating a new line and they are created automatically by MySQL prompt while pressing enter key without giving a semicolon at the end of each line of the command.

## Inserting Data Using PHP Script
You can use same SQL INSERT INTO command into PHP function **mysqli_query()** to insert data into a MySQLi table.

### Example
This example will take three parameters from user and will insert them into MySQLi table −

```
<html>
   <head>
      <title>Add New Record in MySQLi Database</title>
      <link rel = "stylesheet" type = "text/css" href = "style.css">
   </head>
   
   <body>
      <div id = "main">
         <form action = "" method = "post">
            <label>Name :</label>
            <input type = "text" name = "name" id = "name" />
            <br />
            <br />
            <input type = "submit" value ="Submit" name = "submit"/>
            <br />
         </form>
      </div>
      
      <?php
         if(isset($_POST["submit"])){
            $servername = "localhost:3306";
            $username = "root";
            $password = "<Password here>";
            $dbname = "TUTORIALS";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
               die("Connection failed: " . $conn->connect_error);
            } 
            $sql = "INSERT INTO tutorials_inf(name)VALUES ('".$_POST["name"]."')";

            if (mysqli_query($conn, $sql)) {
               echo "New record created successfully";
            } else {
               echo "Error: " . $sql . "" . mysqli_error($conn);
            }
            $conn->close();
         }
      ?>
   </body>
</html>
```
The sample output should be like this −

```
New record created successfully
```
# MySQLi - Select Query
The SQL **SELECT** command is used to fetch data from MySQLi database. You can use this command at mysql&gt; prompt as well as in any script like PHP.

## Syntax
Here is generic SQL syntax of SELECT command to fetch data from MySQLi table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
[WHERE Clause]
[OFFSET M ][LIMIT N]
```
   * You can use one or more tables separated by comma to include various conditions using a WHERE clause, but WHERE clause is an optional part of SELECT command.
   * You can fetch one or more fields in a single SELECT command.
   * You can specify star (*) in place of fields. In this case, SELECT will return all the fields.
   * You can specify any condition using WHERE clause.
   * You can specify an offset using **OFFSET** from where SELECT will start returning records. By default offset is zero.
   * You can limit the number of returns using **LIMIT** attribute.

## Fetching Data from Command Prompt −
This will use SQL SELECT command to fetch data from MySQLi table tutorials_tbl

### Example
Following example will return all the records from **tutorials_inf** table −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf;
+----+------+
| id | name |
+----+------+
|  1 | sai  |
|  2 | kit  |
|  3 | ram  |
+----+------+
3 rows in set (0.00 sec)

mysql>
```
## Fetching Data Using PHP Script
You can use same SQL SELECT command into PHP function **mysqli_query()**. This function is used to execute SQL command and later another PHP function **mysqli_fetch_assoc()** can be used to fetch all the selected data. This function returns row as an associative array, a numeric array, or both. This function returns FALSE if there are no more rows.

Below is a simple example to fetch records from **tutorials_inf** table.

### Example
Try out the following example to display all the records from tutorials_inf table.

```
<html>
   <head>
      <title>Selecting Table in MySQLi Server</title>
   </head>

   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'root';
         $dbpass = '';
         $dbname = 'TUTORIALS';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
         if(! $conn ) {
            die('Could not connect: ' . mysqli_error());
         }
         echo 'Connected successfully<br>';
         $sql = 'SELECT name FROM tutorials_inf';
         $result = mysqli_query($conn, $sql);

         if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)) {
               echo "Name: " . $row["name"]. "<br>";
            }
         } else {
            echo "0 results";
         }
         mysqli_close($conn);
      ?>
   </body>
</html>
```
The content of the rows are assigned to the variable $row and the values in row are then printed.

**NOTE** − Always remember to put curly brackets when you want to insert an array value directly into a string.

The sample output should be like this −

```
Connected successfully
Name: ram
Name: kit
Name: abc
```
# MySQLi - WHERE Clause
We have seen SQL **SELECT** command to fetch data from MySQLi table. We can use a conditional clause called **WHERE** clause to filter out results. Using WHERE clause, we can specify a selection criteria to select required records from a table.

## Syntax
Here is generic SQL syntax of SELECT command with WHERE clause to fetch data from MySQLi table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
[WHERE condition1 [AND [OR]] condition2.....
```
   * You can use one or more tables separated by comma to include various conditions using a WHERE clause, but WHERE clause is an optional part of SELECT command.
   * You can specify any condition using WHERE clause.
   * You can specify more than one conditions using **AND** or **OR** operators.
   * A WHERE clause can be used along with DELETE or UPDATE SQL command also to specify a condition.

The **WHERE** clause works like an if condition in any programming language. This clause is used to compare given value with the field value available in MySQLi table. If given value from outside is equal to the available field value in MySQLi table, then it returns that row.

Here is the list of operators, which can be used with **WHERE** clause.

Assume field A holds 10 and field B holds 20, then −

The WHERE clause is very useful when you want to fetch selected rows from a table, especially when you use **MySQLi Join**. Joins are discussed in another chapter.

It is a common practice to search records using **Primary Key** to make search fast.

If given condition does not match any record in the table, then query would not return any row.

## Fetching Data from Command Prompt
This will use SQL SELECT command with WHERE clause to fetch selected data from MySQLi table tutorials_inf.

### Example
Following example will return all the records from **tutorials_inf** table for which name is **sai** −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql>SELECT * from tutorials_inf where name = 'sai';
+----+------+
| id | name |
+----+------+
|  1 | SAI  |
+----+------+
1 row in set (0.00 sec)

mysql>
```
Unless performing a **LIKE** comparison on a string, the comparison is not case sensitive. You can make your search case sensitive using **BINARY** keyword as follows −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf \WHERE BINARY name = 'sai';
Empty set (0.02 sec)

mysql>
```
## Fetching Data Using PHP Script:
You can use same SQL SELECT command with WHERE CLAUSE into PHP function **mysqli_query()**.

### Example
Following example will return all the records from **tutorials_inf** table for which name is **sai** −

```
<?php
   $dbhost = 'localhost:3306';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'TUTORIALS';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully<br>';
   $sql = 'SELECT * from tutorials_inf where name="sai"';
   $result = mysqli_query($conn, $sql);

   if (mysqli_num_rows($result) > 0) {
      while($row = mysqli_fetch_assoc($result)) {
         echo "Name: " . $row["name"]. "<br>";
      }
   } else {
      echo "0 results";
   }
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
Name: SAI
```
# MySQLi - UPDATE Query
There may be a requirement where existing data in a MySQLi table needs to be modified. You can do so by using SQL **UPDATE** command. This will modify any field value of any MySQLi table.

## Syntax
Here is generic SQL syntax of UPDATE command to modify data into MySQLi table −

```
UPDATE table_name SET field1 = new-value1, field2 = new-value2 [WHERE Clause]
```
   * You can update one or more field altogether.
   * You can specify any condition using WHERE clause.
   * You can update values in a single table at a time.

The WHERE clause is very useful when you want to update selected rows in a table.

## Updating Data from Command Prompt
This will use SQL UPDATE command with WHERE clause to update selected data into MySQLi table tutorials_inf.

### Example
Following example will update **name** field for a record having tutorial_inf.

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> UPDATE tutorials_inf 
   -> SET name = 'johar' 
   -> WHERE name = 'sai';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
```
## Updating Data Using PHP Script
You can use SQL UPDATE command with or without WHERE CLAUSE into PHP function **mysqli_query()**. This function will execute SQL command in similar way it is executed at mysql&gt; prompt.

### Example
Try out the following example to update **name** field for a record.

```
<?php
   $dbhost = 'localhost:3306';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'TUTORIALS';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully<br>';
   $sql = ' UPDATE tutorials_inf SET name="althamas" WHERE name="ram"';
   
   if (mysqli_query($conn, $sql)) {
      echo "Record updated successfully";
   } else {
      echo "Error updating record: " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
Record updated successfully
```
# MySQLi - DELETE Query
If you want to delete a record from any MySQLi table, then you can use SQL command **DELETE FROM**. You can use this command at mysql&gt; prompt as well as in any script like PHP.

## Syntax
Here is generic SQL syntax of DELETE command to delete data from a MySQLi table −

```
DELETE FROM table_name [WHERE Clause]
```
   * If WHERE clause is not specified, then all the records will be deleted from the given MySQLi table.
   * You can specify any condition using WHERE clause.
   * You can delete records in a single table at a time.

The WHERE clause is very useful when you want to delete selected rows in a table.

## Deleting Data from Command Prompt
This will use SQL DELETE command with WHERE clause to delete selected data into MySQLi table tutorials_inf.

### Example
Following example will delete a record into tutorial_inf whose name is johar.

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> DELETE FROM tutorials_inf where name = 'johar';
Query OK, 1 row affected (0.23 sec)

mysql>
```
## Deleting Data Using PHP Script
You can use SQL DELETE command with or without WHERE CLAUSE into PHP function **mysqli_query()**. This function will execute SQL command in similar way it is executed at mysql&gt; prompt.

### Example
Try out the following example to delete a record from tutorial_inf whose name is althamas.

```
<?php
   $dbhost = 'localhost:3306';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'TUTORIALS';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully<br>';
   $sql = ' DELETE FROM tutorials_inf WHERE name = "althamas"';
   
   if (mysqli_query($conn, $sql)) {
      echo "Record deleted successfully";
   } else {
      echo "Error deleting record: " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
```
The sample output should be like this-

```
Connected successfully
Record deleted successfully
```
# MySQLi - LIKE Clause
We have seen SQL **SELECT** command to fetch data from MySQLi table. We can also use a conditional clause called **WHERE** clause to select required records.

A WHERE clause with equals sign (=) works fine where we want to do an exact match. Like if "name = 'sai'". But there may be a requirement where we want to filter out all the results where name should contain "johar". This can be handled using SQL **LIKE** clause along with WHERE clause.

If SQL LIKE clause is used along with % characters, then it will work like a meta character (*) in UNIX while listing out all the files or directories at command prompt.

Without a % character, LIKE clause is very similar to equals sign along with WHERE clause.

## Syntax
Here is generic SQL syntax of SELECT command along with LIKE clause to fetch data from MySQLi table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
WHERE field1 LIKE condition1 [AND [OR]] filed2 = 'somevalue'
```
   * You can specify any condition using WHERE clause.
   * You can use LIKE clause along with WHERE clause.
   * You can use LIKE clause in place of equals sign.
   * When LIKE is used along with % sign then it will work like a meta character search.
   * You can specify more than one conditions using **AND** or **OR** operators.
   * A WHERE...LIKE clause can be used along with DELETE or UPDATE SQL command also to specify a condition.

## Using LIKE clause at Command Prompt
This will use SQL SELECT command with WHERE...LIKE clause to fetch selected data from MySQLi table tutorials_inf.

### Example
Following example will return all the records from **tutorials_inf** table for which author name ends with **johar** −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf 
   -> WHERE name LIKE '%johar';
+----+-------+
| id | name  |
+----+-------+
|  2 | johar |
+----+-------+
1 row in set (0.00 sec)

mysql>
```
## Using LIKE clause inside PHP Script
You can use similar syntax of WHERE...LIKE clause into PHP function **mysqli_query()**. This function is used to execute SQL command and later another PHP function **mysqli_fetch_array()** can be used to fetch all the selected data if WHERE...LIKE clause is used along with SELECT command.

But if WHERE...LIKE clause is being used with DELETE or UPDATE command, then no further PHP function call is required.

### Example
Try out the following example to return all the records from **tutorials_inf** table for which name contains **johar** −

```
<?php
   $dbhost = 'localhost:3306';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'TUTORIALS';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully<br>';
   $sql = 'SELECT * FROM tutorials_inf WHERE name LIKE "%johar%"';
   $result = mysqli_query($conn, $sql);
   $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
   
   printf ("%s \n",$row["name"]);
   mysqli_free_result($result);
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
johar
```
# MySQLi - Sorting Results
We have seen SQL **SELECT** command to fetch data from MySQLi table. When you select rows, the MySQLi server is free to return them in any order, unless you instruct it otherwise by saying how to sort the result. But you sort a result set by adding an ORDER BY clause that names the column or columns you want to sort by.

## Syntax
Here is generic SQL syntax of SELECT command along with ORDER BY clause to sort data from MySQL table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
ORDER BY field1, [field2...] [ASC [DESC]]
```
   * You can sort returned result on any field provided that filed is being listed out.
   * You can sort result on more than one field.
   * You can use keyword ASC or DESC to get result in ascending or descending order. By default, it's ascending order.
   * You can use WHERE...LIKE clause in usual way to put condition.

## Using ORDER BY clause at Command Prompt
This will use SQL SELECT command with ORDER BY clause to fetch data from MySQLi table tutorials_inf.

### Example
Try out the following example, which returns result in descending order.

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf ORDER BY id desc;
+----+-------+
| id | name  |
+----+-------+
|  4 | ram   |
|  3 | raghu |
|  2 | johar |
|  1 | sai   |
+----+-------+
4 rows in set (0.00 sec)

mysql>
```
Verify all id's are listed out in descending order.

## Using ORDER BY clause inside PHP Script
You can use similar syntax of ORDER BY clause into PHP function **mysqli_query()**. This function is used to execute SQL command and later another PHP function **mysqli_fetch_array()** can be used to fetch all the selected data.

### Example
Try out the following example, which returns result in descending order of tutorial author.

```
<?php
   $dbhost = 'localhost:3306';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'TUTORIALS';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully</br>';
   $sql = 'SELECT * from tutorials_inf ORDER BY id desc';
   
   if($result = mysqli_query($conn, $sql)){
      if(mysqli_num_rows($result) > 0){
         echo "<table>";
         echo "<tr>";
         echo "<th>id</th>";
         echo "<th>name</th>";
         echo "</tr>";
         
         while($row = mysqli_fetch_array($result)){
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['name'] . "</td>";
            echo "</tr>";
         }
         echo "</table>";
         mysqli_free_result($result);
      } else {
         echo "No records matching your query were found.";
      }
   } else {
      echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
id	name
4	ram
3	raghu
2	johar
1	sai
```
# MySQLi - Using Joins
Thus far, we have only been getting data from one table at a time. This is fine for simple takes, but in most real world MySQL usage, you will often need to get data from multiple tables in a single query.

You can use multiple tables in your single SQL query. The act of joining in MySQLi refers to smashing two or more tables into a single table.

You can use JOINS in SELECT, UPDATE and DELETE statements to join MySQLi tables. We will see an example of LEFT JOIN also which is different from simple MySQLi JOIN.

## Using Joins at Command Prompt
Suppose we have two tables **tutorials_bks** and **tutorials_inf**, in TUTORIALS. A complete listing is given below −

### Example
Try out the following examples −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * FROM tcount_bks;
+----+---------+
| id | book    |
+----+---------+
|  1 | java    |
|  2 | java    |
|  3 | html    |
|  4 | c++     |
|  5 | Android |
+----+---------+
5 rows in set (0.00 sec)

mysql> SELECT * from tutorials_inf;
+----+-------+
| id | name  |
+----+-------+
|  1 | sai   |
|  2 | johar |
|  3 | raghu |
|  4 | ram   |
+----+-------+
4 rows in set (0.00 sec)

mysql>
```
Now we can write a SQL query to join these two tables. This query will select all the names from table **tutorials_inf** and will pickup corresponding number of tutorials from**tutorials_bks**.

```
mysql> SELECT a.id, a.name,b.id FROM tutorials_inf a,tutorials_bks b WHERE a.id = b.id;
+----+-------+----+
| id | name  | id |
+----+-------+----+
|  1 | sai   |  1 |
|  2 | johar |  2 |
|  3 | raghu |  3 |
|  4 | ram   |  4 |
+----+-------+----+
4 rows in set (0.00 sec)
mysql>
```
In tutorials_bks table, we have 5 records but in the above example it filters and gives only 4 id records as per query

## Using Joins in PHP Script
You can use any of the above-mentioned SQL query in PHP script. You only need to pass SQL query into PHP function **mysqli_query()** and then you will fetch results in usual way.

### Example
Try out the following example −

```
<?php
   $dbhost = 'localhost:3306';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'TUTORIALS';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully</br>';
   $sql = 'SELECT a.id, a.name,b.id FROM tutorials_inf a,tutorials_bks b WHERE a.id = b.id';
   
   if($result = mysqli_query($conn, $sql)) {
      if(mysqli_num_rows($result) > 0) {
         echo "<table>";
         echo "<tr>";
         echo "<th>id</th>";
         echo "<th>name</th>";
         echo "<th>id</th>";
         echo "</tr>";
         
         while($row = mysqli_fetch_array($result)){
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['name'] . "</td>";
				echo "<td>" . $row['id'] . "</td>";
            echo "</tr>";
         }
         echo "</table>";
         mysqli_free_result($result);
      } else {
         echo "No records matching your query were found.";
      }
   } else {
      echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
id	name	id
1	sai	1
2	johar	2
3	raghu	3
4	ram	4
```
## MySQL LEFT JOIN
A MySQLi left join is different from a simple join. A MySQLi LEFT JOIN gives extra consideration to the table that is on the left.

If I do a LEFT JOIN, I get all the records that match in the same way and IN ADDITION I get an extra record for each unmatched record in the left table of the join - thus ensuring (in my example) that every name gets a mention −

### Example
Try out the following example to understand LEFT JOIN −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql>SELECT a.id, a.name,b.id FROM tutorials_inf a LEFT JOIN tutorials_bks b ON a.id = b.id;
```
You would need to do more practice to become familiar with JOINS. This is a bit complex concept in MySQL/SQL and will become more clear while doing real examples.

# MySQLi - Handling NULL Values
We have seen SQL **SELECT** command along with **WHERE** clause to fetch data from MySQLi table, but when we try to give a condition, which compare field or column value to **NULL**, it does not work properly.

To handle such situation MySQLi provides three operators

   * **IS NULL** − operator returns true if column value is NULL.
   * **IS NOT NULL** − operator returns true if column value is not NULL.
   * **<=>** − operator compares values, which (unlike the = operator) is true even for two NULL values.

Conditions involving NULL are special. You cannot use = NULL or != NULL to look for NULL values in columns. Such comparisons always fail because it's impossible to tell whether or not they are true. Even NULL = NULL fails.

To look for columns that are or are not NULL, use IS NULL or IS NOT NULL.

## Using NULL values at Command Prompt
Suppose a table **tutorials_bks** in TUTORIALS database and it contains two columns **id** and **name**, where a NULL name indicates that the value is unknown −

### Example
Try out the following examples −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> INSERT INTO tutorials_bks (book) values('');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('NULL');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('NULL');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('NULL');
Query OK, 1 row affected (0.08 sec)

+----+---------+
| id | book    |
+----+---------+
|  1 | java    |
|  2 | java    |
|  3 | html    |
|  4 | c++     |
|  5 | Android |
|  6 |         |
|  7 |         |
|  8 |         |
|  9 | NULL    |
| 10 | NULL    |
| 11 | NULL    |
+----+---------+
11 rows in set (0.00 sec)

mysql>
```
To find records where the name column is or is not NULL, the queries should be written like this −

```
mysql> SELECT * FROM tutorials_bks WHERE book = "null";
+----+------+
| id | book |
+----+------+
|  9 | NULL |
| 10 | NULL |
| 11 | NULL |
+----+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM tutorials_bks WHERE book ! = "null";
+----+---------+
| id | book    |
+----+---------+
|  1 | java    |
|  2 | java    |
|  3 | html    |
|  4 | c++     |
|  5 | Android |
|  6 |         |
|  7 |         |
|  8 |         |
+----+---------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM tutorials_bks WHERE book = "";
+----+------+
| id | book |
+----+------+
|  6 |      |
|  7 |      |
|  8 |      |
+----+------+
3 rows in set (0.01 sec)
```
## Handling NULL Values in PHP Script
You can use  condition to prepare a query based on NULL value.

### Example
Following example takes tutorial_count from outside and then compares it with the value available in the table.

```
<?php
   $dbhost = 'localhost:3036';
   $dbuser = 'root';
   $dbpass = 'rootpassword';
   $conn = mysql_connect($dbhost, $dbuser, $dbpass);
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }
   if( isset($tutorial_count )) {
      $sql = 'SELECT tutorial_author, tutorial_count FROM  tcount_tbl
         WHERE tutorial_count = $tutorial_count';
   } else {
      $sql = 'SELECT tutorial_author, tutorial_count
         FROM  tcount_tbl WHERE tutorial_count IS $tutorial_count';
   }
   mysql_select_db('TUTORIALS');
   $retval = mysql_query( $sql, $conn );
   
   if(! $retval ) {
      die('Could not get data: ' . mysql_error());
   }
   while($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {
      echo "Author:{$row['tutorial_author']}  <br> ".
         "Count: {$row['tutorial_count']} <br> ".
         "--------------------------------<br>";
   } 
   echo "Fetched data successfully\n";
   mysql_close($conn);
?>
```
# MySQLi - Regexps
You have seen MySQLi pattern matching with **LIKE ...%**. MySQLi supports another type of pattern matching operation based on regular expressions and the **REGEXP** operator. If you are aware of PHP or PERL, then it's very simple for you to understand because this matching is very similar to those scripting regular expressions.

Following is the table of pattern, which can be used along with **REGEXP** operator.

## Examples
Now based on above table, you can device various type of SQL queries to meet your requirements. Here, I'm listing few for your understanding. Consider we have a table called tutorials_inf and it's having a field called name −

Query to find all the names starting with 'sa'

```
mysql>  SELECT * FROM tutorials_inf WHERE name REGEXP '^sa';
```
The sample output should be like this −

```
+----+------+
| id | name |
+----+------+
|  1 | sai  |
+----+------+
1 row in set (0.00 sec)
```
Query to find all the names ending with 'ai'

```
mysql> SELECT * FROM tutorials_inf WHERE name REGEXP 'ai$';
```
The sample output should be like this −

```
+----+------+
| id | name |
+----+------+
|  1 | sai  |
+----+------+
1 row in set (0.00 sec)
```
Query to find all the names, which contain 'a'

```
mysql> SELECT * FROM tutorials_inf WHERE name REGEXP 'a';
```
The sample output should be like this −

```
+----+-------+
| id | name  |
+----+-------+
|  1 | sai   |
|  3 | ram   |
|  4 | johar |
+----+-------+
3 rows in set (0.00 sec)
```
Query to find all the names starting with a vowel

```
mysql>  SELECT * FROM tutorials_inf WHERE name REGEXP '^[aeiou]';
```
# MySQLi - Transactions
A transaction is a sequential group of database manipulation operations, which is performed as if it were one single work unit. In other words, a transaction will never be complete unless each individual operation within the group is successful. If any operation within the transaction fails, the entire transaction will fail.

Practically, you will club many SQL queries into a group and you will execute all of them together as part of a transaction.

## Properties of Transactions
Transactions have the following four standard properties, usually referred to by the acronym ACID −

   * **Atomicity** − ensures that all operations within the work unit are completed successfully; otherwise, the transaction is aborted at the point of failure and previous operations are rolled back to their former state.
   * **Consistency** − ensures that the database properly changes states upon a successfully committed transaction.
   * **Isolation** − enables transactions to operate independently on and transparent to each other.
   * **Durability** − ensures that the result or effect of a committed transaction persists in case of a system failure.

In MySQL, transactions begin with the statement BEGIN WORK and end with either a COMMIT or a ROLLBACK statement. The SQLi commands between the beginning and ending statements form the bulk of the transaction.

## COMMIT and ROLLBACK
These two keywords **Commit** and **Rollback** are mainly used for MySQL Transactions.

   * When a successful transaction is completed, the COMMIT command should be issued so that the changes to all involved tables will take effect.
   * If a failure occurs, a ROLLBACK command should be issued to return every table referenced in the transaction to its previous state.

You can control the behavior of a transaction by setting session variable called **AUTOCOMMIT**. If AUTOCOMMIT is set to 1 (the default), then each SQL statement (within a transaction or not) is considered a complete transaction and committed by default when it finishes. When AUTOCOMMIT is set to 0, by issuing the SET AUTOCOMMIT=0 command, the subsequent series of statements acts like a transaction and no activities are committed until an explicit COMMIT statement is issued.

You can execute these SQL commands in PHP by using **mysqli_query()** function.

## Generic Example on Transaction
This sequence of events is independent of the programming language used; the logical path can be created in whichever language you use to create your application.

You can execute these SQL commands in PHP by using **mysqli_query()** function.

   * Begin transaction by issuing SQL command **BEGIN WORK.**
   * Issue one or more SQL commands like SELECT, INSERT, UPDATE or DELETE.
   * Check if there is no error and everything is according to your requirement.
   * If there is any error, then issue ROLLBACK command, otherwise issue a COMMIT command.

## Transaction-Safe Table Types in MySQLi
You can not use transactions directly, you can but they would not be safe and guaranteed. If you plan to use transactions in your MySQLi programming, then you need to create your tables in a special way. There are many types of tables, which support transactions but most popular one is **InnoDB**.

Support for InnoDB tables requires a specific compilation parameter when compiling MySQLi from source. If your MySQLi version does not have InnoDB support, ask your Internet Service Provider to build a version of MySQLi with support for InnoDB table types or download and install the MySQL-Max binary distribution for Windows or Linux/UNIX and work with the table type in a development environment.

If your MySQLi installation supports InnoDB tables, simply add a **TYPE = InnoDB** definition to the table creation statement. For example, the following code creates an InnoDB table called tutorials_innodb −

```
root@host# mysql -u root -p;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> create table tutorials_innodb
   -> (
   -> tutorial_author varchar(40) NOT NULL,
   -> tutorial_count  INT
   -> ) TYPE = InnoDB;
Query OK, 0 rows affected (0.02 sec)
```
Check the following link to know more about − [InnoDB](https://dev.mysql.com/doc/refman/5.7/en/innodb-parameters.html) 

You can use other table types like **GEMINI** or **BDB**, but it depends on your installation if it supports these two types.

# MySQLi - ALTER Command
MySQLi **ALTER** command is very useful when you want to change a name of your table, any table field or if you want to add or delete an existing column in a table.

Let's begin with creation of a table called **tutorials_alter**.

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> create table tutorials_alter
   -> (
   -> i INT,
   -> c CHAR(1)
   -> );
Query OK, 0 rows affected (0.27 sec)

mysql> SHOW COLUMNS FROM tutorials_alter;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| i     | int(11) | YES  |     | NULL    |       |
| c     | char(1) | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
2 rows in set (0.02 sec)
```
## Dropping, Adding or Repositioning a Column
Suppose you want to drop an existing column **i** from above MySQLi table then you will use **DROP** clause along with **ALTER** command as follows −

```
mysql> ALTER TABLE tutorials_alter  DROP i;
```
A **DROP** will not work if the column is the only one left in the table.

To add a column, use ADD and specify the column definition. The following statement restores the **i** column to tutorials_alter −

```
mysql> ALTER TABLE tutorials_alter ADD i INT;
```
After issuing this statement, testalter will contain the same two columns that it had when you first created the table, but will not have quite the same structure. That's because new columns are added to the end of the table by default. So even though **i** originally was the first column in mytbl, now it is the last one.

```
mysql> SHOW COLUMNS FROM tutorials_alter;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| c     | char(1) | YES  |     | NULL    |       |
| i     | int(11) | YES  |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
2 rows in set (0.01 sec)
```
To indicate that you want a column at a specific position within the table, either use FIRST to make it the first column or AFTER col_name to indicate that the new column should be placed after col_name. Try the following ALTER TABLE statements, using SHOW COLUMNS after each one to see what effect each one has −

```
ALTER TABLE testalter_tbl DROP i;
ALTER TABLE testalter_tbl ADD i INT FIRST;
ALTER TABLE testalter_tbl DROP i;
ALTER TABLE testalter_tbl ADD i INT AFTER c;
```
The FIRST and AFTER specifiers work only with the ADD clause. This means that if you want to reposition an existing column within a table, you first must DROP it and then ADD it at the new position.

## Changing a Column Definition or Name
To change a column's definition, use **MODIFY** or **CHANGE** clause along with ALTER command. For example, to change column **c** from CHAR(1) to CHAR(10), do this −

```
mysql> ALTER TABLE tutorials_alter MODIFY c CHAR(10);
```
With CHANGE, the syntax is a bit different. After the CHANGE keyword, you name the column you want to change, then specify the new definition, which includes the new name. Try out the following example:

```
mysql> ALTER TABLE tutorials_alter CHANGE i j BIGINT;
```
If you now use CHANGE to convert j from BIGINT back to INT without changing the column name, the statement will be as expected −

```
mysql> ALTER TABLE tutorials_alter CHANGE j j INT;
```
## The Effect of ALTER TABLE on Null and Default Value Attributes −
When you MODIFY or CHANGE a column, you can also specify whether or not the column can contain NULL values and what its default value is. In fact, if you don't do this, MySQLi automatically assigns values for these attributes.

Here is the example, where NOT NULL column will have value 100 by default.

```
mysql> ALTER TABLE tutorials_alter 
   -> MODIFY j BIGINT NOT NULL DEFAULT 100;
```
If you don't use above command, then MySQLi will fill up NULL values in all the columns.

## Changing a Column's Default Value
You can change a default value for any column using ALTER command. Try out the following example.

```
mysql> ALTER TABLE tutorials_alter ALTER j SET DEFAULT 1000;
mysql> SHOW COLUMNS FROM tutorials_alter;
+-------+------------+------+-----+---------+-------+
| Field | Type       | Null | Key | Default | Extra |
+-------+------------+------+-----+---------+-------+
| c     | char(10)   | YES  |     | NULL    |       |
| j     | bigint(20) | NO   |     | 1000    |       |
+-------+------------+------+-----+---------+-------+
2 rows in set (0.02 sec)
```
You can remove default constraint from any column by using DROP clause along with ALTER command.

```
mysql> ALTER TABLE tutorials_alter ALTER j DROP DEFAULT;
mysql> SHOW COLUMNS FROM tutorials_alter;
+-------+------------+------+-----+---------+-------+
| Field | Type       | Null | Key | Default | Extra |
+-------+------------+------+-----+---------+-------+
| c     | char(10)   | YES  |     | NULL    |       |
| j     | bigint(20) | NO   |     | NULL    |       |
+-------+------------+------+-----+---------+-------+
2 rows in set (0.02 sec)
```
## Changing a Table Type
You can use a table type by using **TYPE** clause along with ALTER command.

To find out the current type of a table, use the SHOW TABLE STATUS statement.

```
mysql>  SHOW TABLE STATUS LIKE 'tutorials_alter'\G
*************************** 1. row ***************************
           Name: tutorials_alter
         Engine: InnoDB
        Version: 10
     Row_format: Compact
           Rows: 0
 Avg_row_length: 0
    Data_length: 16384
Max_data_length: 0
   Index_length: 0
      Data_free: 0
 Auto_increment: NULL
    Create_time: 2017-02-17 11:30:29
    Update_time: NULL
     Check_time: NULL
      Collation: latin1_swedish_ci
       Checksum: NULL
 Create_options:
        Comment:
1 row in set (0.00 sec)
```
## Renaming a Table
To rename a table, use the **RENAME** option of the ALTER TABLE statement. Try out the following example to rename tutorials_alter to tutorials_bks.

```
mysql> ALTER TABLE tutorials_alter RENAME TO tutorials_bks;
```
You can use ALTER command to create and drop INDEX on a MySQL file. We will see this feature in next chapter.

# MySQLi - INDEXES
A database index is a data structure that improves the speed of operations in a table. Indexes can be created using one or more columns, providing the basis for both rapid random lookups and efficient ordering of access to records.

While creating index, it should be considered that what are the columns which will be used to make SQL queries and create one or more indexes on those columns.

Practically, indexes are also type of tables, which keep primary key or index field and a pointer to each record into the actual table.

The users cannot see the indexes, they are just used to speed up queries and will be used by Database Search Engine to locate records very fast.

INSERT and UPDATE statements take more time on tables having indexes where as SELECT statements become fast on those tables. The reason is that while doing insert or update, database need to insert or update index values as well.

## Simple and Unique Index
You can create a unique index on a table. A unique index means that two rows cannot have the same index value. Here is the syntax to create an Index on a table.

```
CREATE UNIQUE INDEX index_name ON table_name ( column1, column2,...);
```
You can use one or more columns to create an index. For example, we can create an index on tutorials_inf using NAME_INDEX.

```
CREATE UNIQUE INDEX NAME_INDEX ON tutorials_inf(name);
```
You can create a simple index on a table. Just omit UNIQUE keyword from the query to create simple index. Simple index allows duplicate values in a table.

If you want to index the values in a column in descending order, you can add the reserved word DESC after the column name.

```
mysql> CREATE UNIQUE INDEX NAME_INDEX ON tutorials_inf (name DESC);
```
## ALTER command to add and drop INDEX
There are four types of statements for adding indexes to a table −

   * **ALTER TABLE tbl_name ADD PRIMARY KEY (column_list)** − This statement adds a PRIMARY KEY, which means that indexed values must be unique and cannot be NULL.
   * **ALTER TABLE tbl_name ADD UNIQUE index_name (column_list)** − This statement creates an index for which values must be unique (with the exception of NULL values, which may appear multiple times).
   * **ALTER TABLE tbl_name ADD INDEX index_name (column_list)** − This adds an ordinary index in which any value may appear more than once.
   * **ALTER TABLE tbl_name ADD FULLTEXT index_name (column_list)** − This creates a special FULLTEXT index that is used for text-searching purposes.

Here is the example to add index in an existing table.

```
mysql> ALTER TABLE tutorials_inf ADD INDEX (id);
```
You can drop any INDEX by using DROP clause along with ALTER command. Try out the following example to drop above-created index.

```
mysql> ALTER TABLE tutorials_inf DROP INDEX (c);
```
You can drop any INDEX by using DROP clause along with ALTER command. Try out the following example to drop above-created index.

## ALTER Command to add and drop PRIMARY KEY
You can add primary key as well in the same way. But make sure Primary Key works on columns, which are NOT NULL.

Here is the example to add primary key in an existing table. This will make a column NOT NULL first and then add it as a primary key.

```
mysql>  ALTER TABLE tutorials_inf MODIFY id INT NOT NULL;
mysql> ALTER TABLE tutorials_inf ADD PRIMARY KEY (id);
```
You can use ALTER command to drop a primary key as follows:

```
mysql> ALTER TABLE tutorials_inf DROP PRIMARY KEY;
```
To drop an index that is not a PRIMARY KEY, you must specify the index name.

## Displaying INDEX Information
You can use SHOW INDEX command to list out all the indexes associated with a table. Vertical-format output (specified by \G) often is useful with this statement, to avoid long line wraparound −

Try out the following example

```
mysql> SHOW INDEX FROM table_name\G
........
```
# MySQLi - Temporary Tables
The temporary tables could be very useful in some cases to keep temporary data. The most important thing that should be known for temporary tables is that they will be deleted when the current client session terminates.

As stated earlier, temporary tables will only last as long as the session is alive. If you run the code in a PHP script, the temporary table will be destroyed automatically when the script finishes executing. If you are connected to the MySQL database server through the MySQLi client program, then the temporary table will exist until you close the client or manually destroy the table.

## Example
Here is an example showing you usage of temporary table. Same code can be used in PHP scripts using **mysqli_query()** function.

```
mysql> CREATE TEMPORARY TABLE SalesSummary (
   -> product_name VARCHAR(50) NOT NULL
   -> , total_sales DECIMAL(12,2) NOT NULL DEFAULT 0.00
   -> , avg_unit_price DECIMAL(7,2) NOT NULL DEFAULT 0.00
   -> , total_units_sold INT UNSIGNED NOT NULL DEFAULT 0
   -> );
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SalesSummary
   -> (product_name, total_sales, avg_unit_price, total_units_sold)
   -> VALUES
   -> ('cucumber', 100.25, 90, 2);

mysql> SELECT * FROM SalesSummary;
+--------------+-------------+----------------+------------------+
| product_name | total_sales | avg_unit_price | total_units_sold |
+--------------+-------------+----------------+------------------+
| cucumber     |      100.25 |          90.00 |                2 |
+--------------+-------------+----------------+------------------+
1 row in set (0.00 sec)
```
When you issue a SHOW TABLES command, then your temporary table would not be listed out in the list. Now, if you will log out of the MySQLi session and then you will issue a SELECT command, then you will find no data available in the database. Even your temporary table would also not exist.

## Dropping Temporary Tables
By default, all the temporary tables are deleted by MySQLi when your database connection gets terminated. Still if you want to delete them in between, then you do so by issuing DROP TABLE command.

Following is the example on dropping a temporary table −

```
mysql> DROP TABLE SalesSummary;
mysql>  SELECT * FROM SalesSummary;
ERROR 1146: Table 'TUTORIALS.SalesSummary' doesn't exist
```
# MySQLi - Clone Tables
There may be a situation when you need an exact copy of a table and CREATE TABLE ... SELECT doesn't suit your purposes because the copy must include the same indexes, default values, and so forth.

You can handle this situation by following steps −

   * Use SHOW CREATE TABLE to get a CREATE TABLE statement that specifies the source table's structure, indexes and all.
   * Modify the statement to change the table name to that of the clone table and execute the statement. This way, you will have exact clone table.
   * Optionally, if you need the table contents copied as well, issue an INSERT INTO ... SELECT statement, too.

## Example
Try out the following example to create a clone table for **tutorials_inf**.

## Step 1
Get complete structure about table.

```
mysql> SHOW CREATE TABLE tutorials_inf \G;
*************************** 1. row ***************************
       Table: tutorials_inf
Create Table: CREATE TABLE `tutorials_inf` (
   `id` int(11) NOT NULL,
   `name` varchar(20) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `AUTHOR_INDEX` (`name`),
   UNIQUE KEY `NAME_INDEX` (`name`),
   KEY `id` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1
1 row in set (0.05 sec)

ERROR: No query specified
```
## Step 2
Rename this table and create another table.

```
mysql> CREATE TABLE tutorials_clone(
   -> id int(11) NOT NULL,
   -> name varchar(20) NOT NULL,
   -> PRIMARY KEY (id),
   > UNIQUE KEY AUTHOR_INDEX (name),
   -> UNIQUE KEY NAME_INDEX (name),
   ->  KEY id (id));
Query OK, 0 rows affected (1.80 sec)
```
## Step 3
After executing step 2, you will create a clone table in your database. If you want to copy data from old table then you can do it by using INSERT INTO... SELECT statement.

```
mysql> INSERT INTO tutorials_clone(id,name) SELECT id,name from tutorials_inf;
Query OK, 4 rows affected (0.19 sec)
Records: 4  Duplicates: 0  Warnings: 0
```
Finally, you will have exact clone table as you wanted to have.

# Obtaining and Using MySQLi Metadata
There are three informations, which you would like to have from MySQLi.

   * **Information about the result of queries** − This includes number of records affected by any SELECT, UPDATE or DELETE statement.
   * **Information about tables and databases** − This includes information pertaining to the structure of tables and databases.
   * **Information about the MySQLi server** − This includes current status of database server, version number etc.

It's very easy to get all these information at mysqli prompt, but while using PERL or PHP APIs, we need to call various APIs explicitly to obtain all these information. Following section will show you how to obtain this information.

## Obtaining the Number of Rows Affected by a Query
## PERL Example
In DBI scripts, the affected-rows count is returned by do( ) or by execute( ), depending on how you execute the query −

```
# Method 1
# execute $query using do( )
my $count = $dbh->do ($query);
# report 0 rows if an error occurred
printf "%d rows were affected\n", (defined ($count) ? $count : 0);

# Method 2
# execute query using prepare( ) plus execute( )
my $sth = $dbh->prepare ($query);
my $count = $sth->execute ( );
printf "%d rows were affected\n", (defined ($count) ? $count : 0);
```
## PHP Example
In PHP, invoke the mysqli_affected_rows( ) function to find out how many rows a query changed −

```
$result_id = mysqli_query ($query, $conn_id);
# report 0 rows if the query failed
$count = ($result_id ? mysqli_affected_rows ($conn_id) : 0);
print ("$count rows were affected\n");
```
## Listing Tables and Databases
This is very easy to list down all the databases and tables available with database server. Your result may be null if you don't have sufficient privilege.

Apart from the method I have mentioned below, you can use SHOW TABLES or SHOW DATABASES queries to get list of tables or databases either in PHP or in PERL.

## PERL Example
```
# Get all the tables available in current database.
my @tables = $dbh->tables ( );
foreach $table (@tables ){
   print "Table Name $table\n";
}
```
## PHP Example
```
<?php
   $servername = "localhost:3306";
   $username = "root";
   $password = "";
   $dbname = "TUTORIALS";
   $conn = new mysqli($servername, $username, $password, $dbname);
   
   if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
   } 
   echo"Database connected";
   $sql="SHOW DATABASES";
   
   if (!($result = mysqli_query($conn,$sql))) {
      printf("Error: %s\n", mysqli_error($conn));
   }
   while( $row = mysqli_fetch_row( $result ) ){
      if (($row[0]!="information_schema") && ($row[0]!="mysql")) {
         echo $row[0]."\r\n";
      }
   }
   $conn->close();
?>
```
## Getting Server Metadata
There are following commands in MySQL which can be executed either at mysql prompt or using any script like PHP to get various important informations about database server.

# MySQLi - Using Sequences
A sequence is a set of integers 1, 2, 3, ... that are generated in order on demand. Sequences are frequently used in databases because many applications require each row in a table to contain a unique value and sequences provide an easy way to generate them. This chapter describes how to use sequences in MySQLi.

## Using AUTO_INCREMENT column
The simplest way in MySQLi to use Sequences is to define a column as AUTO_INCREMENT and leave rest of the things to MySQLi to take care.

## Example
Try out the following example. This will create table and after that it will insert few rows in this table where it is not required to give record ID because it's auto incremented by MySQLi.

```
mysql>CREATE TABLE tutorials_auto(
   id INT UNSIGNED NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL,PRIMARY KEY(id));
Query OK, 0 rows affected (0.28 sec)

mysql>INSERT INTO tutorials_auto(id,name) VALUES(NULL,'sai'),(NULL,'ram');
Query OK, 2 rows affected (0.12 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM insect ORDER BY id;
+----+------+
| id | name |
+----+------+
|  1 | sai  |
|  2 | ram  |
+----+------+
2 rows in set (0.05 sec)
```
## Obtain AUTO_INCREMENT Values
LAST_INSERT_ID( ) is a SQL function, so you can use it from within any client that understands how to issue SQL statements. Otherwise, PERL and PHP scripts provide exclusive functions to retrieve auto incremented value of last record.

## PERL Example
Use the mysql_insertid attribute to obtain the AUTO_INCREMENT value generated by a query. This attribute is accessed through either a database handle or a statement handle, depending on how you issue the query. The following example references it through the database handle:

```
$dbh->do ("INSERT INTO tutorials_auto (name,date,origin)
VALUES('moth','2001-09-14','windowsill')");
my $seq = $dbh->{mysqli_insertid};
```
## PHP Example
After issuing a query that generates an AUTO_INCREMENT value, retrieve the value by calling mysql_insert_id( ) −

```
mysql_query ("INSERT INTO tutorials_auto (name,date,origin)
VALUES('moth','2001-09-14','windowsill')", $conn_id);
$seq = mysqli_insert_id ($conn_id);
```
## Renumbering an Existing Sequence
There may be a case when you have deleted many records from a table and you want to resequence all the records. This can be done by using a simple trick but you should be very careful to do so if your table is having joins with other table.

If you determine that resequencing an AUTO_INCREMENT column is unavoidable, the way to do it is to drop the column from the table, then add it again. The following example shows how to renumber the id values in the insect table using this technique −

```
mysql> ALTER TABLE tutorials_auto DROP id;
mysql> ALTER TABLE tutorials_auto
   -> ADD id INT UNSIGNED NOT NULL AUTO_INCREMENT FIRST,
   -> ADD PRIMARY KEY (id);
```
## Starting a Sequence at a Particular Value
By default, MySQLi will start sequence from 1 but you can specify any other number as well at the time of table creation. Following is the example where MySQLi will start sequence from 100.

```
mysql> CREATE TABLE tutorials_auto
   -> (
   -> id INT UNSIGNED NOT NULL AUTO_INCREMENT = 100,
   -> PRIMARY KEY (id),
   -> name VARCHAR(30) NOT NULL, 
   -> );
```
Alternatively, you can create the table and then set the initial sequence value with ALTER TABLE.

```
mysql> ALTER TABLE tutorials_auto AUTO_INCREMENT = 100;
```
# MySQLi - Handling Duplicates
Tables or result sets sometimes contain duplicate records. Sometimes, it is allowed but sometimes it is required to stop duplicate records. Sometimes, it is required to identify duplicate records and remove them from the table. This chapter will describe how to prevent duplicate records occurring in a table and how to remove already existing duplicate records.

## Preventing Duplicates from Occurring in a Table
You can use a **PRIMARY KEY** or **UNIQUE** Index on a table with appropriate fields to stop duplicate records. Let's take one example: The following table contains no such index or primary key, so it would allow duplicate records for first_name and last_name.

```
CREATE TABLE person_tbl (
   first_name CHAR(20),
   last_name CHAR(20),
   sex CHAR(10)
);
```
To prevent multiple records with the same first and last name values from being created in this table, add a PRIMARY KEY to its definition. When you do this, it's also necessary to declare the indexed columns to be NOT NULL, because a PRIMARY KEY does not allow NULL values −

```
CREATE TABLE person_tbl (
   first_name CHAR(20) NOT NULL,
   last_name CHAR(20) NOT NULL,
   sex CHAR(10),
   PRIMARY KEY (last_name, first_name)
);
```
The presence of a unique index in a table normally causes an error to occur if you insert a record into the table that duplicates an existing record in the column or columns that define the index.

Use **INSERT IGNORE** rather than **INSERT**. If a record doesn't duplicate an existing record, MySQLi inserts it as usual. If the record is a duplicate, the IGNORE keyword tells MySQLi to discard it silently without generating an error.

Following example does not error out and same time it will not insert duplicate records.

```
mysql> INSERT IGNORE INTO person_tbl (last_name, first_name)
   -> VALUES( 'Jay', 'Thomas');
Query OK, 1 row affected (0.00 sec)
mysql> INSERT IGNORE INTO person_tbl (last_name, first_name)
   -> VALUES( 'Jay', 'Thomas');
Query OK, 0 rows affected (0.00 sec)
```
Use **REPLACE** rather than INSERT. If the record is new, it's inserted just as with INSERT. If it's a duplicate, the new record replaces the old one −

```
mysql> REPLACE INTO person_tbl (last_name, first_name)
   -> VALUES( 'Ajay', 'Kumar');
Query OK, 1 row affected (0.00 sec)

mysql> REPLACE INTO person_tbl (last_name, first_name)
   -> VALUES( 'Ajay', 'Kumar');
Query OK, 2 rows affected (0.00 sec)
```
INSERT IGNORE and REPLACE should be chosen according to the duplicate-handling behavior you want to effect. INSERT IGNORE keeps the first of a set of duplicated records and discards the rest. REPLACE keeps the last of a set of duplicates and erase out any earlier ones.

Another way to enforce uniqueness is to add a UNIQUE index rather than a PRIMARY KEY to a table.

```
CREATE TABLE person_tbl (
   first_name CHAR(20) NOT NULL,
   last_name CHAR(20) NOT NULL,
   sex CHAR(10)
   UNIQUE (last_name, first_name)
);
```
## Counting and Identifying Duplicates
Following is the query to count duplicate records with first_name and last_name in a table.

```
mysql> SELECT COUNT(*) as repetitions, last_name, first_name
   -> FROM person_tbl
   -> GROUP BY last_name, first_name
   -> HAVING repetitions > 1;
```
This query will return a list of all the duplicate records in person_tbl table. In general, to identify sets of values that are duplicated, do the following −

   * Determine which columns contain the values that may be duplicated.
   * List those columns in the column selection list, along with COUNT(*).
   * List the columns in the GROUP BY clause as well.
   * Add a HAVING clause that eliminates unique values by requiring group counts to be greater than one.

## Eliminating Duplicates from a Query Result:
You can use **DISTINCT** along with SELECT statement to find out unique records available in a table.

```
mysql> SELECT DISTINCT last_name, first_name
   -> FROM person_tbl
   -> ORDER BY last_name;
```
An alternative to DISTINCT is to add a GROUP BY clause that names the columns you're selecting. This has the effect of removing duplicates and selecting only the unique combinations of values in the specified columns −

```
mysql> SELECT last_name, first_name
   -> FROM person_tbl
   -> GROUP BY (last_name, first_name);
```
## Removing Duplicates Using Table Replacement
If you have duplicate records in a table and you want to remove all the duplicate records from that table, then here is the procedure −

```
mysql> CREATE TABLE tmp SELECT last_name, first_name, sex
   -> FROM person_tbl;
   -> GROUP BY (last_name, first_name);
mysql> DROP TABLE person_tbl;
mysql> ALTER TABLE tmp RENAME TO person_tbl;
```
An easy way of removing duplicate records from a table is to add an INDEX or PRIMAY KEY to that table. Even if this table is already available, you can use this technique to remove duplicate records and you will be safe in future as well.

```
mysql> ALTER IGNORE TABLE person_tbl 
   -> ADD PRIMARY KEY (last_name, first_name);
```

[Previous Page](../mysqli/mysqli_useful_functions.md) [Next Page](../mysqli/mysqli_useful_resources.md) 
