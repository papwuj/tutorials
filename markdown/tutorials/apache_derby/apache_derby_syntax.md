# Apache Derby - Syntax
This chapter gives you the syntax of all the Apache Derby SQL statements.

All the statements start with any of the keywords like SELECT, INSERT, UPDATE, DELETE, ALTER, DROP, CREATE, USE, SHOW and all the statements end with a semicolon (;).

The SQL statements of Apache Derby are case in sensitives including table names.

## CREATE Statement
```
CREATE TABLE table_name (
   column_name1 column_data_type1 constraint (optional),
   column_name2 column_data_type2 constraint (optional),
   column_name3 column_data_type3 constraint (optional)
);
```
## DROP TABLE
```
DROP TABLE table_name;
```
## INSERT Statement
```
INSERT INTO table_name VALUES (column_name1, column_name2, ...);
```
## SELECT Statement
```
SELECT column_name, column_name, ... FROM table_name;
```
## UPDATE Statement
```
UPDATE table_name
   SET column_name = value, column_name = value, ...
   WHERE conditions;
```
## DELETE Statement
```
DELETE FROM table_name WHERE condition;
```
## DESCRIBE Statement
```
Describe table_name
```
## SQL TRUNCATE TABLE Statement
```
TRUNCATE TABLE table_name;
```
## ALTER Statement – Adding column
```
ALTER TABLE table_name ADD COLUMN column_name column_type;
```
## ALTER Statement – Adding constraint
```
ALTER TABLE table_name ADD CONSTRAINT constraint_name constraint (column_name);
```
## ALTER Statement – Dropping column
```
ALTER TABLE table_name DROP COLUMN column_name;
```
## ALTER Statement – Dropping constraint
```
ALTER TABLE table_name DROP CONSTRAINT constraint_name;
```
## WHERE Clause
```
SELECT * from table_name WHERE condition;
or,
DELETE from table_name WHERE condition;
or,
UPDATE table_name SET column_name = value WHERE condition;
```
## GROUP BY Clause
```
SELECT column1, column2, . . . table_name GROUP BY column1, column2, . . .;
```
## ORDER BY Clause
```
SELECT * FROM table_name ORDER BY column_name ASC|DESC.
```
## Having Clause
```
SELECT column1, column2 . . . from table_name GROUP BY column having
condition;
```
## Creating Index
```
CTREATE INDEX index_name on table_name (column_name);
```
## Creating an UNIQUE index
```
CREATE UNIQUE INDEX index_name on table_name (column_name);
```
## Creating a COMPOSITE index
```
CREATE INDEX index_name on table_name (column_name1, column_name2);
```
## Displaying the Indexes
```
SHOW INDEXES FROM table_name;
```
## Dropping Indexes
```
DROP INDEX index_name;
```

[Previous Page](../apache_derby/apache_derby_tools.md) [Next Page](../apache_derby/apache_derby_data_types.md) 
