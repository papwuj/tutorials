# MySQL - PHP Syntax
MySQL works very well in combination of various programming languages like PERL, C, C++, JAVA and PHP. Out of these languages, PHP is the most popular one because of its web application development capabilities.

This tutorial focuses heavily on using MySQL in a PHP environment. If you are interested in MySQL with PERL, then you can consider reading the [PERL](/perl/perl_database.htm)  Tutorial.

PHP provides various functions to access the MySQL database and to manipulate the data records inside the MySQL database. You would require to call the PHP functions in the same way you call any other PHP function.

The PHP functions for use with MySQL have the following general format −

```
mysql_function(value,value,...);
```
The second part of the function name is specific to the function, usually a word that describes what the function does. The following are two of the functions, which we will use in our tutorial −

```
mysqli_connect($connect);
mysqli_query($connect,"SQL statement");
```
The following example shows a generic syntax of PHP to call any MySQL function.

```
<html>
   <head>
      <title>PHP with MySQL</title>
   </head>
   
   <body>
      <?php
         $retval = mysql_function(value, [value,...]);
         if( !$retval ) {
            die ( "Error: a related error message" );
         }
         // Otherwise MySQL  or PHP Statements
      ?>
   </body>
</html>
```
Starting from the next chapter, we will see all the important MySQL functionality along with PHP.


[Previous Page](../mysql/mysql-administration.md) [Next Page](../mysql/mysql-connection.md) 
