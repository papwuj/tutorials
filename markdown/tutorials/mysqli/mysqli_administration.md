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


[Previous Page](../mysqli/mysqli_installation.md) [Next Page](../mysqli/mysqli_php_syntax.md) 
