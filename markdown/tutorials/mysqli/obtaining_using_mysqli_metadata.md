# Obtaining and Using MySQLi Metadata
There are three informations, which you would like to have from MySQLi.

   * **Information about the result of queries** − This includes number of records affected by any SELECT, UPDATE or DELETE statement.
   * **Information about tables and databases** − This includes information pertaining to the structure of tables and databases.
   * **Information about the MySQLi server** − This includes current status of database server, version number etc.

It's very easy to get all these information at mysqli prompt, but while using PERL or PHP APIs, we need to call various APIs explicitly to obtain all these information. Following section will show you how to obtain this information.

## Obtaining the Number of Rows Affected by a Query
## PERL Example
In DBI scripts, the affected-rows count is returned by do( ) or by execute( ), depending on how you execute the query −

```
# Method 1
# execute $query using do( )
my $count = $dbh->do ($query);
# report 0 rows if an error occurred
printf "%d rows were affected\n", (defined ($count) ? $count : 0);

# Method 2
# execute query using prepare( ) plus execute( )
my $sth = $dbh->prepare ($query);
my $count = $sth->execute ( );
printf "%d rows were affected\n", (defined ($count) ? $count : 0);
```
## PHP Example
In PHP, invoke the mysqli_affected_rows( ) function to find out how many rows a query changed −

```
$result_id = mysqli_query ($query, $conn_id);
# report 0 rows if the query failed
$count = ($result_id ? mysqli_affected_rows ($conn_id) : 0);
print ("$count rows were affected\n");
```
## Listing Tables and Databases
This is very easy to list down all the databases and tables available with database server. Your result may be null if you don't have sufficient privilege.

Apart from the method I have mentioned below, you can use SHOW TABLES or SHOW DATABASES queries to get list of tables or databases either in PHP or in PERL.

## PERL Example
```
# Get all the tables available in current database.
my @tables = $dbh->tables ( );
foreach $table (@tables ){
   print "Table Name $table\n";
}
```
## PHP Example
```
<?php
   $servername = "localhost:3306";
   $username = "root";
   $password = "";
   $dbname = "TUTORIALS";
   $conn = new mysqli($servername, $username, $password, $dbname);
   
   if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
   } 
   echo"Database connected";
   $sql="SHOW DATABASES";
   
   if (!($result = mysqli_query($conn,$sql))) {
      printf("Error: %s\n", mysqli_error($conn));
   }
   while( $row = mysqli_fetch_row( $result ) ){
      if (($row[0]!="information_schema") && ($row[0]!="mysql")) {
         echo $row[0]."\r\n";
      }
   }
   $conn->close();
?>
```
## Getting Server Metadata
There are following commands in MySQL which can be executed either at mysql prompt or using any script like PHP to get various important informations about database server.


[Previous Page](../mysqli/mysqli_clone_tables.md) [Next Page](../mysqli/mysqli_using_sequences.md) 
