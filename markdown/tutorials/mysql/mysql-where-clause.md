# MySQL - WHERE Clause
We have seen the SQL **SELECT** command to fetch data from a MySQL table. We can use a conditional clause called the **WHERE Clause** to filter out the results. Using this WHERE clause, we can specify a selection criteria to select the required records from a table.

### Syntax
The following code block has a generic SQL syntax of the SELECT command with the WHERE clause to fetch data from the MySQL table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
[WHERE condition1 [AND [OR]] condition2.....
```
   * You can use one or more tables separated by a comma to include various conditions using a WHERE clause, but the WHERE clause is an optional part of the SELECT command.
   * You can specify any condition using the WHERE clause.
   * You can specify more than one condition using the **AND** or the **OR** operators.
   * A WHERE clause can be used along with DELETE or UPDATE SQL command also to specify a condition.

The **WHERE** clause works like an **if condition** in any programming language. This clause is used to compare the given value with the field value available in a MySQL table. If the given value from outside is equal to the available field value in the MySQL table, then it returns that row.

Here is the list of operators, which can be used with the **WHERE** clause.

Assume field A holds 10 and field B holds 20, then −

The WHERE clause is very useful when you want to fetch the selected rows from a table, especially when you use the **MySQL Join**. Joins are discussed in another chapter.

It is a common practice to search for records using the **Primary Key** to make the search faster.

If the given condition does not match any record in the table, then the query would not return any row.

## Fetching Data from the Command Prompt
This will use the SQL SELECT command with the WHERE clause to fetch the selected data from the MySQL table – **tutorials_tbl**.

### Example
The following example will return all the records from the **tutorials_tbl** table for which the author name is **Sanjay**.

```
root@host# mysql -u root -p password;
Enter password:*******
mysql> use TUTORIALS;
Database changed
mysql> SELECT * from tutorials_tbl WHERE tutorial_author = 'Sanjay';
+-------------+----------------+-----------------+-----------------+
| tutorial_id | tutorial_title | tutorial_author | submission_date |
+-------------+----------------+-----------------+-----------------+
|      3      | JAVA Tutorial  |      Sanjay     |    2007-05-21   |      
+-------------+----------------+-----------------+-----------------+
1 rows in set (0.01 sec)

mysql>
```
Unless performing a **LIKE** comparison on a string, the comparison is not case sensitive. You can make your search case sensitive by using the **BINARY** keyword as follows −

```
root@host# mysql -u root -p password;
Enter password:*******
mysql> use TUTORIALS;
Database changed
mysql> SELECT * from tutorials_tbl \
   WHERE BINARY tutorial_author = 'sanjay';
Empty set (0.02 sec)

mysql>
```
## Fetching Data Using a PHP Script
You can use the same SQL SELECT command with the WHERE CLAUSE into the PHP function **mysql_query()**. This function is used to execute the SQL command and later another PHP function **mysql_fetch_array()** can be used to fetch all the selected data. This function returns a row as an associative array, a numeric array, or both. This function returns FALSE if there are no more rows.

### Example
The following example will return all the records from the **tutorials_tbl** table for which the author name is **Sanjay** −

```
<?php
   $dbhost = 'localhost:3036';
   $dbuser = 'root';
   $dbpass = 'rootpassword';
   $conn = mysql_connect($dbhost, $dbuser, $dbpass);

   if(! $conn ) {
      die('Could not connect: ' . mysql_error());
   }

   $sql = 'SELECT tutorial_id, tutorial_title, 
      tutorial_author, submission_date
      FROM tutorials_tbl
      WHERE tutorial_author = "Sanjay"';

   mysql_select_db('TUTORIALS');
   $retval = mysql_query( $sql, $conn );

   if(! $retval ) {
      die('Could not get data: ' . mysql_error());
   }

   while($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {
      echo "Tutorial ID :{$row['tutorial_id']}  <br> ".
      "Title: {$row['tutorial_title']} <br> ".
      "Author: {$row['tutorial_author']} <br> ".
      "Submission Date : {$row['submission_date']} <br> ".
      "--------------------------------<br>";
   } 

   echo "Fetched data successfully\n";
   mysql_close($conn);
?>
```

[Previous Page](../mysql/mysql-select-query.md) [Next Page](../mysql/mysql-update-query.md) 
