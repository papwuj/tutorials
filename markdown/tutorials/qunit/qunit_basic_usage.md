# QUnit - Basic Usage
Now we'll show you a step-by-step process to get a kickstart in QUnit using a basic example.

## Import qunit.js
qunit.js of Qunit library represents the test runner and test framework.

```
<script src = "https://code.jquery.com/qunit/qunit-1.22.0.js"></script>
```
## Import qunit.css
qunit.css of Qunit library styles the test suite page to display the test results.

```
<link rel = "stylesheet" href = "https://code.jquery.com/qunit/qunit-1.22.0.css">
```
## Add Fixture
Add two div elements with **id = "qunit"** and **"qunit-fixture"**. These div elements are required and provide the fixture for tests.

```
<div id = "qunit"></div>
<div id = "qunit-fixture"></div>
```
## Create a Function to Test
```
function square(x) {
   return x * x;
}
```
## Create a Test Case
Make a call to the QUnit.test function, with two arguments.

   * **Name** − The name of the test to display the test results.
   * **Function** − Function testing code, having one or more assertions.

```
QUnit.test( "TestSquare", function( assert ) {
   var result = square(2);
   assert.equal( result, "4", "square(2) should be 4." );
});
```
## Run the Test
Now let us see the complete code in action.

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
         function square(x) {
            return x * x;
         }
         QUnit.test( "TestSquare", function( assert ) {
            var result = square(2);
            assert.equal( result, "4", "square(2) should be 4." );
         });
      </script>
   </body>
</html>
```
Load the page in the browser. The test runner calls **QUnit.test()** when the page gets loaded and adds the test to a queue. Execution of test case is deferred and controlled by the test runner.

## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="260px" src="../qunit/src/basic_usage.htm"></iframe>

   * **Header** − Test suite header displays the page title, a green bar when all tests are passed. Otherwise, a red bar when at least one test has failed, a bar with a three checkboxes to filter the test results, and a blue bar with the navigator.userAgent text to display the browser details.
   * **Hide passed tests checkbox** − To hide the passed test cases and showcase only the failed test cases.
   * **Check for globals checkbox** − To show the list of all properties on the window object, before and after each test, then check for differences. Modification to the properties will fail the test.
   * **No try-catch checkbox** − To run test cases outside of a try-catch block so that in case of a test throwing an exception, the testrunner will die and show native exception.
   * **Summary** − Shows the total time taken to run the test cases. Total test cases run and failed assertions.
   * **Contents** − Shows the test results. Each test result has the name of the test followed by failed, passed, and total assertions. Each entry can be clicked to get further details.


[Previous Page](../qunit/qunit_environment.md) [Next Page](../qunit/qunit_api.md) 
