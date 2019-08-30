# MySQLi - LIKE Clause
We have seen SQL **SELECT** command to fetch data from MySQLi table. We can also use a conditional clause called **WHERE** clause to select required records.

A WHERE clause with equals sign (=) works fine where we want to do an exact match. Like if "name = 'sai'". But there may be a requirement where we want to filter out all the results where name should contain "johar". This can be handled using SQL **LIKE** clause along with WHERE clause.

If SQL LIKE clause is used along with % characters, then it will work like a meta character (*) in UNIX while listing out all the files or directories at command prompt.

Without a % character, LIKE clause is very similar to equals sign along with WHERE clause.

## Syntax
Here is generic SQL syntax of SELECT command along with LIKE clause to fetch data from MySQLi table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
WHERE field1 LIKE condition1 [AND [OR]] filed2 = 'somevalue'
```
   * You can specify any condition using WHERE clause.
   * You can use LIKE clause along with WHERE clause.
   * You can use LIKE clause in place of equals sign.
   * When LIKE is used along with % sign then it will work like a meta character search.
   * You can specify more than one conditions using **AND** or **OR** operators.
   * A WHERE...LIKE clause can be used along with DELETE or UPDATE SQL command also to specify a condition.

## Using LIKE clause at Command Prompt
This will use SQL SELECT command with WHERE...LIKE clause to fetch selected data from MySQLi table tutorials_inf.

### Example
Following example will return all the records from **tutorials_inf** table for which author name ends with **johar** −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf 
   -> WHERE name LIKE '%johar';
+----+-------+
| id | name  |
+----+-------+
|  2 | johar |
+----+-------+
1 row in set (0.00 sec)

mysql>
```
## Using LIKE clause inside PHP Script
You can use similar syntax of WHERE...LIKE clause into PHP function **mysqli_query()**. This function is used to execute SQL command and later another PHP function **mysqli_fetch_array()** can be used to fetch all the selected data if WHERE...LIKE clause is used along with SELECT command.

But if WHERE...LIKE clause is being used with DELETE or UPDATE command, then no further PHP function call is required.

### Example
Try out the following example to return all the records from **tutorials_inf** table for which name contains **johar** −

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
   $sql = 'SELECT * FROM tutorials_inf WHERE name LIKE "%johar%"';
   $result = mysqli_query($conn, $sql);
   $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
   
   printf ("%s \n",$row["name"]);
   mysqli_free_result($result);
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
johar
```

[Previous Page](../mysqli/mysqli_delete_query.md) [Next Page](../mysqli/mysqli_sorting_results.md) 
