# QUnit - Quick Guide
# QUnit - Overview
Testing is the process of checking the functionality of the application whether it is working as per the requirements and to ensure that at the developer level, unit testing comes into picture. Unit testing is the testing of a single entity (class or method). Unit testing is very essential for every software organization to offer quality products to their clients.

Unit testing can be done in two ways as mentioned in the following table.

## What is QUnit?
QUnit is a unit testing framework for JavaScript programming language. It is important in the test driven development, and is used by jQuery, jQuery UI, and jQuery Mobile projects. QUnit is capable of testing any generic JavaScript codebase.

QUnit promotes the idea of "first testing then coding", which emphasizes on setting up the test data for a piece of code, which can be tested first and then implemented. This approach is like "test a little, code a little, test a little, code a little..." which increases the programmer’s productivity and the stability of program code reducing the programmer’s stress and the time spent on debugging.

## Features of QUnit
QUnit is an open source framework used for writing and running tests. Following are its most prominent features −

   * QUnit provides Assertions for testing expected results.
   * QUnit provides Test fixtures for running tests.
   * QUnit tests allow to write code faster, which increases the quality.
   * QUnit is elegantly simple. It is less complex and takes less time.
   * QUnit tests can be run automatically and they check their own results and provide immediate feedback. There's no need to manually comb through a report of test results.
   * QUnit tests can be organized into test suites containing test cases and even other test suites.
   * QUnit shows test progress in a bar that is green if the test is going fine, and it turns red when a test fails.

## What is a Unit Test Case?
A Unit Test Case is a part of code which ensures that another part of the code (method) works as expected. To achieve the desired results quickly, test framework is required. QUnit is a perfect unit test framework for JavaScript programming language.

A formal written unit test case is characterized by a known input and by an expected output, which is worked out before the test is executed. The known input should test a precondition and the expected output should test a post-condition.

There must be at least two unit test cases for each requirement: one positive test and one negative test. If a requirement has sub-requirements, each sub-requirement must have at least two test cases as positive and negative.

# QUnit - Environment Setup
There are two ways to use QUnit.

   * **Local Installation** − You can download QUnit library on your local machine and include it in your HTML code.
   * **CDN Based Version** − You can include QUnit library into your HTML code directly from Content Delivery Network (CDN).

## Local Installation
   * Go to the [https://code.jquery.com/qunit/](https://code.jquery.com/qunit/)  to download the latest version available.
   * Place the downloaded **qunit-git.js** and **qunit-git.css** file in a directory of your website, e.g. /jquery.

### Example
You can include **qunit-git.js** and **qunit-git.css** files in your HTML file as follows −

```
<html> 
   <head> 
      <meta charset = "utf-8"> 
      <title>QUnit basic example</title> 
      <link rel = "stylesheet" href = "/jquery/qunit-git.css"> 
      <script src = "/jquery/qunit-git.js"></script> 
   </head> 
   
   <body> 
      <div id = "qunit"></div> 
      <div id = "qunit-fixture"></div>  
      <script> 
         QUnit.test( "My First Test", function( assert ) { 
            var value = "1"; 
            assert.equal( value, "1", "Value should be 1" ); 
         }); 
      </script> 
   </body> 
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="260px" src="../qunit/src/first_application.htm"></iframe>

## CDN Based Version
You can include QUnit library into your HTML code directly from Content Delivery Network (CDN).

### Example
Let us rewrite the above example using QUnit library from jQuery CDN.

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
         QUnit.test( "My First Test", function( assert ) {
            var value = "1";
            assert.equal( value, "1", "Value should be 1" );
         });
      </script>
   </body>
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="260px" src="../qunit/src/first_application.htm"></iframe>

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

# QUnit - API
## Important APIs of QUnit
Some of the important Category of QUnit are −

## Category: Assert
It provides a set of assert methods.

## Category: Async Control
It provides a set of asynchronous operations.

## Category: Callbacks
When integrating QUnit into other tools like CI servers, these callbacks can be used as an API to read the test results.

## Category: Configuration and Utilities
These methods and properties are used as utility helpers and to configure QUnit. For example, to adjust the runtime behavior directly, extend the QUnit API via custom assertions, etc.

## Category: Test
It provides a set of testing operations.

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

# QUnit - Only Test
Sometimes it happens that our code is not ready and the test case written to test that method/code fails, if run. **QUnit.only** helps in this regards. A test method written using only method will be executed while other tests will not run. If more than one only methods are specified, then only the first one will execute. Let's see only method in action.

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
         
         QUnit.only( "test case 2", function( assert ) {
            assert.ok( true, "Module A: in test case 2" );
         });
		      
         QUnit.test( "test case 3", function( assert ) {
            assert.ok( true, "Module A: in test case 3" );
         });
		 
         QUnit.test( "test case 4", function( assert ) {
            assert.ok( true, "Module A: in test case 4" );
         });	 
      </script>
   </body>
</html>
```
## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="255px" src="../qunit/src/only_test.htm"></iframe>

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

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="255px" src="../qunit/src/expect_assertions.htm"></iframe>

# QUnit - Callbacks
When integrating QUnit into other tools like CI servers, these callbacks can be used as an API to read test results. Following is the execution procedure of the QUnit callback API method with an example.

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
         //Register a callback to fire whenever a testsuite starts.
         QUnit.begin(function( details ) {
            var data = document.getElementById("console").innerHTML;
            document.getElementById("console").innerHTML = "<br/>" + 
               "QUnit.begin- Test Suite Begins " + "<br/>" + 
               "Total Test: " + details.totalTests;
         });

         //Register a callback to fire whenever a test suite ends.		 
         QUnit.done(function( details ) {
            var data = document.getElementById("console").innerHTML;
            document.getElementById("console").innerHTML = data + "<br/><br/>" + 
               "QUnit.done - Test Suite Finised" +  "<br/>" + "Total: " +  
               details.total + " Failed: " + details.failed + " Passed: 
               " + details.passed;
         });
		 
         //Register a callback to fire whenever a module starts.
            QUnit.moduleStart(function( details ) {
               var data = document.getElementById("console").innerHTML;
               document.getElementById("console").innerHTML = data + "<br/><br/>" + 
                  "QUnit.moduleStart - Module Begins " +  "<br/>" + details.name;
         });
		 
         //Register a callback to fire whenever a module ends.	  
         QUnit.moduleDone(function( details ) {
            var data = document.getElementById("console").innerHTML;
            document.getElementById("console").innerHTML = data + "<br/><br/>" + 
               "QUnit.moduleDone - Module Finished " +  "<br/>" + details.name + 
               " Failed/total: " + details.failed +"/" + details.total ;
         });
		 
         //Register a callback to fire whenever a test starts.
         QUnit.testStart(function( details ) {
            var data = document.getElementById("console").innerHTML;
            document.getElementById("console").innerHTML = data + "<br/><br/>" + 
               "QUnit.testStart - Test Begins " +  "<br/>" + details.module +" 
               " + details.name;
         });
		 
         //Register a callback to fire whenever a test ends.
         QUnit.testDone(function( details ) {
            var data = document.getElementById("console").innerHTML;
            document.getElementById("console").innerHTML = data + "<br/><br/>" + 
               "QUnit.testDone - Test Finished " +  "<br/>" + details.module +" " 
               + details.name + "Failed/total: " + details.failed +" " + details.total+ 
               " "+ details.duration;
         });
		 
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

      <div id = "console" ></div>
   </body>
</html>
```
## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="350px" src="../qunit/src/callbacks.htm"></iframe>

# QUnit - Nested Modules
Modules with grouped test functions are used to define nested modules. QUnit run tests on the parent module before going deep on the nested ones, even if they're declared first. The **beforeEach** and **afterEach** callbacks on a nested module call will stack in LIFO (Last In, First Out) Mode to the parent hooks. You can specify the code to run before and after each test using the argument and hooks.

Hooks can also be used to create properties that will be shared on the context of each test. Any additional properties on the hooks object will be added to that context. The hooks argument is optional if you call QUnit.module with a callback argument.

The module's callback is invoked having the context as the test environment, with the environment's properties copied to the module's tests, hooks, and nested modules.

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
         QUnit.module( "parent module", function( hooks ) {
            hooks.beforeEach( function( assert ) {
               assert.ok( true, "beforeEach called" );
            });

            hooks.afterEach( function( assert ) {
               assert.ok( true, "afterEach called" );
            });

            QUnit.test( "hook test 1", function( assert ) {
               assert.expect( 2 );
            });

            QUnit.module( "nested hook module", function( hooks ) {
               // This will run after the parent module's beforeEach hook
               hooks.beforeEach( function( assert ) {
                  assert.ok( true, "nested beforeEach called" );
               });

               // This will run before the parent module's afterEach
               hooks.afterEach( function( assert ) {
                  assert.ok( true, "nested afterEach called" );
               });

               QUnit.test( "hook test 2", function( assert ) {
                  assert.expect( 4 );
               });
            });
         });
      </script>

      <div id = "console" ></div>
   </body>
</html>
```
## Verify the Output
You should see the following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="600px" height="305px" src="../qunit/src/nested_modules.htm"></iframe>


[Previous Page](../qunit/qunit_nested_modules.md) [Next Page](../qunit/qunit_useful_resources.md) 
