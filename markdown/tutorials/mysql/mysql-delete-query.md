# MySQL - DELETE Query
If you want to delete a record from any MySQL table, then you can use the SQL command **DELETE FROM**. You can use this command at the mysql&gt; prompt as well as in any script like PHP.

### Syntax
The following code block has a generic SQL syntax of the DELETE command to delete data from a MySQL table.

```
DELETE FROM table_name [WHERE Clause]
```
   * If the WHERE clause is not specified, then all the records will be deleted from the given MySQL table.
   * You can specify any condition using the WHERE clause.
   * You can delete records in a single table at a time.

The WHERE clause is very useful when you want to delete selected rows in a table.

## Deleting Data from the Command Prompt
This will use the SQL DELETE command with the WHERE clause to delete selected data into the MySQL table – **tutorials_tbl**.

### Example
The following example will delete a record from the tutorial_tbl whose tutorial_id is 3.

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> DELETE FROM tutorials_tbl WHERE tutorial_id=3;
Query OK, 1 row affected (0.23 sec)

mysql>
```
## Deleting Data Using a PHP Script
You can use the SQL DELETE command with or without the WHERE CLAUSE into the PHP function – **mysql_query()**. This function will execute the SQL command in the same way as it is executed at the mysql&gt; prompt.

### Example
Try the following example to delete a record from the tutorial_tbl whose tutorial_id is 3.

```
<?php
   $dbhost = 'localhost:3036';
   $dbuser = 'root';
   $dbpass = 'rootpassword';
   $conn = mysql_connect($dbhost, $dbuser, $dbpass);
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }

   $sql = 'DELETE FROM tutorials_tbl WHERE tutorial_id = 3';

   mysql_select_db('TUTORIALS');
   $retval = mysql_query( $sql, $conn );

   if(! $retval ) {
      die('Could not delete data: ' . mysql_error());
   }
   echo "Deleted data successfully\n";
   mysql_close($conn);
?>
```

[Previous Page](../mysql/mysql-update-query.md) [Next Page](../mysql/mysql-like-clause.md) 
