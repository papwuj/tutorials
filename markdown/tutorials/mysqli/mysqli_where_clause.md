# MySQLi - WHERE Clause
We have seen SQL **SELECT** command to fetch data from MySQLi table. We can use a conditional clause called **WHERE** clause to filter out results. Using WHERE clause, we can specify a selection criteria to select required records from a table.

## Syntax
Here is generic SQL syntax of SELECT command with WHERE clause to fetch data from MySQLi table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
[WHERE condition1 [AND [OR]] condition2.....
```
   * You can use one or more tables separated by comma to include various conditions using a WHERE clause, but WHERE clause is an optional part of SELECT command.
   * You can specify any condition using WHERE clause.
   * You can specify more than one conditions using **AND** or **OR** operators.
   * A WHERE clause can be used along with DELETE or UPDATE SQL command also to specify a condition.

The **WHERE** clause works like an if condition in any programming language. This clause is used to compare given value with the field value available in MySQLi table. If given value from outside is equal to the available field value in MySQLi table, then it returns that row.

Here is the list of operators, which can be used with **WHERE** clause.

Assume field A holds 10 and field B holds 20, then −

The WHERE clause is very useful when you want to fetch selected rows from a table, especially when you use **MySQLi Join**. Joins are discussed in another chapter.

It is a common practice to search records using **Primary Key** to make search fast.

If given condition does not match any record in the table, then query would not return any row.

## Fetching Data from Command Prompt
This will use SQL SELECT command with WHERE clause to fetch selected data from MySQLi table tutorials_inf.

### Example
Following example will return all the records from **tutorials_inf** table for which name is **sai** −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql>SELECT * from tutorials_inf where name = 'sai';
+----+------+
| id | name |
+----+------+
|  1 | SAI  |
+----+------+
1 row in set (0.00 sec)

mysql>
```
Unless performing a **LIKE** comparison on a string, the comparison is not case sensitive. You can make your search case sensitive using **BINARY** keyword as follows −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf \WHERE BINARY name = 'sai';
Empty set (0.02 sec)

mysql>
```
## Fetching Data Using PHP Script:
You can use same SQL SELECT command with WHERE CLAUSE into PHP function **mysqli_query()**.

### Example
Following example will return all the records from **tutorials_inf** table for which name is **sai** −

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
   $sql = 'SELECT * from tutorials_inf where name="sai"';
   $result = mysqli_query($conn, $sql);

   if (mysqli_num_rows($result) > 0) {
      while($row = mysqli_fetch_assoc($result)) {
         echo "Name: " . $row["name"]. "<br>";
      }
   } else {
      echo "0 results";
   }
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
Name: SAI
```

[Previous Page](../mysqli/mysqli_select_query.md) [Next Page](../mysqli/mysqli_update_query.md) 
