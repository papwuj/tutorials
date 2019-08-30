# MySQLi - Handling NULL Values
We have seen SQL **SELECT** command along with **WHERE** clause to fetch data from MySQLi table, but when we try to give a condition, which compare field or column value to **NULL**, it does not work properly.

To handle such situation MySQLi provides three operators

   * **IS NULL** − operator returns true if column value is NULL.
   * **IS NOT NULL** − operator returns true if column value is not NULL.
   * **<=>** − operator compares values, which (unlike the = operator) is true even for two NULL values.

Conditions involving NULL are special. You cannot use = NULL or != NULL to look for NULL values in columns. Such comparisons always fail because it's impossible to tell whether or not they are true. Even NULL = NULL fails.

To look for columns that are or are not NULL, use IS NULL or IS NOT NULL.

## Using NULL values at Command Prompt
Suppose a table **tutorials_bks** in TUTORIALS database and it contains two columns **id** and **name**, where a NULL name indicates that the value is unknown −

### Example
Try out the following examples −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> INSERT INTO tutorials_bks (book) values('');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('NULL');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('NULL');
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO tutorials_bks (book) values('NULL');
Query OK, 1 row affected (0.08 sec)

+----+---------+
| id | book    |
+----+---------+
|  1 | java    |
|  2 | java    |
|  3 | html    |
|  4 | c++     |
|  5 | Android |
|  6 |         |
|  7 |         |
|  8 |         |
|  9 | NULL    |
| 10 | NULL    |
| 11 | NULL    |
+----+---------+
11 rows in set (0.00 sec)

mysql>
```
To find records where the name column is or is not NULL, the queries should be written like this −

```
mysql> SELECT * FROM tutorials_bks WHERE book = "null";
+----+------+
| id | book |
+----+------+
|  9 | NULL |
| 10 | NULL |
| 11 | NULL |
+----+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM tutorials_bks WHERE book ! = "null";
+----+---------+
| id | book    |
+----+---------+
|  1 | java    |
|  2 | java    |
|  3 | html    |
|  4 | c++     |
|  5 | Android |
|  6 |         |
|  7 |         |
|  8 |         |
+----+---------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM tutorials_bks WHERE book = "";
+----+------+
| id | book |
+----+------+
|  6 |      |
|  7 |      |
|  8 |      |
+----+------+
3 rows in set (0.01 sec)
```
## Handling NULL Values in PHP Script
You can use  condition to prepare a query based on NULL value.

### Example
Following example takes tutorial_count from outside and then compares it with the value available in the table.

```
<?php
   $dbhost = 'localhost:3036';
   $dbuser = 'root';
   $dbpass = 'rootpassword';
   $conn = mysql_connect($dbhost, $dbuser, $dbpass);
   
   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }
   if( isset($tutorial_count )) {
      $sql = 'SELECT tutorial_author, tutorial_count FROM  tcount_tbl
         WHERE tutorial_count = $tutorial_count';
   } else {
      $sql = 'SELECT tutorial_author, tutorial_count
         FROM  tcount_tbl WHERE tutorial_count IS $tutorial_count';
   }
   mysql_select_db('TUTORIALS');
   $retval = mysql_query( $sql, $conn );
   
   if(! $retval ) {
      die('Could not get data: ' . mysql_error());
   }
   while($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {
      echo "Author:{$row['tutorial_author']}  <br> ".
         "Count: {$row['tutorial_count']} <br> ".
         "--------------------------------<br>";
   } 
   echo "Fetched data successfully\n";
   mysql_close($conn);
?>
```

[Previous Page](../mysqli/mysqli_using_joins.md) [Next Page](../mysqli/mysqli_regexps.md) 
