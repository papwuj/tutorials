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

[Previous Page](../mysqli/mysqli_update_query.md) [Next Page](../mysqli/mysqli_like_clause.md) 
