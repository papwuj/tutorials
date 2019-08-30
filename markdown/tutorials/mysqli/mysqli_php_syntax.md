# MySQLi - PHP Syntax
MySQLi works very well in combination of various programming languages like PERL, C, C++, JAVA and PHP. Out of these languages, PHP is the most popular one because of its web application development capabilities.

This tutorial focuses heavily on using MySQLi in a PHP environment. PHP provides various functions to access MySQLi database and to manipulate data records inside MySQLi database. You would require to call PHP functions in the same way you call any other PHP function.

The PHP functions for use with MySQLi have the following general format −

```
mysqli_function(value,value,...);
```
The second part of the function name is specific to the function, usually a word that describes what the function does. The following are two of the functions, which we will use in our tutorial −

```
mysqli_connect($connect);
mysqli_query($connect,"SQL statement");
```
Following example shows a generic syntax of PHP to call any MySQLi function.

```
<html>
   <head>
      <title>PHP with MySQLi</title>
   </head>
   
   <body>
      <?php
         $retval = mysqli_function(value, [value,...]);
         if( !$retval ){
            die ( "Error: a related error message" );
         }
         // Otherwise MySQLi  or PHP Statements
      ?>
   </body>
</html>
```
Starting from next chapter, we will see all the important MySQLi functionality along with PHP.


[Previous Page](../mysqli/mysqli_administration.md) [Next Page](../mysqli/mysqli_connection.md) 
