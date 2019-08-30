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


[Previous Page](../qunit/qunit_overview.md) [Next Page](../qunit/qunit_basic_usage.md) 
