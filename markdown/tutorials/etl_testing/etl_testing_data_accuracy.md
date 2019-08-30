# ETL Testing – Data Accuracy
In ETL testing, data accuracy is used to ensure if data is accurately loaded to the target system as per the expectation. The key steps in performing data accuracy are as follows −

## Value Comparison
Value comparison involves comparing the data in source and target system with minimum or no transformation. It can be done using various ETL Testing tools, for example, Source Qualifier Transformation in Informatica.

Some expression transformations can also be performed in data accuracy testing. Various set operators can be used in SQL statements to check data accuracy in the source and the target systems. Common operators are Minus and Intersect operators. The results of these operators can be considered as deviation in value in the target and the source system.

## Check Critical Data Columns
Critical data columns can be checked by comparing distinct values in the source and the target systems. Here is a sample query that can be used to check critical data columns −

```
SELECT cust_name, Order_Id, city, count(*) FROM customer 
GROUP BY cust_name, Order_Id, city;
```

[Previous Page](../etl_testing/etl_testing_scalability.md) [Next Page](../etl_testing/etl_testing_metadata.md) 
