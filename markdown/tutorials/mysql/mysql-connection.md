# MySQL - Connection
## MySQL Connection Using MySQL Binary
You can establish the MySQL database using the **mysql** binary at the command prompt.

### Example
Here is a simple example to connect to the MySQL server from the command prompt −

```
[root@host]# mysql -u root -p
Enter password:******
```
This will give you the mysql&gt; command prompt where you will be able to execute any SQL command. Following is the result of above command −

The following code block shows the result of above code −

```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2854760 to server version: 5.0.9

Type 'help;' or '\h' for help. Type '\c' to clear the buffer.
```
In the above example, we have used **root** as a user but you can use any other user as well. Any user will be able to perform all the SQL operations, which are allowed to that user.

You can disconnect from the MySQL database any time using the **exit** command at mysql&gt; prompt.

```
mysql> exit
Bye
```
## MySQL Connection Using PHP Script
PHP provides **mysql_connect()** function to open a database connection. This function takes five parameters and returns a MySQL link identifier on success or FALSE on failure.

### Syntax
```
connection mysql_connect(server,user,passwd,new_link,client_flag);
```


You can disconnect from the MySQL database anytime using another PHP function **mysql_close()**. This function takes a single parameter, which is a connection returned by the **mysql_connect()** function.

### Syntax
```
bool mysql_close ( resource $link_identifier );
```
If a resource is not specified, then the last opened database is closed. This function returns true if it closes the connection successfully otherwise it returns false.

### Example
Try the following example to connect to a MySQL server −

```
<html>
   <head>
      <title>Connecting MySQL Server</title>
   </head>
   <body>
      <?php
         $dbhost = 'localhost:3306';
         $dbuser = 'guest';
         $dbpass = 'guest123';
         $conn = mysql_connect($dbhost, $dbuser, $dbpass);
         
         if(! $conn ) {
            die('Could not connect: ' . mysql_error());
         }
         echo 'Connected successfully';
         mysql_close($conn);
      ?>
   </body>
</html>
```

[Previous Page](../mysql/mysql-php-syntax.md) [Next Page](../mysql/mysql-create-database.md) 
