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


[Previous Page](../mysqli/mysqli_introduction.md) [Next Page](../mysqli/mysqli_administration.md) 
