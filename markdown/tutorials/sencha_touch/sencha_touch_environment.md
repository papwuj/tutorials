# Sencha Touch - Environment
## Local Environment Setup
This section guides you on how to download and set up Sencha Touch on your machine. Please follow the steps to set up the environment.

## Downloading library files
Download a commercial version of Sencha Touch library files from the following link [https://www.sencha.com](https://www.sencha.com/products/download) . You will get the trial version from the site on your registered mail id, which will be a zipped folder named sencha-touch-2.4.2-commercial.

Unzip the folder and you will find various JavaScript and CSS files to include in your application. Include mostly the following files −

**Javascript Files** − JS file which you can find under folder \sencha-touch-2.4.2commercial\touch-2.4.2 are −

You can add these files to your projects JS folder or you can provide a direct path where the files reside in your system.

**CSS Files** − There are number of theme based files which you can find under folder I:\sencha touch\sencha-touch-2.4.2-commercial\touch-2.4.2\resources\css\sencha-touch.css

These library files will be added in Sencha Touch application as follows −

```
<html>
   <head>
      <script type = "text/javascript" src = "../sencha-touch-2.4.2-commercial/touch-2.4.2/sencha-touch-all.js"></script>  
      <link href = "../sencha-touch-2.4.2-commercial/touch-2.4.2/resources/css/sencha-touch.css" rel = "stylesheet" />
      <script type ="text/javascript" src = "app.js" > </script> 
   </head>
</html>
```
You can keep Sencha Touch application code in app.js file.

## CDN Setup
CDN is content delivery network with which you do not need to download the Sencha Touch library files, instead you can directly add CDN link for ExtJS to your program as follows −

```
<html>
   <head>
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js"></script>    
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css" rel="stylesheet" />
      <script type = "text/javascript" src = "app.js" > </script> 
   </head>
</html>
```
## Popular Editors
As it is a JavaScript framework used for developing web applications, the project will have HTML, JS files, and to write your Ext JS programs, you will need a text editor. There are multiple IDEs available in the market. But for now, you can consider one of the following −

   * **Notepad** − On Windows machine, you can use any simple text editor such as Notepad (Recommended for this tutorial), Notepad++.
   * **Brackets** − Another popular IDE which can be downloaded from [http://brackets.io/](http://brackets.io/) .
   * **Sublime** − Another popular IDE which can be downloaded from [https://www.sublimetext.com/3/](https://www.sublimetext.com/3) .


[Previous Page](../sencha_touch/sencha_touch_overview.md) [Next Page](../sencha_touch/sencha_touch_naming_convention.md) 
