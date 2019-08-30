# ETL Testing – Data Transformations
Performing data transformations is a bit complex, as it cannot be achieved by writing a single SQL query and then comparing the output with the target. For ETL Testing Data Transformation, you may have to write multiple SQL queries for each row to verify the transformation rules.

To start with, make sure the source data is sufficient to test all the transformation rules. The key to perform a successful ETL testing for data transformations is to pick the correct and sufficient sample data from the source system to apply the transformation rules.

The key steps for ETL Testing Data Transformation are listed below −

   * The first step is to create a list of scenarios of input data and the expected results and validate these with the business customer. This is a good approach for requirements gathering during design and could also be used as a part of testing.
   * The next step is to create the test data that contains all the scenarios. Utilize an ETL developer to automate the entire process of populating the datasets with the scenario spreadsheet to permit versatility and mobility for the reason that the scenarios are likely to change.
   * Next, utilize data profiling results to compare the range and submission of values in each field between the target and source data.
   * Validate the accurate processing of ETL generated fields, e.g., surrogate keys.
   * Validating the data types within the warehouse are the same as was specified in the data model or design.
   * Create data scenarios between tables that test referential integrity.
   * Validate the parent-to-child relationships in the data.
   * The final step is to perform **lookup transformation**. Your lookup query should be straight without any aggregation and expected to return only one value per the source table. You can directly join the lookup table in the source qualifier as in the previous test. If this is not the case, write a query joining the lookup table with the main table in the source and compare the data in the corresponding columns in the target.


[Previous Page](../etl_testing/etl_testing_metadata.md) [Next Page](../etl_testing/etl_testing_data_quality.md) 
