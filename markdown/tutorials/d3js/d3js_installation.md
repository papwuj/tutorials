# D3.js - Installation
In this chapter, we will learn how to set up the D3.js development environment. Before we start, we need the following components −

   * D3.js library
   * Editor
   * Web browser
   * Web server

Let us go through the steps one by one in detail.

## D3.js Library
We need to include the D3.js library into your HTML webpage in order to use D3.js to create data visualization. We can do it in the following two ways −

   * Include the D3.js library from your project's folder.
   * Include D3.js library from CDN (Content Delivery Network).

### Download D3.js Library
D3.js is an open-source library and the source code of the library is freely available on the web at [https://d3js.org/](https://d3js.org/)  website. Visit the D3.js website and download the latest version of D3.js (d3.zip). As of now, the latest version is 4.6.0.

After the download is complete, unzip the file and look for **d3.min.js**. This is the minified version of the D3.js source code. Copy the d3.min.js file and paste it into your project's root folder or any other folder, where you want to keep all the library files. Include the d3.min.js file in your HTML page as shown below.

**Example** − Let us consider the following example.

```
<!DOCTYPE html>
<html lang = "en">
   <head>
      <script src = "/path/to/d3.min.js"></script>
   </head>

   <body>
      <script>
         // write your d3 code here.. 
      </script>
   </body>
</html>
```
D3.js is a JavaScript code, so we should write all our D3 code within “script” tag. We may need to manipulate the existing DOM elements, so it is advisable to write the D3 code just before the end of the “body” tag.

### Include D3 Library from CDN
We can use the D3.js library by linking it directly into our HTML page from the Content Delivery Network (CDN). CDN is a network of servers where files are hosted and are delivered to a user based on their geographic location. If we use the CDN, we do not need to download the source code.

Include the D3.js library using the CDN URL [https://d3js.org/d3.v4.min.js](https://d3js.org/d3.v4.min.js)  into our page as shown below.

**Example** − Let us consider the following example.

```
<!DOCTYPE html>
<html lang = "en">
   <head>
      <script src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <script>
         // write your d3 code here.. 
      </script>
   </body>
</html>
```
## D3.js Editor
We will need an editor to start writing your code. There are some great IDEs (Integrated Development Environment) with support for JavaScript like −

   * Visual Studio Code
   * WebStorm
   * Eclipse
   * Sublime Text

These IDEs provide intelligent code completion as well as support some of the modern JavaScript frameworks. If you do not have fancy IDE, you can always use a basic editor like Notepad, VI, etc.

## Web Browser
D3.js works on all the browsers except IE8 and lower.

### Web Server
Most browsers serve local HTML files directly from the local file system. However, there are certain restrictions when it comes to loading external data files. In the latter chapters of this tutorial, we will be loading data from external files like **CSV** and **JSON**. Therefore, it will be easier for us, if we set up the web server right from the beginning.

You can use any web server, which you are comfortable with − e.g. IIS, Apache, etc.

### Viewing Your Page
In most cases, we can just open your HTML file in a web browser to view it. However, when loading external data sources, it is more reliable to run a local web server and view your page from the server **(http://localhost:8080)**.


[Previous Page](../d3js/d3js_introduction.md) [Next Page](../d3js/d3js_concepts.md) 
