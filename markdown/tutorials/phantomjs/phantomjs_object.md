# PhantomJS - Object
In this chapter, we will look at the four important objects PhantomJS. They are as follows −

   * CookiesEnabled
   * Cookies
   * LibraryPath
   * Version

Let us now discuss each of these in detail.

## cookiesEnabled
It tells whether the cookies are enabled or not. It will return **true**, if yes; otherwise **false**.

### Syntax
Its syntax is as follows −

```
phantom.cookiesEnabled
```
### Example
**cookieenabled.js**

```
phantom.addCookie ({  
   //adding cookie with addcookie property 
   name: 'c1', 
   value: '1', 
   domain: 'localhost' 
}); 

console.log("Cookie Enabled value is : "+phantom.cookiesEnabled); 
phantom.exit();
```
### Output
**Command** − phantomjs cookieenabled.js

```
Cookie Enabled value is : true
```
## Cookies
It helps to add and set cookies to a domain. It returns an object with all the cookies available for the domain.

### Syntax
Its syntax is as follows −

```
phantom.cookies;
```
### Example
**Filename: phantomcookie.js**

```
phantom.addCookie ({ 
   name: 'c1', 
   value: '1', 
   domain: 'localhost' 
}); 
phantom.addCookie ({ 
   name: 'c2', 
   value: '2', 
   domain: 'localhost' 
}); 
phantom.addCookie ({ 
   name: 'c3', 
   value: '3', 
   domain: 'localhost' 
}); 
console.log(JSON.stringify(phantom.cookies)); 
phantom.exit();
```
### Output
**Command** − phantomjs phantomcookie.js

```
[{"domain":".localhost","httponly":false,"name":"c3","path":"/","secure":false, " 
value":"3"},{"domain":".localhost","httponly":false,"name":"c2","path":"/","sec u 
re":false,"value":"2"},{"domain":".localhost","httponly":false,"name":"c1","pat h
":"/","secure":false,"value":"1"}]
```
In the above example, we added some cookies to the localhost domain. We then fetched it using **phantom.cookies**. It returns an object with all the cookies by using the **JSON stringify** method to convert the JavaScript object into a string. You can also use **foreach** to access the name/values of the cookies.

## LibraryPath
PhantomJS libraryPath stores the script path to be used by the **injectJS** method.

### Syntax
Its syntax is as follows −

```
phantom.libraryPath
```
### Example
Here is an example to find out the version.

```
var webPage = require('webpage');
var page = webPage.create();

page.open('http://www.tutorialspoint.com/jquery', function(status) {
   if (status === "success") { 
      page.includeJs('http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js ', function() { 
         if (page.injectJs('do.js')) { 
            // returnTitle is a function loaded from our do.js file - see below 
            return returnTitle(); 
         });
         
         console.log(title); 
         phantom.exit(); 
      } 
   } 
});

window.returnTitle = function() { 
   return document.title;
};
```
The above program generates the following **output**.

```
Jquery Tutorial
```
## Version
It gives the version of the PhantomJS that is running and returns the details in an object. For example: {"major":2,"minor":1,"patch":1}

### Syntax
Its syntax is as follows −

```
phantom.version
```
### Example
Here is an example to find out the version.

```
var a = phantom.version;
console.log(JSON.stringify(a));
console.log(a.major);
console.log(a.minor);
console.log(a.patch);
phantom.exit();
```
The above program generates the following **output**.

```
{"major":2,"minor":1,"patch":1} 
2 
1 
1
```
In the above example, we have used **console.log** to print the version. Currently, we are running on version 2. It returns the object with the details shown in the above code block.


[Previous Page](../phantomjs/phantomjs_environment_setup.md) [Next Page](../phantomjs/phantomjs_methods.md) 
