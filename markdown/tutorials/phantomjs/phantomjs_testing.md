# PhantomJS - Testing
**PhantomJS** has a lot of API for a webpage, which gives all the details. PhantomJS can be used to for testing like getting the content of a page, taking screen share, converting page into a pdf, etc. There are many popular testing libraries in the market, which can be used along with PhantomJS and can be used for testing.

Some of the popular frameworks that can work with PhantomJS are as follows −

   * Mocha
   * Jasmine
   * Qunit
   * Hiro
   * Laika
   * Buster.JS
   * WebDriver

## Example – PhantomJS with Qunit
```
(function () {     
   var url, timeout,args = require('system').args, page = require('webpage').create(); 
   url = args[1]; 
   timeout = parseInt(10, 10); 
   
   page.onConsoleMessage = function (msg) {  
      //prints all the console messages 
      console.log(msg); 
   }; 
   page.onInitialized = function () {  // called when page is initialized 
      page.evaluate(callqunit); 
   }; 
   page.onCallback = function (message) { // called from  
      var result, failed; 
      
      if (message) {  
         if (message.name === 'QUnit.done') { 
            result = message.data; 
            failed = !result || !result.total || result.failed;  
            
            if (!result.total) { 
               console.error('No tests were executed'); 
            } 
            pageexit(failed ? 1 : 0); 
         } 
      } 
   };  
   page.open(url, function (status) { // opening page  
      if (status !== 'success') { 
         console.error('Unable to access network: ' + status); 
         pageexit(1); 

      } else { 
         var checkqunit = page.evaluate(function () { 
            //evaluating page and chcking if qunit object 
               is present on the given page url 
            return (typeof QUnit === 'undefined' || !QUnit); 
         }); 
         
         if (checkqunit) { 
            console.error('Qunit scripts are not present on the page'); 
            pageexit(1); 
         }             
         
         //timeout of 10seconds is used otherwise message from console will get printed. 
         setTimeout(function () { 
            console.error('The specified timeout of ' + timeout + ' seconds has expired. 
               Aborting...'); 
            pageexit(1); 
         }, timeout * 1000);           
      } 
   });  
   function callqunit() {
```
## qunit.html
```
<!DOCTYPE html> 
<html> 

   <head> 
      <meta charset = "utf-8"> 
      <meta name = "viewport" content = "width = device-width"> 
      <title>QUnit Example</title> 
      <link rel = "stylesheet" href = "https://code.jquery.com/qunit/qunit-2.3.2.css"> 
   </head> 

   <body> 
      <div id = "qunit"></div> 
      <div id = "qunit-fixture"></div> 
      <script src = "https://code.jquery.com/qunit/qunit-2.3.2.js"></script> 
   </body> 
   
</html>
```
## Output
**Command** − phantomjs qunit.js http://localhost/tasks/qunit.html

The above program generates the following output.

```
{"passed":3,"failed":2,"total":5,"runtime":23}
Time taken is 23ms to run 5 tests.
3 passed, 2 failed.
```

[Previous Page](../phantomjs/phantomjs_network_monitoring.md) [Next Page](../phantomjs/phantomjs_repl.md) 
