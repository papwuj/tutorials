# ETL Testing – Data Completeness
Checking Data Completeness is done to verify that the data in the target system is as per expectation after loading.

The common tests that can be performed for this are as follows −

   * Checking Aggregate functions (sum, max, min, count),
   * Checking and validating the counts and the actual data between the source and the target for columns without transformations or with simple transformations.

## Count Validation
Compare the count of number of records in the source and the target tables. It can be done by writing the following queries −

```
SELECT count (1) FROM employee; 
SELECT count (1) FROM emp_dim;
```
## Data Profile Validation
It involves checking the aggregate functions such as count, sum, and max in the source and target tables (fact or dimension).

## Column Data Profile Validation
It involves comparing the distinct values and the count of rows for each distinct value.

```
SELECT city, count(*) FROM employee GROUP BY city; 
SELECT city_id, count(*) FROM emp_dim GROUP BY city_id;
```
## Duplicate Data Validation
It involves validating the primary key and the unique key in a column or in combination of columns that should be unique as per the business requirements. You can use the following query to perform duplicate data validation −

```
SELECT first_name, last_name, date_of_joining, count (1) FROM employee
GROUP BY first_name, last_name HAVING count(1)>1;
```

[Previous Page](../etl_testing/etl_testing_data_quality.md) [Next Page](../etl_testing/etl_testing_backup_recovery.md) 
