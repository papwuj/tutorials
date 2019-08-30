# MySQLi - Temporary Tables
The temporary tables could be very useful in some cases to keep temporary data. The most important thing that should be known for temporary tables is that they will be deleted when the current client session terminates.

As stated earlier, temporary tables will only last as long as the session is alive. If you run the code in a PHP script, the temporary table will be destroyed automatically when the script finishes executing. If you are connected to the MySQL database server through the MySQLi client program, then the temporary table will exist until you close the client or manually destroy the table.

## Example
Here is an example showing you usage of temporary table. Same code can be used in PHP scripts using **mysqli_query()** function.

```
mysql> CREATE TEMPORARY TABLE SalesSummary (
   -> product_name VARCHAR(50) NOT NULL
   -> , total_sales DECIMAL(12,2) NOT NULL DEFAULT 0.00
   -> , avg_unit_price DECIMAL(7,2) NOT NULL DEFAULT 0.00
   -> , total_units_sold INT UNSIGNED NOT NULL DEFAULT 0
   -> );
Query OK, 0 rows affected (0.00 sec)

mysql> INSERT INTO SalesSummary
   -> (product_name, total_sales, avg_unit_price, total_units_sold)
   -> VALUES
   -> ('cucumber', 100.25, 90, 2);

mysql> SELECT * FROM SalesSummary;
+--------------+-------------+----------------+------------------+
| product_name | total_sales | avg_unit_price | total_units_sold |
+--------------+-------------+----------------+------------------+
| cucumber     |      100.25 |          90.00 |                2 |
+--------------+-------------+----------------+------------------+
1 row in set (0.00 sec)
```
When you issue a SHOW TABLES command, then your temporary table would not be listed out in the list. Now, if you will log out of the MySQLi session and then you will issue a SELECT command, then you will find no data available in the database. Even your temporary table would also not exist.

## Dropping Temporary Tables
By default, all the temporary tables are deleted by MySQLi when your database connection gets terminated. Still if you want to delete them in between, then you do so by issuing DROP TABLE command.

Following is the example on dropping a temporary table −

```
mysql> DROP TABLE SalesSummary;
mysql>  SELECT * FROM SalesSummary;
ERROR 1146: Table 'TUTORIALS.SalesSummary' doesn't exist
```

[Previous Page](../mysqli/mysqli_indexes.md) [Next Page](../mysqli/mysqli_clone_tables.md) 
