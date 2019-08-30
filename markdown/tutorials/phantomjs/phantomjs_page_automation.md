# PhantomJS - Page Automation
PhantomJS, with the help of its webpage module APIs, can manipulate webpages and perform operations such as DOM manipulation, clicking on buttons, etc.

## Fetch Images from a Page
The following program shows how you can use PhantomJS to fetch images from a page.

```
var wpage = require('webpage').create();
wpage.onConsoleMessage = function(str) {
   console.log(str.length);
}
wpage.open("http://phantomjs.org", function(status) {
   console.log(status);
   var element = wpage.evaluate(function() {
      var imgdata =  document.querySelectorAll('img');
      var imgsrc = [];
      
      if (imgdata) {
         for (var i in imgdata) {
            imgsrc.push(imgdata[0].src);
         }
      }
      return imgsrc;
   });
   console.log(JSON.stringify(element));
});
```
The above program generates the following **output**.

```
Success 
["http://phantomjs.org/img/phantomjslogo.png","http://phantomjs.org/img/phantom 
js-logo.png","http://phantomjs.org/img/phantomjslogo.png","http://phantomjs.org 
/img/phantomjs-logo.png"]
```
It is possible to include external JavaScript in a page using the **injectJS webpage method**. There are many properties and methods, which can help page automation and do many other things. You can refer the webpage module where the properties and methods are explained in detail.


[Previous Page](../phantomjs/phantomjs_screen_capture.md) [Next Page](../phantomjs/phantomjs_network_monitoring.md) 
