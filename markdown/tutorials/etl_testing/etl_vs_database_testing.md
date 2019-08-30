# ETL vs Database Testing
Both ETL testing and database testing involve data validation, but they are not the same. ETL testing is normally performed on data in a data warehouse system, whereas database testing is commonly performed on transactional systems where the data comes from different applications into the transactional database.

Here, we have highlighted the major differences between ETL testing and Database testing.

## ETL Testing
ETL testing involves the following operations −

   * Validation of data movement from the source to the target system.
   * Verification of data count in the source and the target system.
   * Verifying data extraction, transformation as per requirement and expectation.
   * Verifying if table relations − joins and keys − are preserved during the transformation.

Common ETL testing tools include **QuerySurge, Informatica**, etc.

## Database Testing
Database testing stresses more on data accuracy, correctness of data and valid values. It involves the following operations −

   * Verifying if primary and foreign keys are maintained.
   * Verifying if the columns in a table have valid data values.
   * Verifying data accuracy in columns. **Example** − Number of months column shouldn’t have a value greater than 12.
   * Verifying missing data in columns. Check if there are null columns which actually should have a valid value.

Common database testing tools include **Selenium, QTP**, etc.

The following table captures the key features of Database and ETL testing and their comparison −


[Previous Page](../etl_testing/etl_testing_tasks.md) [Next Page](../etl_testing/etl_testing_categories.md) 
