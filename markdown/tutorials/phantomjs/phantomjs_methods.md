# PhantomJS - Methods
PhantomJS is a platform to help execute JavaScript without a browser. To do that, the following methods are used, which help in Adding the Cookie, Deleting, Clearing, Exiting the Script, Injecting JS, etc.

We will discuss more on these PhantomJS methods and their syntax in this chapter. Similar methods i.e. **addcookie, injectjs** exists on the webpage module, which will be discussed in the subsequent chapters.

PhantomJS exposes the following methods that can help us to execute JavaScript without the browser −

   * addCookie
   * clearCookie
   * deleteCookie
   * Exit
   * InjectJS

Let us now understand these methods in detail with examples.

## addCookie
The addcookie method is used to add cookies and store in the data. It is similar to how the browser stores it. It takes a single argument that is an object with all the properties of cookies and the syntax for it looks like shown below −

### Syntax
Its syntax is as follows −

```
phantom.addCookie ({ 
   "name" : "cookie_name",  
   "value" : "cookie_value", 
   "domain" : "localhost" 
});
```
The name, value, domain are mandatory properties to be added to the addcookie function. If any of this property is missing in the cookie objects, this method will fail.

   * **name** − specifies the name of the cookie.
   * **value** − specifies the value of the cookie to be used.
   * **domain** − domain to which the cookie will be applied.

### Example
Here is an example of the **addcookie** method.

```
var page = require('webpage').create(),url = 'http://localhost/tasks/a.html'; 
page.open(url, function(status) { 
   if (status === 'success') {     
      phantom.addCookie({   //add name cookie1 with value = 1 
         name: 'cookie1', 
         value: '1', 
         domain: 'localhost' 
      }); 
      phantom.addCookie({   // add cookie2 with value 2 
         name: 'cookie2', 
         value: '2', 
         domain: 'localhost' 
      }); 
      phantom.addCookie({   // add cookie3 with value 3 
         name: 'cookie3', 
         value: '3', 
         domain: 'localhost' 
      }); 
      console.log('Added 3 cookies'); 
      console.log('Total cookies :'+phantom.cookies.length);  
      
      // will output the total cookies added to the url.    
   } else { 
      console.error('Cannot open file'); 
      phantom.exit(1); 
   } 
});
```
### Example
**a.html**

```
<html>
   <head>
      <title>Welcome to phantomjs test page</title>
   </head>
   
   <body>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
   </body>
</html>
```
The above program generates the following **output**.

```
Added 3 cookies 
Total cookies :3
```
The code comments are self-explanatory.

## clearCookies
This method allows deleting all the cookies.

### Syntax
Its syntax is as follows −

```
phantom.clearCookies();
```
This concept works similar to deleting the browser cookies by selecting in the browser menu.

### Example
Here is an example of the **clearCookies** method.

```
var page = require('webpage').create(),url = 'http://localhost/tasks/a.html'; 
page.open(url, function(status) { 
   if (status === 'success') {     
      phantom.addCookie({   //add name cookie1 with value = 1 
         name: 'cookie1', 
         value: '1', 
         domain: 'localhost' 
      }); 
      phantom.addCookie({   // add cookie2 with value 2 
         name: 'cookie2', 
         value: '2', 
         domain: 'localhost' 
      }); 
      phantom.addCookie({   // add cookie3 with value 3 
         name: 'cookie3', 
         value: '3', 
         domain: 'localhost' 
      }); 
      console.log('Added 3 cookies'); 
      console.log('Total cookies :'+phantom.cookies.length); 
      phantom.clearCookies(); 
      console.log(
         'After clearcookies method total cookies :' +phantom.cookies.length); 
      
      phantom.exit();     
   } else { 
      console.error('Cannot open file'); 
      phantom.exit(1); 
   } 
});
```
**a.html**

```
<html>
   <head>
      <title>Welcome to phantomjs test page</title>
   </head>
   
   <body>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
      <h1>This is a test page</h1>
   </body>
</html>
```
The above program generates the following **output**.

```
Added 3 cookies 
Total cookies :3 
After clearcookies method total cookies :0
```
## deleteCookie
Delete any cookie in the **CookieJar** with a ‘name' property matching cookieName. It will return **true**, if successfully deleted; otherwise **false**.

### Syntax
Its syntax is as follows −

```
phantom.deleteCookie(cookiename);
```
Let us understand **addcookie, clearcookies** and **deletecookie** with the help of an example.

### Example
Here is an example to demonstrate the use of deleteCookie method −

**File: cookie.js**

```
var page = require('webpage').create(),url = 'http://localhost/tasks/a.html'; 
page.open(url, function(status) { 
   if (status === 'success') {     
      phantom.addCookie({   //add name cookie1 with value = 1 
         name: 'cookie1', 
         value: '1', 
         domain: 'localhost' 
      }); 
      phantom.addCookie({   // add cookie2 with value 2 
         name: 'cookie2', 
         value: '2', 
         domain: 'localhost' 
      });
      phantom.addCookie({   // add cookie3 with value 3 
         name: 'cookie3', 
         value: '3', 
         domain: 'localhost' 
      });  
      console.log('Added 3 cookies'); 
      console.log('Total cookies :'+phantom.cookies.length); 
      
      //will output the total cookies added to the url.    
      console.log("Deleting cookie2"); 
      phantom.deleteCookie('cookie2'); 
      
      console.log('Total cookies :'+phantom.cookies.length); 
      phantom.clearCookies();
      
      console.log(
         'After clearcookies method total cookies :' +phantom.cookies.length); 
      phantom.exit(); 
   } else { 
      console.error('Cannot open file'); 
      phantom.exit(1); 
   } 
});
```
The above program generates the following **output**.

```
phantomjs cookie.js
Added 3 cookies
Total cookies :3
Deleting cookie2
Total cookies :2
After clearcookies method total cookies :0
```
## Exit
The phantom.exit method will exit the script which it had started. It exits the program with return value mentioned. It gives **‘0’**, if there is no value passed.

### Syntax
Its syntax is as follows −

```
phantom.exit(value);
```
In case you do not add **phantom.exit**, then the command line assumes that the execution is still on and will not complete.

### Example
Let us look at an example to understand the use of the **exit** method.

```
console.log('Welcome to phantomJs');  // outputs Welcome to phantomJS 
var a = 1; 
if (a === 1) { 
   console.log('Exit 1'); //outputs Exit 1 
   phantom.exit(); // Code exits. 
} else { 
   console.log('Exit 2'); 
   phantom.exit(1); 
}
```
The above program generates the following **output**.

**phantomjs exit.js**

```
Welcome to phantomJs 
Exit 1
```
Any piece of code after phantom.exit will not be executed, since phantom.exit is a method to end the script.

## injectJs
InjectJs is used to add **addtionaljs** files in phantom. If the file is not found in the current **directory librarypath**, then the phantom property (phantom.libraryPath) is used as an additional place to track the path. It returns **true** if the file addition is successful otherwise **false** for failure, incase if it is not able to locate the file.

### Syntax
Its syntax is as follows −

```
phantom.injectJs(filename);
```
### Example
Let us look at the following example to understand the use of **injectJs**.

**Filename: inject.js**

```
console.log(“Added file”);
```
**File name: addfile.js**

```
var addfile =  injectJs(inject.js);
console.log(addfile);
phantom.exit();
```
### Output
**Command** − C:\phantomjs\bin&gt;phantomjs addfile.js

```
Added file // coming from inject.js
true
```
In the above example, **addfile.js** calls the file **inject.js** using injectJs. When you execute addfile.js, the console.log present in inject.js is shown in the output. It also shows true for addfile variable since the file inject.js was added successfully.


[Previous Page](../phantomjs/phantomjs_object.md) [Next Page](../phantomjs/phantomjs_webpage_module_properties.md) 
