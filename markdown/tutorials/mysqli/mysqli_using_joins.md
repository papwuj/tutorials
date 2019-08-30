# MySQLi - Using Joins
Thus far, we have only been getting data from one table at a time. This is fine for simple takes, but in most real world MySQL usage, you will often need to get data from multiple tables in a single query.

You can use multiple tables in your single SQL query. The act of joining in MySQLi refers to smashing two or more tables into a single table.

You can use JOINS in SELECT, UPDATE and DELETE statements to join MySQLi tables. We will see an example of LEFT JOIN also which is different from simple MySQLi JOIN.

## Using Joins at Command Prompt
Suppose we have two tables **tutorials_bks** and **tutorials_inf**, in TUTORIALS. A complete listing is given below −

### Example
Try out the following examples −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> SELECT * FROM tcount_bks;
+----+---------+
| id | book    |
+----+---------+
|  1 | java    |
|  2 | java    |
|  3 | html    |
|  4 | c++     |
|  5 | Android |
+----+---------+
5 rows in set (0.00 sec)

mysql> SELECT * from tutorials_inf;
+----+-------+
| id | name  |
+----+-------+
|  1 | sai   |
|  2 | johar |
|  3 | raghu |
|  4 | ram   |
+----+-------+
4 rows in set (0.00 sec)

mysql>
```
Now we can write a SQL query to join these two tables. This query will select all the names from table **tutorials_inf** and will pickup corresponding number of tutorials from**tutorials_bks**.

```
mysql> SELECT a.id, a.name,b.id FROM tutorials_inf a,tutorials_bks b WHERE a.id = b.id;
+----+-------+----+
| id | name  | id |
+----+-------+----+
|  1 | sai   |  1 |
|  2 | johar |  2 |
|  3 | raghu |  3 |
|  4 | ram   |  4 |
+----+-------+----+
4 rows in set (0.00 sec)
mysql>
```
In tutorials_bks table, we have 5 records but in the above example it filters and gives only 4 id records as per query

## Using Joins in PHP Script
You can use any of the above-mentioned SQL query in PHP script. You only need to pass SQL query into PHP function **mysqli_query()** and then you will fetch results in usual way.

### Example
Try out the following example −

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
   $sql = 'SELECT a.id, a.name,b.id FROM tutorials_inf a,tutorials_bks b WHERE a.id = b.id';
   
   if($result = mysqli_query($conn, $sql)) {
      if(mysqli_num_rows($result) > 0) {
         echo "<table>";
         echo "<tr>";
         echo "<th>id</th>";
         echo "<th>name</th>";
         echo "<th>id</th>";
         echo "</tr>";
         
         while($row = mysqli_fetch_array($result)){
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['name'] . "</td>";
				echo "<td>" . $row['id'] . "</td>";
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
id	name	id
1	sai	1
2	johar	2
3	raghu	3
4	ram	4
```
## MySQL LEFT JOIN
A MySQLi left join is different from a simple join. A MySQLi LEFT JOIN gives extra consideration to the table that is on the left.

If I do a LEFT JOIN, I get all the records that match in the same way and IN ADDITION I get an extra record for each unmatched record in the left table of the join - thus ensuring (in my example) that every name gets a mention −

### Example
Try out the following example to understand LEFT JOIN −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql>SELECT a.id, a.name,b.id FROM tutorials_inf a LEFT JOIN tutorials_bks b ON a.id = b.id;
```
You would need to do more practice to become familiar with JOINS. This is a bit complex concept in MySQL/SQL and will become more clear while doing real examples.


[Previous Page](../mysqli/mysqli_sorting_results.md) [Next Page](../mysqli/mysqli_handling_null_values.md) 
