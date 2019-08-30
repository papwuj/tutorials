# MySQLi - Create Tables
The table creation command requires −

   * Name of the table
   * Names of fields
   * Definitions for each field

## Syntax
Here is generic SQL syntax to create a MySQLi table −

```
CREATE TABLE table_name (column_name column_type);
```
Now, we will create following table in **TUTORIALS** database.

```
CREATE TABLE tutorials_inf(
   id INT AUTO_INCREMENT,
   name VARCHAR(20) NOT NULL,
   primary key (id),
);
```
Here few items need explanation −

   * Field Attribute **NOT NULL** is being used because we do not want this field to be NULL. So if user will try to create a record with NULL value, then MySQLi will raise an error.
   * Field Attribute **AUTO_INCREMENT** tells MySQLi to go ahead and add the next available number to the id field.
   * Keyword **PRIMARY KEY** is used to define a column as primary key. You can use multiple columns separated by comma to define a primary key.

## Creating Tables from Command Prompt
This is easy to create a MySQLi table from mysql&gt; prompt. You will use SQL command **CREATE TABLE** to create a table.

### Example
Here is an example, which creates **tutorials_tbl** −

```
root@host# mysql -u root -p
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> CREATE TABLE tutorials_inf(
   id INT AUTO_INCREMENT,name VARCHAR(20) NOT NULL,primary key (id));
Query OK, 0 rows affected (0.16 sec)

mysql>
```
**NOTE** − MySQLi does not terminate a command until you give a semicolon (;) at the end of SQL command.

## Creating Tables Using PHP Script
To create new table in any existing database you would need to use PHP function **mysqli_query()**. You will pass its second argument with proper SQL command to create a table.

### Example
Here is an example to create a table using PHP script −

```
<html>
   <head>
      <title>Creating MySQLi Tables</title>
   </head>
   
   <body>
      <?php  
         $host = 'localhost:3306';  
         $user = 'root';  
         $pass = '<Password Here>';  
         $dbname = 'TUTORIALS';  
         $conn = mysqli_connect($host, $user, $pass,$dbname);  
         
         if(!$conn){  
            die('Could not connect: '.mysqli_connect_error());  
         }  
         echo 'Connected successfully<br/>';  
  
         $sql = "create table tutorials_inf(
            id INT AUTO_INCREMENT,name VARCHAR(20) NOT NULL,primary key (id))";  
         
         if(mysqli_query($conn, $sql)){  
         echo "Table created successfully";  
         } else {  
            echo "Table is not created successfully ";  
         }  
         mysqli_close($conn);  
      ?>  
   </body>
</html>
```
The sample output should be like this −

```
Connected successfully
Table created successfully
```

[Previous Page](../mysqli/mysqli_data_types.md) [Next Page](../mysqli/mysqli_drop_tables.md) 
