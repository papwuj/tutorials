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

[Previous Page](../mysqli/mysqli_create_database.md) [Next Page](../mysqli/mysqli_select_database.md) 
