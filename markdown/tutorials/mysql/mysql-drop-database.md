# Drop MySQL Database
## Drop a Database using mysqladmin
You would need special privileges to create or to delete a MySQL database. So, assuming you have access to the root user, you can create any database using the mysql **mysqladmin** binary.

Be careful while deleting any database because you will lose your all the data available in your database.

Here is an example to delete a database(TUTORIALS) created in the previous chapter −

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
PHP uses **mysql_query** function to create or delete a MySQL database. This function takes two parameters and returns TRUE on success or FALSE on failure.

### Syntax
```
bool mysql_query( sql, connection );
```


### Example
Try the following example to delete a database −

```
<html>
   <head>
      <title>Deleting MySQL Database</title>
   </head>
   
   <body>
      <?php
         $dbhost = 'localhost:3036';
         $dbuser = 'root';
         $dbpass = 'rootpassword';
         $conn = mysql_connect($dbhost, $dbuser, $dbpass);
         
         if(! $conn ) {
            die('Could not connect: ' . mysql_error());
         }
         echo 'Connected successfully<br />';
         $sql = 'DROP DATABASE TUTORIALS';
         $retval = mysql_query( $sql, $conn );
         
         if(! $retval ) {
            die('Could not delete database: ' . mysql_error());
         }
         echo "Database TUTORIALS deleted successfully\n";
         mysql_close($conn);
      ?>
   </body>
</html>
```
**WARNING** − While deleting a database using the PHP script, it does not prompt you for any confirmation. So be careful while deleting a MySQL database.


[Previous Page](../mysql/mysql-create-database.md) [Next Page](../mysql/mysql-select-database.md) 
