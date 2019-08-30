# QUnit - Using Assertions
All the assertions are in the Assert Category.

This category provides a set of assertion methods useful for writing tests. Only failed assertions are recorded.

Let's try to cover most of the above mentioned methods in an example.

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
         QUnit.test( "TestSuite", function( assert ) {
            //test data
            var str1 = "abc";
            var str2 = "abc";
            var str3 = null;
            var val1 = 5;
            var val2 = 6;
            var expectedArray = ["one", "two", "three"];
            var resultArray =  ["one", "two", "three"];

            //Check that two objects are equal
            assert.equal(str1, str2, "Strings passed are equal.");
			
            //Check that two objects are not equal
            assert.notEqual(str1,str3, "Strings passed are not equal.");

            //Check that a condition is true
            assert.ok(val1 < val2, val1 + " is less than " + val2);
			
            //Check that a condition is false
            assert.notOk(val1 > val2, val2 + " is not less than " + val1);

            //Check whether two arrays are equal to each other.
            assert.deepEqual(expectedArray, resultArray ,"Arrays passed are equal.");
			
            //Check whether two arrays are equal to each other.
            assert.notDeepEqual(expectedArray, ["one", "two"],
               "Arrays passed are not equal.");			
         });
      </script>
   </body>
</html>
```
## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="260px" src="../qunit/src/using_assertions.htm"></iframe>


[Previous Page](../qunit/qunit_api.md) [Next Page](../qunit/qunit_execution_procedure.md) 
