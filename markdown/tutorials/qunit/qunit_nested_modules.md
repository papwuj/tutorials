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


[Previous Page](../qunit/qunit_callbacks.md) [Next Page](../qunit/qunit_quick_guide.md) 
