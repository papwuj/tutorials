# MySQLi - Select Database
Once you get connection with MySQLi server, it is required to select a particular database to work with. This is because there may be more than one database available with MySQLi Server.

## Syntax
```
bool mysqli_select_db( db_name, connection );
```


## Example
Here is the example showing you how to select a database.

```
<html>
   <head>
      <title>Connecting MySQLi Server</title>
   </head>

   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'root';
         $dbpass = '<Password Here>';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
   
         if(! $conn ) {
            echo 'Connected failure<br>';
         }
         echo 'Connected successfully<br>';
         mysqli_select_db( 'TUTORIALS' );
   
         //Write some code here
         mysqli_close($conn);
      ?>
   </body>
</html>
```
If connected and Selected database successfully,then the sample output should be like this −

```
Connected successfully
```

[Previous Page](../mysqli/mysqli_drop_database.md) [Next Page](../mysqli/mysqli_data_types.md) 
