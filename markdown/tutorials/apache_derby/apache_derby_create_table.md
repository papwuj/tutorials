# Apache Derby - Create Table
The CREATE TABLE statement is used for creating a new table in Derby database.

## Syntax
Following is the syntax of the CREATE statement.

```
CREATE TABLE table_name (
   column_name1 column_data_type1 constraint (optional),
   column_name2 column_data_type2 constraint (optional),
   column_name3 column_data_type3 constraint (optional)
);
```
Another way to create a table in Apache Derby is that you can specify the column names and data types using a query. The syntax for this is given below −

```
CREATE TABLE table_name AS SELECT * FROM desired_table WITH NO DATA;
```
### Example
The following SQL statement creates a table named **Student** with four columns, where id is the primary key and it is auto generated.

```
ij> CREATE TABLE Student (
   Id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
   Age INT NOT NULL,
   First_Name VARCHAR(255),
   last_name VARCHAR(255),
   PRIMARY KEY (Id)
);
> > > > > > > 0 rows inserted/updated/deleted
```
The DESCRIBE command describes specified table by listing the columns and their details, if the table exists. You can use this command to verify if the table is created.

```
ij> DESCRIBE Student;
COLUMN_NAME |TYPE_NAME |DEC&|NUM&|COLUM&|COLUMN_DEF|CHAR_OCTE&|IS_NULL&
------------------------------------------------------------------------------
ID |INTEGER |0 |10 |10 |AUTOINCRE&|NULL |NO
AGE |INTEGER |0 |10 |10 |NULL |NULL |NO
FIRST_NAME |VARCHAR |NULL|NULL|255 |NULL |510 |YES
LAST_NAME |VARCHAR |NULL|NULL|255 |NULL |510 |YES
4 rows selected
```
## Create a Table using JDBC Program
This section teaches you how to create a table in Apache Derby database using JDBC application.

If you want to request the Derby network server using network client, make sure that the server is up and running. The class name for the Network client driver is **org.apache.derby.jdbc.ClientDriver** and the URL is jdbc:derby://localhost:1527/DATABASE_NAME;create=true;user=USER_NAME;passw ord=PASSWORD".

Follow the steps given below to create a table in Apache Derby −

### Step 1: Register the driver
To communicate with the database, first of all, you need to register the driver. The **forName()** method of the class, **Class** accepts a String value representing a class name loads it in to the memory, which automatically registers it. Register the driver using this method.

### Step 2: Get the connection
In general, the first step we do to communicate to the database is to connect with it. The **Connection** class represents the physical connection with a database server. You can create a connection object by invoking the **getConnection()** method of the **DriverManager** class. Create a connection using this method.

### Step 3: Create a statement object
You need to create a **Statement** or **PreparedStatement or, CallableStatement** objects to send SQL statements to the database. You can create these using the methods **createStatement(), prepareStatement() and, prepareCall()** respectively. Create either of these objects using the appropriate method.

### Step 4: Execute the query
After creating a statement, you need to execute it. The **Statement** class provides various methods to execute a query like the **execute()** method to execute a statement that returns more than one result set. The **executeUpdate()** method executes queries like INSERT, UPDATE, DELETE. The **executeQuery()** method to results that returns data etc. Use either of these methods and execute the statement created previously. 

### Example
Following JDBC example demonstrates how to create a table in Apache Derby using JDBC program. Here, we are connecting to a database named sampleDB (will create if it does not exist) using the embedded driver.

```
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class CreateTable {
   public static void main(String args[]) throws Exception {
      //Registering the driver
      Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
      //Getting the Connection object
      String URL = "jdbc:derby:sampleDB;create=true";
      Connection conn = DriverManager.getConnection(URL);

      //Creating the Statement object
      Statement stmt = conn.createStatement();
 
      //Executing the query
      String query = "CREATE TABLE Employees( "
         + "Id INT NOT NULL GENERATED ALWAYS AS IDENTITY, "
         + "Name VARCHAR(255), "
         + "Salary INT NOT NULL, "
         + "Location VARCHAR(255), "
         + "PRIMARY KEY (Id))";
         stmt.execute(query);
         System.out.println("Table created");
   }
}
```
### Output
On executing the above program, you will get the following output

```
Table created
```

[Previous Page](../apache_derby/apache_derby_data_types.md) [Next Page](../apache_derby/apache_derby_drop_table.md) 
