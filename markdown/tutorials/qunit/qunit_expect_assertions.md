# QUnit - Expect Assertions
We can use **assert.expect()** function to check the number of assertions made in the test. In the following example, we're expecting three assertions to be made in the test.

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
         QUnit.test( "multiple call test()", function( assert ) {
            assert.expect( 3 );
            var done = assert.async( 3 );
            
            setTimeout(function() {
               assert.ok( true, "first callback." );
               done();
            }, 500 );

            setTimeout(function() {
               assert.ok( true, "second callback." );
               done();
            }, 500 );

            setTimeout(function() {
               assert.ok( true, "third callback." );
               done();
            }, 500 );
         });		 
      </script>
   </body>
</html>
```
## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="260px" src="../qunit/src/expect_assertions.htm"></iframe>


[Previous Page](../qunit/qunit_async_call.md) [Next Page](../qunit/qunit_callbacks.md) 
