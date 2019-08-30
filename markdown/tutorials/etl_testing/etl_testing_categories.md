# ETL Testing – Categories
ETL Testing categorization is done based on objectives of testing and reporting. Testing categories vary as per the organization standards and it also depends on the client requirements. Generally, ETL testing is categorized based on the following points −

   * **Source to Target Count Testing** − It involves matching of count of records in the source and the target systems.
   * **Source to Target Data Testing** − It involves data validation between the source and the target systems. It also involves data integration and threshold value check and duplicate data check in the target system.
   * **Data Mapping or Transformation Testing** − It confirms the mapping of objects in the source and the target systems. It also involves checking the functionality of data in the target system.
   * **End-User Testing** − It involves generating reports for end-users to verify if the data in the reports are as per expectation. It involves finding deviation in reports and cross-check the data in the target system for report validation.
   * **Retesting** − It involves fixing the bugs and defects in data in the target system and running the reports again for data validation.
   * **System Integration Testing** − It involves testing all the individual systems, and later combine the results to find if there are any deviations. There are three approaches that can be used to perform this: top-down, bottom-up, and hybrid.

Based on the structure of a Data Warehouse system, ETL testing (irrespective of the tool that is used) can be divided into the following categories −

## New DW System Testing
In this type of testing, there is a new DW system built and verified. Data inputs are taken from customers/end-users and also from different data sources and a new data warehouse is created. Later, the data is verified in the new system with help of ETL tools.

## Migration Testing
In migration testing, customers have an existing Data Warehouse and ETL, but they look for a new ETL tool to improve the efficiency. It involves migration of data from the existing system using a new ETL tool.

## Change Testing
In change testing, new data is added from different data sources to an existing system. Customers can also change the existing rules for ETL or a new rule can also be added.

## Report Testing
Report testing involves creating reports for data validation. Reports are the final output of any DW system. Reports are tested based on their layout, data in the report, and calculated values.


[Previous Page](../etl_testing/etl_vs_database_testing.md) [Next Page](../etl_testing/etl_testing_challenges.md) 
