# MySQLi - Sorting Results
We have seen SQL **SELECT** command to fetch data from MySQLi table. When you select rows, the MySQLi server is free to return them in any order, unless you instruct it otherwise by saying how to sort the result. But you sort a result set by adding an ORDER BY clause that names the column or columns you want to sort by.

## Syntax
Here is generic SQL syntax of SELECT command along with ORDER BY clause to sort data from MySQL table −

```
SELECT field1, field2,...fieldN table_name1, table_name2...
ORDER BY field1, [field2...] [ASC [DESC]]
```
   * You can sort returned result on any field provided that filed is being listed out.
   * You can sort result on more than one field.
   * You can use keyword ASC or DESC to get result in ascending or descending order. By default, it's ascending order.
   * You can use WHERE...LIKE clause in usual way to put condition.

## Using ORDER BY clause at Command Prompt
This will use SQL SELECT command with ORDER BY clause to fetch data from MySQLi table tutorials_inf.

### Example
Try out the following example, which returns result in descending order.

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * from tutorials_inf ORDER BY id desc;
+----+-------+
| id | name  |
+----+-------+
|  4 | ram   |
|  3 | raghu |
|  2 | johar |
|  1 | sai   |
+----+-------+
4 rows in set (0.00 sec)

mysql>
```
Verify all id's are listed out in descending order.

## Using ORDER BY clause inside PHP Script
You can use similar syntax of ORDER BY clause into PHP function **mysqli_query()**. This function is used to execute SQL command and later another PHP function **mysqli_fetch_array()** can be used to fetch all the selected data.

### Example
Try out the following example, which returns result in descending order of tutorial author.

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
   echo 'Connected successfully</br>';
   $sql = 'SELECT * from tutorials_inf ORDER BY id desc';
   
   if($result = mysqli_query($conn, $sql)){
      if(mysqli_num_rows($result) > 0){
         echo "<table>";
         echo "<tr>";
         echo "<th>id</th>";
         echo "<th>name</th>";
         echo "</tr>";
         
         while($row = mysqli_fetch_array($result)){
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['name'] . "</td>";
            echo "</tr>";
         }
         echo "</table>";
         mysqli_free_result($result);
      } else {
         echo "No records matching your query were found.";
      }
   } else {
      echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
```
The sample output should be like this −

```
Connected successfully
id	name
4	ram
3	raghu
2	johar
1	sai
```

[Previous Page](../mysqli/mysqli_like_clause.md) [Next Page](../mysqli/mysqli_using_joins.md) 
