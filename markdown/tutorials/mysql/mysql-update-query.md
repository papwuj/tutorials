# MySQL - UPDATE Query
There may be a requirement where the existing data in a MySQL table needs to be modified. You can do so by using the SQL **UPDATE** command. This will modify any field value of any MySQL table.

### Syntax
The following code block has a generic SQL syntax of the UPDATE command to modify the data in the MySQL table −

```
UPDATE table_name SET field1 = new-value1, field2 = new-value2
[WHERE Clause]
```
   * You can update one or more field altogether.
   * You can specify any condition using the WHERE clause.
   * You can update the values in a single table at a time.

The WHERE clause is very useful when you want to update the selected rows in a table.

## Updating Data from the Command Prompt
This will use the SQL UPDATE command with the WHERE clause to update the selected data in the MySQL table **tutorials_tbl**.

### Example
The following example will update the **tutorial_title** field for a record having the tutorial_id as 3.

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> UPDATE tutorials_tbl 
   -> SET tutorial_title = 'Learning JAVA' 
   -> WHERE tutorial_id = 3;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
```
## Updating Data Using a PHP Script
You can use the SQL UPDATE command with or without the WHERE CLAUSE into the PHP function – **mysql_query()**. This function will execute the SQL command in a similar way it is executed at the mysql&gt; prompt.

### Example
The following example to update the **tutorial_title** field for a record having tutorial_id as 3.

```
<?php
   $dbhost = 'localhost:3036';
   $dbuser = 'root';
   $dbpass = 'rootpassword';
   $conn = mysql_connect($dbhost, $dbuser, $dbpass);
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }

   $sql = 'UPDATE tutorials_tbl
      SET tutorial_title="Learning JAVA"
      WHERE tutorial_id=3';

   mysql_select_db('TUTORIALS');
   $retval = mysql_query( $sql, $conn );
   
   if(! $retval ) {
      die('Could not update data: ' . mysql_error());
   }
   echo "Updated data successfully\n";
   mysql_close($conn);
?>
```

[Previous Page](../mysql/mysql-where-clause.md) [Next Page](../mysql/mysql-delete-query.md) 
