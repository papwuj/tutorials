# MySQL - Insert Query
To insert data into a MySQL table, you would need to use the SQL **INSERT INTO** command. You can insert data into the MySQL table by using the mysql&gt; prompt or by using any script like PHP.

### Syntax
Here is a generic SQL syntax of INSERT INTO command to insert data into the MySQL table −

```
INSERT INTO table_name ( field1, field2,...fieldN )
   VALUES
   ( value1, value2,...valueN );
```
To insert string data types, it is required to keep all the values into double or single quotes. For example **"value"**.

## Inserting Data from the Command Prompt
To insert data from the command prompt, we will use SQL INSERT INTO command to insert data into MySQL table tutorials_tbl.

### Example
The following example will create 3 records into **tutorials_tbl** table −

```
root@host# mysql -u root -p password;
Enter password:*******
mysql> use TUTORIALS;
Database changed

mysql> INSERT INTO tutorials_tbl 
   ->(tutorial_title, tutorial_author, submission_date)
   ->VALUES
   ->("Learn PHP", "John Poul", NOW());
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO tutorials_tbl
   ->(tutorial_title, tutorial_author, submission_date)
   ->VALUES
   ->("Learn MySQL", "Abdul S", NOW());
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO tutorials_tbl
   ->(tutorial_title, tutorial_author, submission_date)
   ->VALUES
   ->("JAVA Tutorial", "Sanjay", '2007-05-06');
Query OK, 1 row affected (0.01 sec)
mysql>
```
**NOTE** − Please note that all the arrow signs (-&gt;) are not a part of the SQL command. They are indicating a new line and they are created automatically by the MySQL prompt while pressing the enter key without giving a semicolon at the end of each line of the command.

In the above example, we have not provided a tutorial_id because at the time of table creation, we had given AUTO_INCREMENT option for this field. So MySQL takes care of inserting these IDs automatically. Here, **NOW()** is a MySQL function, which returns the current date and time.

## Inserting Data Using a PHP Script
You can use the same SQL INSERT INTO command into the PHP function **mysql_query()** to insert data into a MySQL table.

### Example
This example will take three parameters from the user and will insert them into the MySQL table −

```
<html>

   <head>
      <title>Add New Record in MySQL Database</title>
   </head>

   <body>
      <?php
         if(isset($_POST['add'])) {
            $dbhost = 'localhost:3036';
            $dbuser = 'root';
            $dbpass = 'rootpassword';
            $conn = mysql_connect($dbhost, $dbuser, $dbpass);
         
            if(! $conn ) {
               die('Could not connect: ' . mysql_error());
            }

            if(! get_magic_quotes_gpc() ) {
               $tutorial_title = addslashes ($_POST['tutorial_title']);
               $tutorial_author = addslashes ($_POST['tutorial_author']);
            } else {
               $tutorial_title = $_POST['tutorial_title'];
               $tutorial_author = $_POST['tutorial_author'];
            }

            $submission_date = $_POST['submission_date'];
   
            $sql = "INSERT INTO tutorials_tbl ".
               "(tutorial_title,tutorial_author, submission_date) "."VALUES ".
               "('$tutorial_title','$tutorial_author','$submission_date')";
               mysql_select_db('TUTORIALS');
            $retval = mysql_query( $sql, $conn );
         
            if(! $retval ) {
               die('Could not enter data: ' . mysql_error());
            }
         
            echo "Entered data successfully\n";
            mysql_close($conn);
         } else {
      ?>
   
      <form method = "post" action = "<?php $_PHP_SELF ?>">
         <table width = "600" border = "0" cellspacing = "1" cellpadding = "2">
            <tr>
               <td width = "250">Tutorial Title</td>
               <td>
                  <input name = "tutorial_title" type = "text" id = "tutorial_title">
               </td>
            </tr>
         
            <tr>
               <td width = "250">Tutorial Author</td>
               <td>
                  <input name = "tutorial_author" type = "text" id = "tutorial_author">
               </td>
            </tr>
         
            <tr>
               <td width = "250">Submission Date [   yyyy-mm-dd ]</td>
               <td>
                  <input name = "submission_date" type = "text" id = "submission_date">
               </td>
            </tr>
      
            <tr>
               <td width = "250"> </td>
               <td> </td>
            </tr>
         
            <tr>
               <td width = "250"> </td>
               <td>
                  <input name = "add" type = "submit" id = "add"  value = "Add Tutorial">
               </td>
            </tr>
         </table>
      </form>
   <?php
      }
   ?>
   </body>
</html>
```
While doing a data insert, it is best to use the function **get_magic_quotes_gpc()** to check if the current configuration for magic quote is set or not. If this function returns false, then use the function **addslashes()** to add slashes before the quotes.

You can put many validations around to check if the entered data is correct or not and can take the appropriate action.


[Previous Page](../mysql/mysql-drop-tables.md) [Next Page](../mysql/mysql-select-query.md) 
