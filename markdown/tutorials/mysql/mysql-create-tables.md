# Create MySQL Tables
To begin with, the table creation command requires the following details −

   * Name of the table
   * Name of the fields
   * Definitions for each field

### Syntax
Here is a generic SQL syntax to create a MySQL table −

```
CREATE TABLE table_name (column_name column_type);
```
Now, we will create the following table in the **TUTORIALS** database.

```
create table tutorials_tbl(
   tutorial_id INT NOT NULL AUTO_INCREMENT,
   tutorial_title VARCHAR(100) NOT NULL,
   tutorial_author VARCHAR(40) NOT NULL,
   submission_date DATE,
   PRIMARY KEY ( tutorial_id )
);
```
Here, a few items need explanation −

   * Field Attribute **NOT NULL** is being used because we do not want this field to be NULL. So, if a user will try to create a record with a NULL value, then MySQL will raise an error.
   * Field Attribute **AUTO_INCREMENT** tells MySQL to go ahead and add the next available number to the id field.
   * Keyword **PRIMARY KEY** is used to define a column as a primary key. You can use multiple columns separated by a comma to define a primary key.

## Creating Tables from Command Prompt
It is easy to create a MySQL table from the mysql&gt; prompt. You will use the SQL command **CREATE TABLE** to create a table.

### Example
Here is an example, which will create **tutorials_tbl** −

```
root@host# mysql -u root -p
Enter password:*******
mysql> use TUTORIALS;
Database changed
mysql> CREATE TABLE tutorials_tbl(
   -> tutorial_id INT NOT NULL AUTO_INCREMENT,
   -> tutorial_title VARCHAR(100) NOT NULL,
   -> tutorial_author VARCHAR(40) NOT NULL,
   -> submission_date DATE,
   -> PRIMARY KEY ( tutorial_id )
   -> );
Query OK, 0 rows affected (0.16 sec)
mysql>
```
**NOTE** − MySQL does not terminate a command until you give a semicolon (;) at the end of SQL command.

## Creating Tables Using PHP Script
To create new table in any existing database you would need to use PHP function **mysql_query()**. You will pass its second argument with a proper SQL command to create a table.

### Example
The following program is an example to create a table using PHP script −

```
<html>
   <head>
      <title>Creating MySQL Tables</title>
   </head>
   
   <body>
      <?php
         $dbhost = 'localhost:3036';
         $dbuser = 'root';
         $dbpass = 'rootpassword';
         $conn = mysql_connect($dbhost, $dbuser, $dbpass);
         
         if(! $conn ) {
            die('Could not connect: ' . mysql_error());
         }
         echo 'Connected successfully<br />';
         $sql = "CREATE TABLE tutorials_tbl( ".
            "tutorial_id INT NOT NULL AUTO_INCREMENT, ".
            "tutorial_title VARCHAR(100) NOT NULL, ".
            "tutorial_author VARCHAR(40) NOT NULL, ".
            "submission_date DATE, ".
            "PRIMARY KEY ( tutorial_id )); ";
         mysql_select_db( 'TUTORIALS' );
         $retval = mysql_query( $sql, $conn );
         
         if(! $retval ) {
            die('Could not cr
```

[Previous Page](../mysql/mysql-data-types.md) [Next Page](../mysql/mysql-drop-tables.md) 
