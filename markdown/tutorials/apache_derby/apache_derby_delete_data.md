# Apache Derby - Delete Data
The DELETE statement is used to delete rows of a table. Just like the UPDATE statement, Apache Derby provides two types of Delete (syntax): **searched** delete and **positioned** delete.

The searched delete statement deletes all the specified columns of a table.

### Syntax
The syntax of the DELETE statement is as follows −

```
ij> DELETE FROM table_name WHERE condition;
```
### Example
Let us suppose we have a table named employee with 5 records as shown below −

```
ID |NAME |SALARY |LOCATION
----------------------------------------------------------------------------
1 |Amit |30000 |Hyderabad
2 |Kalyan |40000 |Vishakhapatnam
3 |Renuka |50000 |Delhi
4 |Archana |15000 |Mumbai
5 |Trupti |45000 |Kochin
5 rows selected
```
The following SQL DELETE statement deletes the record with name Trupti.

```
ij> DELETE FROM Employees WHERE Name = 'Trupti';
1 row inserted/updated/deleted
```
If you get the contents of the Employees table, you can see only four records as shown below −

```
ID |NAME |SALARY |LOCATION
----------------------------------------------------------------------------
1 |Amit |30000 |Hyderabad
2 |Kalyan |40000 |Vishakhapatnam
3 |Renuka |50000 |Delhi
4 |Archana |15000 |Mumbai 
4 rows selected
```
To delete all the records in the table, execute the same query without where clause.

```
ij> DELETE FROM Employees;
4 rows inserted/updated/deleted
```
Now, if you try to get the contents of the Employee table, you will get an empty table as given below −

```
ij> select * from employees;
ID |NAME |SALARY |LOCATION
--------------------------------------------------------
0 rows selected
```
## Delete Data using JDBC program
This section explains how to delete the existing records of a table in Apache Derby database using JDBC application.

If you want to request the Derby network server using network client, make sure that the server is up and running. The class name for the Network client driver is org.apache.derby.jdbc.ClientDriver and the URL is jdbc:derby://localhost:1527/**DATABASE_NAME;**create=true;user=**USER_NAME;**passw ord=**PASSWORD**".

Follow the steps given below to delete the existing records of a table in Apache Derby:/p&gt; 

### Step 1: Register the driver
Firstly, you need to register the driver to communicate with the database. The **forName()** method of the class **Class** accepts a String value representing a class name loads it in to the memory, which automatically registers it. Register the driver using this method.

### Step 2: Get the connection
In general, the first step we do to communicate to the database is to connect with it. The **Connection** class represents physical connection with a database server. You can create a connection object by invoking the **getConnection()** method of the **DriverManager** class. Create a connection using this method.

### Step 3: Create a statement object
You need to create a **Statement** or **PreparedStatement or, CallableStatement** objects to send SQL statements to the database. You can create these using the methods **createStatement(), prepareStatement() and, prepareCall()** respectively. Create either of these objects using the appropriate method.

### Step 4: Execute the query
After creating a statement, you need to execute it. The **Statement** class provides various methods to execute a query like the **execute()** method to execute a statement that returns more than one result set. The **executeUpdate()** method executes queries like INSERT, UPDATE, DELETE. The **executeQuery()** method results that returns data. Use either of these methods and execute the statement created previously.

### Example
Following JDBC example demonstrates how to delete the existing records of a table in Apache Derby using JDBC program. Here, we are connecting to a database named sampleDB (will create if it does not exist) using the embedded driver.

```
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class DeleteData {
   public static void main(String args[]) throws Exception {
      //Registering the driver
      Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
      //Getting the Connection object
      String URL = "jdbc:derby:sampleDB;create=true";
      Connection conn = DriverManager.getConnection(URL);

      //Creating the Statement object
      Statement stmt = conn.createStatement();
      //Creating a table and populating it
      String query = "CREATE TABLE Employees("
         + "Id INT NOT NULL GENERATED ALWAYS AS IDENTITY, "
         + "Name VARCHAR(255), Salary INT NOT NULL, "
         + "Location VARCHAR(255), "
         + "PRIMARY KEY (Id))";
      String query = "INSERT INTO Employees("
         + "Name, Salary, Location) VALUES "
         + "('Amit', 30000, 'Hyderabad'), "
         + "('Kalyan', 40000, 'Vishakhapatnam'), "
         + "('Renuka', 50000, 'Delhi'), "
         + "('Archana', 15000, 'Mumbai'), "
         + "('Trupthi', 45000, 'Kochin'), "
         + "('Suchatra', 33000, 'Pune'), "
         + "('Rahul', 39000, 'Lucknow'), "
         + "('Trupthi', 45000, 'Kochin')";
      //Executing the query
      String query = "DELETE FROM Employees WHERE Name = 'Trupthi'";
      int num = stmt.executeUpdate(query);
      System.out.println("Number of records deleted are: "+num);
   }
}
```
### Output
On executing the above program, you will get the following output −

```
Number of records deleted are: 1
```

[Previous Page](../apache_derby/apache_derby_update_data.md) [Next Page](../apache_derby/apache_derby_where_clause.md) 
