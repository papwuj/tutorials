# Apache Derby - Triggers
In databases, triggers are the statements/code which gets executed whenever an event occurred. Once you create a trigger to a particular event on a table, the code specified in the trigger gets executed each time the event occurs. You can create multiple triggers on a single table.

This chapter teaches you how to create and drop triggers using Apache Derby.

## Creating a trigger
You can create a trigger in Derby using the CREATE TRIGGER statement.

### Syntax
Following is the syntax of the CREATE TRIGGER query.

```
CREATE TRIGGER trigger_name
{ NO CASCADE BEFORE | AFTER }
{INSERT [OR] | UPDATE [OR] | DELETE}[OF col_name]
ON table_name
[REFERENCING OLD AS o NEW AS n]
[FOR EACH ROW]
Statement
```
### Example
Suppose, we have created a table named Emp in Derby as shown below.

```
CREATE TABLE Emp (
   Id INT NOT NULL,
   Name VARCHAR(255),
   Salary INT NOT NULL,
   Location VARCHAR(255) );
```
And inserted 5 rows in it.

```
INSERT INTO Emp(Id, Name, Salary, Location) VALUES
(1, 'Amit', 30000, 'Hyderabad'), (2, 'Kalyan', 40000, 'Vishakhapatnam'),
(3,'Renuka', 50000, 'Delhi'), (4, 'Archana', 15000, 'Mumbai'), (5, 'Trupthi',
45000, 'Kochin');
```
If we have another table named BackUp and our intention is to store deleted rows from Emp table in this.

```
CREATE TABLE BackUp (
   Id INT NOT NULL,
   Name VARCHAR(255),
   Salary INT NOT NULL,
   Location VARCHAR(255)
);
```
The following query creates a trigger on the DELETE query table named **Emp**. It stores the deleted rows of **Emp** to the table Backup.

```
ij> CREATE TRIGGER my_trigger
AFTER DELETE ON Emp
REFERENCING OLD AS oldRow
FOR EACH ROW MODE DB2SQL
INSERT INTO BackUp
VALUES (oldRow.Id, oldRow.Name, oldRow.Salary, oldRow.Location);
```
Now, delete a row from Emp table as −

```
ij> Delete From Emp where Name = 'Kalyan';
1 row inserted/updated/deleted
ij> Delete From Emp where Name = 'Amit';
1 row inserted/updated/deleted
```
If you verify the BackUp table, you can observe the deleted rows in it.

```
ij> select * from BackUp;
ID |NAME |SALARY |LOCATION
-------------------------------------------------------------------------
2 |Kalyan |40000 |Vishakhapatnam
1 |Amit |30000 |Hyderabad

2 rows selected
```
## Deleting a trigger
You can delete a trigger in Derby using the DROP TRIGGER statement.

### Syntax
Following is the syntax of the DROP TRIGGER query −

```
ij> Drop trigger tigger_name;
```
### Example
Following example deletes the trigger my_trigger created above −

```
ij> Drop trigger my_trigger;
0 rows inserted/updated/deleted
```
## JDBC example
Following JDBC program creates and deletes triggers in Derby.

```
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class Triggers_Example {
   public static void main(String args[]) throws SQLException, ClassNotFoundException {
      //Registering the driver
      Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
      //Getting the Connection object
      String URL = "jdbc:derby:TestDataBase;create=true";
      Connection conn = DriverManager.getConnection(URL);

      //Creating the Statement object
      Statement stmt = conn.createStatement();

      //Creating the Emp table
      stmt.execute("CREATE TABLE Emp ( "
         + "Id INT NOT NULL, "
         + "Name VARCHAR(255), "
         + "Salary INT NOT NULL, "
         + "Location VARCHAR(255))");

      //Insert values in to the EMp table
      String query = "INSERT INTO Emp(Id, Name, Salary, Location) VALUES \r\n"
         +"(1, 'Amit', 30000, 'Hyderabad'), "
         + "(2, 'Kalyan', 40000, 'Vishakhapatnam'), "
         + "(3,'Renuka', 50000, 'Delhi'), "
         + "(4, 'Archana', 15000, 'Mumbai'), "
         + "(5, 'Trupthi', 45000, 'Kochin')";
         stmt.execute(query);

      //Creating the BackUp table
      stmt.execute("CREATE TABLE BackUp ( "
         + "Id INT NOT NULL, "
         + "Name VARCHAR(255), "
         + "Salary INT NOT NULL, "
         + "Location VARCHAR(255))");

      //Creating a trigger
      String createTrigger = "CREATE TRIGGER my_trigger "
         + "AFTER DELETE ON Emp "
         + "REFERENCING OLD AS oldRow "
         + "FOR EACH ROW MODE DB2SQL "
         + "INSERT INTO BackUp "
         + "VALUES (oldRow.Id, oldRow.Name, oldRow.Salary, oldRow.Location)";
      stmt.execute(createTrigger);
      System.out.println("Trigger created");

      //Deleting records from Emp table
      stmt.executeUpdate("Delete From Emp where Name = 'Kalyan'");
      stmt.executeUpdate("Delete From Emp where Name = 'Amit'");
      //Getting the contents of BackUp table
      ResultSet rs = stmt.executeQuery("SELECT * from BackUp");
      while(rs.next()){
         System.out.println(rs.getInt("Id"));
         System.out.println(rs.getString("Name"));
         System.out.println(rs.getString("Salary"));
         System.out.println(rs.getString("Location"));
         System.out.println(" ");
      }
   }
}
```
### Output
On executing the above program, the following output is generated −

```
Trigger created
2
Kalyan
40000
Vishakhapatnam
1
Amit
30000
Hyderabad
```

[Previous Page](../apache_derby/apache_derby_schemas.md) [Next Page](../apache_derby/apache_derby_quick_guide.md) 
