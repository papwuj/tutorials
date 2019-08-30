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

[Previous Page](../mysqli/mysqli_where_clause.md) [Next Page](../mysqli/mysqli_delete_query.md) 
