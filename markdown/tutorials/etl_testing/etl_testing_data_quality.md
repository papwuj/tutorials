# ETL Testing – Data Quality
Checking data quality during ETL testing involves performing quality checks on data that is loaded in the target system. It includes the following tests −

## Number check
The Number format should be same across the target system. For example, in the source system, the format of numbering the columns is **x.30**, but if the target is only **30**, then it has to load not prefixing **x.** in target column number.

## Date Check
The Date format should be consistent in both the source and the target systems. For example, it should be same across all the records. The Standard format is: yyyy-mm-dd.

## Precision Check
Precision value should display as expected in the target table. For example, in the source table, the value is 15.2323422, but in the target table, it should display as 15.23 or round of 15.

## Data Check
It involves checking the data as per the business requirement. The records that don’t meet certain criteria should be filtered out.

**Example** − Only those records whose date_id &gt;=2015 and Account_Id != ‘001’ should load in the target table.

## Null Check
Some columns should have Null as per the requirement and possible values for that field.

**Example** − Termination Date column should display Null unless and until its Active status Column is “T” or “Deceased”.

## Other Checks
Common checks like From_Date should not greater than To_Date can be done.


[Previous Page](../etl_testing/etl_testing_data_transformations.md) [Next Page](../etl_testing/etl_testing_data_completeness.md) 
