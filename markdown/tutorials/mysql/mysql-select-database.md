# Selecting MySQL Database
Once you get connected with the MySQL server, it is required to select a database to work with. This is because there might be more than one database available with the MySQL Server.

## Selecting MySQL Database from the Command Prompt
It is very simple to select a database from the mysql&gt; prompt. You can use the SQL command **use** to select a database.

### Example
Here is an example to select a database called **TUTORIALS** −

```
[root@host]# mysql -u root -p
Enter password:******
mysql> use TUTORIALS;
Database changed
mysql>
```
Now, you have selected the TUTORIALS database and all the subsequent operations will be performed on the TUTORIALS database.

**NOTE** − All the database names, table names, table fields name are case sensitive. So you would have to use the proper names while giving any SQL command.

## Selecting a MySQL Database Using PHP Script
PHP provides function **mysql_select_db** to select a database. It returns TRUE on success or FALSE on failure.

### Syntax
```
bool mysql_select_db( db_name, connection );
```


### Example
Here is an example showing you how to select a database.

```
<html>
   <head>
      <title>Selecting MySQL Database</title>
   </head>
   
   <body>
      <?php
         $dbhost = 'localhost:3036';
         $dbuser = 'guest';
         $dbpass = 'guest123';
         $conn = mysql_connect($dbhost, $dbuser, $dbpass);
         
         if(! $conn ) {
            die('Could not connect: ' . mysql_error());
         }
         echo 'Connected successfully';
         mysql_select_db( 'TUTORIALS' );
         
         mysql_close($conn);
      ?>
   </body>
</html>
```

[Previous Page](../mysql/mysql-drop-database.md) [Next Page](../mysql/mysql-data-types.md) 
