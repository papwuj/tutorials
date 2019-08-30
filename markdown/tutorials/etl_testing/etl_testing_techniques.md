# ETL Testing – Techniques
It is important that you define the correct ETL Testing technique before starting the testing process. You should take an acceptance from all the stakeholders and ensure that a correct technique is selected to perform ETL testing. This technique should be well known to the testing team and they should be aware of the steps involved in the testing process.

There are various types of testing techniques that can be used. In this chapter, we will discuss the testing techniques in brief.

## Production Validation Testing
To perform Analytical Reporting and Analysis, the data in your production should be correct. This testing is done on the data that is moved to the production system. It involves data validation in the production system and comparing it the with the source data.

## Source-to-target Count Testing
This type of testing is done when the tester has less time to perform the testing operation. It involves checking the count of data in the source and the target systems. It doesn’t involve checking the values of data in the target system. It also doesn’t involve if the data is in ascending or descending order after mapping of data.

## Source-to-target Data Testing
In this type of testing, a tester validates data values from the source to the target system. It checks the data values in the source system and the corresponding values in the target system after transformation. This type of testing is time-consuming and is normally performed in financial and banking projects.

## Data Integration / Threshold Value Validation Testing
In this type of testing, a tester validates the range of data. All the threshold values in the target system are checked if they are as per the expected result. It also involves integration of data in the target system from multiple source systems after transformation and loading.

**Example** − Age attribute shouldn’t have a value greater than 100. In the date column DD/MM/YY, the month field shouldn’t have a value greater than 12.

## Application Migration Testing
Application migration testing is normally performed automatically when you move from an old application to a new application system. This testing saves a lot of time. It checks if the data extracted from an old application is same as per the data in the new application system.

## Data Check and Constraint Testing
It includes performing various checks such as data type check, data length check, and index check. Here a Test Engineer performs the following scenarios − Primary Key, Foreign Key, NOT NULL, NULL, and UNIQUE.

## Duplicate Data Check Testing
This testing involves checking for duplicate data in the target system. When there is a huge amount of data in the target system, it is possible that there is duplicate data in the production system that may result in incorrect data in Analytical Reports.

Duplicate values can be checked with SQL statement like −

```
Select Cust_Id, Cust_NAME, Quantity, COUNT (*) 
FROM Customer
GROUP BY Cust_Id, Cust_NAME, Quantity HAVING COUNT (*) >1;
```
Duplicate data appears in the target system due to the following reasons −

   * If no primary key is defined, then duplicate values may come.
   * Due to incorrect mapping or environmental issues.
   * Manual errors while transferring data from the source to the target system.

## Data Transformation Testing
Data transformation testing is not performed by running a single SQL statement. It is time-consuming and involves running multiple SQL queries for each row to verify the transformation rules. The tester needs to run SQL queries for each row and then compare the output with the target data.

## Data Quality Testing
Data quality testing involves performing number check, date check, null check, precision check, etc. A tester performs **Syntax Test** to report invalid characters, incorrect upper/lower case order, etc. and **Reference Tests** to check if the data is according to the data model.

## Incremental Testing
Incremental testing is performed to verify if Insert and Update statements are executed as per the expected result. This testing is performed step-by-step with old and new data.

## Regression Testing
When we make changes to data transformation and aggregation rules to add new functionality which also helps the tester to find new errors, it is called Regression Testing. The bugs in data that that comes in regression testing are called Regression.

## Retesting
When you run the tests after fixing the codes, it is called retesting.

## System Integration Testing
System integration testing involves testing the components of a system individually and later integrating the modules. There are three ways a system integration can be done: top-down, bottom-up, and hybrid.

## Navigation Testing
Navigation testing is also known as testing the front-end of the system. It involves enduser point of view testing by checking all the aspects of the front-end report − includes data in various fields, calculation and aggregates, etc.


[Previous Page](../etl_testing/etl_testers_roles.md) [Next Page](../etl_testing/etl_testing_process.md) 
