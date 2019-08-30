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

[Previous Page](../mysqli/mysqli_connection.md) [Next Page](../mysqli/mysqli_drop_database.md) 
