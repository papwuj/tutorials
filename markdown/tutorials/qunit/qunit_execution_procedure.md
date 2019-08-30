# QUnit - Execution Procedure
This chapter explains the execution procedure of methods in QUnit, that states which method is called first and which one after that. Following is the execution procedure of the QUnit test API methods with an example.

```
<html>
   <head>
      <meta charset = "utf-8">
      <title>QUnit basic example</title>
      <link rel = "stylesheet" href = "https://code.jquery.com/qunit/qunit-1.22.0.css">
      <script src = "https://code.jquery.com/qunit/qunit-1.22.0.js"></script>
   </head>
   
   <body>
      <div id = "qunit"></div>
      <div id = "qunit-fixture"></div> 
      <script>
         QUnit.module( "Module A", {
            beforeEach: function( assert ) {
               assert.ok( true, "before test case" );
            }, afterEach: function( assert ) {
               assert.ok( true, "after test case" );
            }
         });
         
         QUnit.test( "test case 1", function( assert ) {
            assert.ok( true, "Module A: in test case 1" );
         });
         
         QUnit.test( "test case 2", function( assert ) {
            assert.ok( true, "Module A: in test case 2" );
         });
		 		 
         QUnit.module( "Module B" );		
         QUnit.test( "test case 1", function( assert ) {
            assert.ok( true, "Module B: in test case 1" );
         });
         
         QUnit.test( "test case 2", function( assert ) {
            assert.ok( true, "Module B: in test case 2" );
         });		 
      </script>
   </body>
</html>
```
## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="335px" src="../qunit/src/execution_procedure.htm"></iframe>

This is how the QUnit execution procedure is.

   * The module is used to group test cases.
   * **beforeEach()** method executes for each test case however before executing the test case.
   * **afterEach()** method executes for each test case however after the execution of test case.
   * In between **beforeEach()** and **afterEach()** each test case executes.
   * Calling **QUnit.module()** again, simply reset any beforeEach/afterEach functions defined by another module previously.


[Previous Page](../qunit/qunit_using_assertions.md) [Next Page](../qunit/qunit_skip_test.md) 
