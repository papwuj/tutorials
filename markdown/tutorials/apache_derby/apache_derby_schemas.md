# Apache Derby - Schemas
A database schema is the skeleton structure that represents the logical view of the entire database. It defines how the data is organized and how the relations among them are associated. It formulates all the constraints that are to be applied to the data.

## Creating a Schema
You can create a schema in Apache Derby using the CREATE SCHEMA statement.

### Syntax
Following is the syntax to the CREATE SCHEMA statement.

```
CREATE SCHEMA schema_name AUTHORIZATION id
```
### Example
Following example creates a schema named my_schema in Derby database.

```
ij> CREATE SCHEMA AUTHORIZATION my_schema;
0 rows inserted/updated/deleted
```
Then, you can create a table in this schema as shown below.

```
ij> CREATE TABLE my_schema.Emp ( Id INT NOT NULL GENERATED ALWAYS AS IDENTITY,
   Name VARCHAR(255),
   Salary INT NOT NULL,
   Location VARCHAR(255),
   Phone_Number BIGINT
);
> > > > > 0 rows inserted/updated/deleted
```
You can verify the list of schemas using the SHOW SCHEMAS query here you can find the list of schemas created.

```
ij> show schemas;
TABLE_SCHEM
------------------------------
APP
MY_SCHEMA
NULLID
SQLJ
SYS
SYSCAT
SYSCS_DIAG
SYSCS_UTIL
SYSFUN
SYSIBM
SYSPROC
SYSSTAT
12 rows selected
```
## Dropping a Schema
You can drop an existing schema using the DROP SCHEMA statement.

### Syntax
Following is the syntax of DROPS SCHEMA statement.

```
DROP SCHEMA my_schema RESTRICT;
```
### Example
You can delete a schema only if does not have any objects in it. To delete the schema, delete all the tables in it and delete the schema.

```
ij> DROP TABLE my_schema.Emp;
0 rows inserted/updated/deleted
```
Following example drops the above created schema.

```
ij> DROP SCHEMA my_schema RESTRICT;
0 rows inserted/updated/deleted
```
## JDBC Example
Following JDBC example creates and drops a schema named my_schema.

```
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class CreateSchemaExample {
   public static void main(String args[]) throws Exception {
      //Registering the driver
      Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
      //Getting the Connection object
      String URL = "jdbc:derby:sampleDB;create=true";
      Connection conn = DriverManager.getConnection(URL);

      //Creating the Statement object
      Statement stmt = conn.createStatement();

      stmt.execute("CREATE SCHEMA AUTHORIZATION my_schema");
      //Executing the query
      String query = "CREATE TABLE my_schema.Employees( "
         + "Id INT NOT NULL GENERATED ALWAYS AS IDENTITY, "
         + "Name VARCHAR(255), "
         + "Salary INT NOT NULL, "
         + "Location VARCHAR(255), "
         + "PRIMARY KEY (Id))";
      stmt.execute(query);
      System.out.println("Table created in schema");
      stmt.execute("DROP TABLE my_schema.Employees");
      stmt.execute("DROP SCHEMA my_schema RESTRICT");
      System.out.println("Schema dropped");
   }
}
```
### Output
On executing, the above program generates the following example.

```
Table created in schema
Schema dropped
```

[Previous Page](../apache_derby/apache_derby_procedures.md) [Next Page](../apache_derby/apache_derby_triggers.md) 
