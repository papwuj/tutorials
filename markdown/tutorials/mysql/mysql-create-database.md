# MySQL - Create Database
## Create Database Using mysqladmin
You would need special privileges to create or to delete a MySQL database. So assuming you have access to the root user, you can create any database using the mysql **mysqladmin** binary.

### Example
Here is a simple example to create a database called **TUTORIALS** −

```
[root@host]# mysqladmin -u root -p create TUTORIALS
Enter password:******
```
This will create a MySQL database called TUTORIALS.

## Create a Database using PHP Script
PHP uses **mysql_query** function to create or delete a MySQL database. This function takes two parameters and returns TRUE on success or FALSE on failure.

### Syntax
```
bool mysql_query( sql, connection );
```


### Example
The following example to create a database −

```
<html>
   <head>
      <title>Creating MySQL Database</title>
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
         $sql = 'CREATE DATABASE TUTORIALS';
         $retval = mysql_query( $sql, $conn );
         
         if(! $retval ) {
            die('Could not create database: ' . mysql_error());
         }
         echo "Database TUTORIALS created successfully\n";
         mysql_close($conn);
      ?>
   </body>
</html>
```

[Previous Page](../mysql/mysql-connection.md) [Next Page](../mysql/mysql-drop-database.md) 
