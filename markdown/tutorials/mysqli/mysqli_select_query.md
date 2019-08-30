# MySQLi - Select Query
The SQL **SELECT** command is used to fetch data from MySQLi database. You can use this command at mysql&gt; prompt as well as in any script like PHP.

## Syntax
Here is generic SQL syntax of SELECT command to fetch data from MySQLi table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
[WHERE Clause]
[OFFSET M ][LIMIT N]
```
   * You can use one or more tables separated by comma to include various conditions using a WHERE clause, but WHERE clause is an optional part of SELECT command.
   * You can fetch one or more fields in a single SELECT command.
   * You can specify star (*) in place of fields. In this case, SELECT will return all the fields.
   * You can specify any condition using WHERE clause.
   * You can specify an offset using **OFFSET** from where SELECT will start returning records. By default offset is zero.
   * You can limit the number of returns using **LIMIT** attribute.

## Fetching Data from Command Prompt −
This will use SQL SELECT command to fetch data from MySQLi table tutorials_tbl

### Example
Following example will return all the records from **tutorials_inf** table −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf;
+----+------+
| id | name |
+----+------+
|  1 | sai  |
|  2 | kit  |
|  3 | ram  |
+----+------+
3 rows in set (0.00 sec)

mysql>
```
## Fetching Data Using PHP Script
You can use same SQL SELECT command into PHP function **mysqli_query()**. This function is used to execute SQL command and later another PHP function **mysqli_fetch_assoc()** can be used to fetch all the selected data. This function returns row as an associative array, a numeric array, or both. This function returns FALSE if there are no more rows.

Below is a simple example to fetch records from **tutorials_inf** table.

### Example
Try out the following example to display all the records from tutorials_inf table.

```
<html>
   <head>
      <title>Selecting Table in MySQLi Server</title>
   </head>

   <body>
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
         $sql = 'SELECT name FROM tutorials_inf';
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
   </body>
</html>
```
The content of the rows are assigned to the variable $row and the values in row are then printed.

**NOTE** − Always remember to put curly brackets when you want to insert an array value directly into a string.

The sample output should be like this −

```
Connected successfully
Name: ram
Name: kit
Name: abc
```

[Previous Page](../mysqli/mysqli_insert_query.md) [Next Page](../mysqli/mysqli_where_clause.md) 
