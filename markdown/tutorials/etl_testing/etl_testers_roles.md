# ETL – Tester's Roles
An ETL tester is primarily responsible for validating the data sources, extraction of data, applying transformation logic, and loading the data in the target tables.

The key responsibilities of an ETL tester are listed below.

## Verify the Tables in the Source System
It involves the following operations −

   * Count check
   * Reconcile records with the source data
   * Data type check
   * Ensure no spam data loaded
   * Remove duplicate data
   * Check all the keys are in place

## Apply Transformation Logic
Transformation logic is applied before loading the data. It involves the following operations −

   * Data threshold validation check, for example, age value shouldn’t be more than 100.
   * Record count check, before and after the transformation logic applied.
   * Data flow validation from the staging area to the intermediate tables.
   * Surrogate key check.

## Data Loading
Data is loaded from the staging area to the target system. It involves the following operations −

   * Record count check from the intermediate table to the target system.
   * Ensure the key field data is not missing or Null.
   * Check if the aggregate values and calculated measures are loaded in the fact tables.
   * Check modeling views based on the target tables.
   * Check if CDC has been applied on the incremental load table.
   * Data check in dimension table and history table check.
   * Check the BI reports based on the loaded fact and dimension table and as per the expected results.

## Testing the ETL Tools
ETL testers are required to test the tools and the test-cases as well. It involves the following operations −

   * Test the ETL tool and its functions
   * Test the ETL Data Warehouse system
   * Create, design, and execute the test plans and test cases.
   * Test the flat file data transfers.


[Previous Page](../etl_testing/etl_testing_challenges.md) [Next Page](../etl_testing/etl_testing_techniques.md) 
