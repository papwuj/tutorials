# QUnit - Skip Test
Sometimes it happens that our code is not ready and the test case written to test that method/code fails if run. **QUnit.skip** helps in this regards. A test method written using Skip method will not be executed. Let's see the Skip method in action.

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
         
         QUnit.skip( "test case 2", function( assert ) {
            assert.ok( true, "Module A: in test case 2" );
         });
         
         QUnit.module( "Module B" );		
         QUnit.test( "test case 1", function( assert ) {
            assert.ok( true, "Module B: in test case 1" );
         });
         
         QUnit.skip( "test case 2", function( assert ) {
            assert.ok( true, "Module B: in test case 2" );
         });		 
      </script>
   </body>
</html>
```
## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="335px" src="../qunit/src/skip_test.htm"></iframe>


[Previous Page](../qunit/qunit_execution_procedure.md) [Next Page](../qunit/qunit_only_test.md) 
