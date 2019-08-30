# MySQLi - Clone Tables
There may be a situation when you need an exact copy of a table and CREATE TABLE ... SELECT doesn't suit your purposes because the copy must include the same indexes, default values, and so forth.

You can handle this situation by following steps −

   * Use SHOW CREATE TABLE to get a CREATE TABLE statement that specifies the source table's structure, indexes and all.
   * Modify the statement to change the table name to that of the clone table and execute the statement. This way, you will have exact clone table.
   * Optionally, if you need the table contents copied as well, issue an INSERT INTO ... SELECT statement, too.

## Example
Try out the following example to create a clone table for **tutorials_inf**.

## Step 1
Get complete structure about table.

```
mysql> SHOW CREATE TABLE tutorials_inf \G;
*************************** 1. row ***************************
       Table: tutorials_inf
Create Table: CREATE TABLE `tutorials_inf` (
   `id` int(11) NOT NULL,
   `name` varchar(20) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `AUTHOR_INDEX` (`name`),
   UNIQUE KEY `NAME_INDEX` (`name`),
   KEY `id` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1
1 row in set (0.05 sec)

ERROR: No query specified
```
## Step 2
Rename this table and create another table.

```
mysql> CREATE TABLE tutorials_clone(
   -> id int(11) NOT NULL,
   -> name varchar(20) NOT NULL,
   -> PRIMARY KEY (id),
   > UNIQUE KEY AUTHOR_INDEX (name),
   -> UNIQUE KEY NAME_INDEX (name),
   ->  KEY id (id));
Query OK, 0 rows affected (1.80 sec)
```
## Step 3
After executing step 2, you will create a clone table in your database. If you want to copy data from old table then you can do it by using INSERT INTO... SELECT statement.

```
mysql> INSERT INTO tutorials_clone(id,name) SELECT id,name from tutorials_inf;
Query OK, 4 rows affected (0.19 sec)
Records: 4  Duplicates: 0  Warnings: 0
```
Finally, you will have exact clone table as you wanted to have.


[Previous Page](../mysqli/mysqli_temporary_tables.md) [Next Page](../mysqli/obtaining_using_mysqli_metadata.md) 
