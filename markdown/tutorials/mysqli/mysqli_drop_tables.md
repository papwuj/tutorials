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

[Previous Page](../mysqli/mysqli_create_tables.md) [Next Page](../mysqli/mysqli_insert_query.md) 
