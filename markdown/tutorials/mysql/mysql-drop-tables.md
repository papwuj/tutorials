# Drop MySQL Tables
It is very easy to drop an existing MySQL table, but you need to be very careful while deleting any existing table because the data lost will not be recovered after deleting a table.

### Syntax
Here is a generic SQL syntax to drop a MySQL table −

```
DROP TABLE table_name ;
```
## Dropping Tables from the Command Prompt
To drop tables from the command prompt, we need to execute the DROP TABLE SQL command at the mysql&gt; prompt.

### Example
The following program is an example which deletes the **tutorials_tbl** −

```
root@host# mysql -u root -p
Enter password:*******
mysql> use TUTORIALS;
Database changed
mysql> DROP TABLE tutorials_tbl
Query OK, 0 rows affected (0.8 sec)
mysql>
```
## Dropping Tables Using PHP Script
To drop an existing table in any database, you would need to use the PHP function **mysql_query()**. You will pass its second argument with a proper SQL command to drop a table.

### Example
```
<html>
   <head>
      <title>Creating MySQL Tables</title>
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
         $sql = "DROP TABLE tutorials_tbl";
         mysql_select_db( 'TUTORIALS' );
         $retval = mysql_query( $sql, $conn );
         
         if(! $retval ) {
            die('Could not delete table: ' . mysql_error());
         }
         echo "Table deleted successfully\n";
         mysql_close($conn);
      ?>
   </body>
</html>
```

[Previous Page](../mysql/mysql-create-tables.md) [Next Page](../mysql/mysql-insert-query.md) 
