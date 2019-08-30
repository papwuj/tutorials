# QUnit - Async Call
For every asynchronous operation in **QUnit.test()** callback, use **assert.async()**, which returns a "done" function that should be called when the operation has completed. assert.async() accepts call counts as a parameter. The callback returned from assert.async() will throw an Error, if it is invoked more than the accepted call count, if provided. Each **done()** call adds up to the call count. After every call gets completed, the test is done.

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

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="255px" src="../qunit/src/async_call.htm"></iframe>


[Previous Page](../qunit/qunit_only_test.md) [Next Page](../qunit/qunit_expect_assertions.md) 
