# MySQLi - Insert Query
To insert data into MySQLi table, you would need to use SQL **INSERT INTO** command. You can insert data into MySQLi table by using mysql&gt; prompt or by using any script like PHP.

## Syntax
Here is generic SQL syntax of INSERT INTO command to insert data into MySQLi table:

```
INSERT INTO table_name 
   ( field1, field2,...fieldN )
   VALUES
   ( value1, value2,...valueN );
```
To insert string data types, it is required to keep all the values into double or single quote, for example:- **"value"**.

## Inserting Data from Command Prompt
This will use SQL INSERT INTO command to insert data into MySQLi table tutorials_inf.

### Example
Following example will create 3 records into **tutorials_tbl** table −

```
root@host# mysql -u root -p password;
Enter password:*******

mysql> use TUTORIALS;
Database changed

mysql> INSERT INTO tutorials_inf 
   ->(id, name)
   ->VALUES
   ->(10, "John Poul");
Query OK, 1 row affected (0.01 sec)
```
**NOTE** − Please note that all the arrow signs (-&gt;) are not part of SQL command; they are indicating a new line and they are created automatically by MySQL prompt while pressing enter key without giving a semicolon at the end of each line of the command.

## Inserting Data Using PHP Script
You can use same SQL INSERT INTO command into PHP function **mysqli_query()** to insert data into a MySQLi table.

### Example
This example will take three parameters from user and will insert them into MySQLi table −

```
<html>
   <head>
      <title>Add New Record in MySQLi Database</title>
      <link rel = "stylesheet" type = "text/css" href = "style.css">
   </head>
   
   <body>
      <div id = "main">
         <form action = "" method = "post">
            <label>Name :</label>
            <input type = "text" name = "name" id = "name" />
            <br />
            <br />
            <input type = "submit" value ="Submit" name = "submit"/>
            <br />
         </form>
      </div>
      
      <?php
         if(isset($_POST["submit"])){
            $servername = "localhost:3306";
            $username = "root";
            $password = "<Password here>";
            $dbname = "TUTORIALS";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Check connection
            if ($conn->connect_error) {
               die("Connection failed: " . $conn->connect_error);
            } 
            $sql = "INSERT INTO tutorials_inf(name)VALUES ('".$_POST["name"]."')";

            if (mysqli_query($conn, $sql)) {
               echo "New record created successfully";
            } else {
               echo "Error: " . $sql . "" . mysqli_error($conn);
            }
            $conn->close();
         }
      ?>
   </body>
</html>
```
The sample output should be like this −

```
New record created successfully
```

[Previous Page](../mysqli/mysqli_drop_tables.md) [Next Page](../mysqli/mysqli_select_query.md) 
