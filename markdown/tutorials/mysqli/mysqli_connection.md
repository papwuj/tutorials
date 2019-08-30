# MySQLi - Connection
## MySQLi Connection using mysql binary
You can establish MySQLi database using **mysql** binary at command prompt.

### Example
Here is a simple example to connect to MySQL server to establish mysqli database from command prompt −

```
[root@host]# mysql -u root -p
Enter password:******
```
This will give you mysql&gt; command prompt where you will be able to execute any SQL command. Following is the result of above command −

```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2854760 to server version: 5.0.9

Type 'help;' or '\h' for help. Type '\c' to clear the buffer.
```
In above example, we have used **root** as a user but you can use any other user. Any user will be able to perform all the SQL operations, which are allowed to that user.

You can disconnect from MySQL database any time using **exit** command at mysql&gt; prompt.

```
mysql> exit
Bye
```
## MySQLi Connection using PHP Script
PHP provides **mysqli_connect()** function to open a database connection. This function takes five parameters and returns a MySQLi link identifier on success or FALSE on failure.

### Syntax
```
connection mysqli_connect(server,user,passwd,new_link,client_flag);
```


You can disconnect from MySQLi database anytime using another PHP function **mysqli_close()**. This function takes a single parameter, which is a connection returned by **mysqli_connect()** function.

### Syntax
```
bool mysqli_close ( resource $link_identifier );
```
If a resource is not specified then last opened database is closed. This function returns true if it closes connection successfully otherwise it returns false.

### Example
Try out the following example to connect to a MySQL server −

```
<html>
   <head>
      <title>Connecting MySQLi Server</title>
   </head>
   
   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'guest';
         $dbpass = 'guest123';
         $conn = mysqli_connect($dbhost, $dbuser, $dbpass);
   
         if(! $conn ){
            die('Could not connect: ' . mysqli_error());
         }
         echo 'Connected successfully';
         mysqli_close($conn);
      ?>
   </body>
</html>
```
If above example is connected with MySQLi, then the output should be like this on your browser −

```
Connected successfully
```

[Previous Page](../mysqli/mysqli_php_syntax.md) [Next Page](../mysqli/mysqli_create_database.md) 
