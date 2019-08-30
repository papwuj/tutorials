# D3.js - Quick Guide
# D3.js - Introduction
Data visualization is the presentation of data in a pictorial or graphical format. The primary goal of data visualization is to communicate information clearly and efficiently via statistical graphics, plots and information graphics.

Data visualization helps us to communicate our insights quickly and effectively. Any type of data, which is represented by a visualization allows users to compare the data, generate analytic reports, understand patterns and thus helps them to take the decision. Data visualizations can be interactive, so that users analyze specific data in the chart. Well, Data visualizations can be developed and integrated in regular websites and even mobile applications using different JavaScript frameworks.

## What is D3.js?
D3.js is a JavaScript library used to create interactive visualizations in the browser. The D3.js library allows us to manipulate elements of a webpage in the context of a data set. These elements can be **HTML, SVG,** or **Canvas elements** and can be introduced, removed, or edited according to the contents of the data set. It is a library for manipulating the DOM objects. D3.js can be a valuable aid in data exploration, it gives you control over your data's representation and lets you add interactivity.

## Why Do We Need D3.js?
D3.js is one of the premier framework when compare to other libraries. This is because it works on the web and its data visualizations are par excellence. Another reason it has worked so well is owing to its flexibility. Since it works seamlessly with the existing web technologies and can manipulate any part of the document object model, it is as flexible as the **Client Side Web Technology Stack** (HTML, CSS, and SVG). It has a great community support and is easier to learn.

## D3.js Features
D3.js is one of the best data visualization framework and it can be used to generate simple as well as complex visualizations along with user interaction and transition effects. Some of its salient features are listed below −

   * Extremely flexible.
   * Easy to use and fast.
   * Supports large datasets.
   * Declarative programming.
   * Code reusability.
   * Has wide variety of curve generating functions.
   * Associates data to an element or group of elements in the html page.

## D3.js Benefits
D3.js is an open source project and works without any plugin. It requires very less code and comes up with the following benefits −

   * Great data visualization.
   * It is modular. You can download a small piece of D3.js, which you want to use. No need to load the whole library every time.
   * Easy to build a charting component.
   * DOM manipulation.

In the next chapter, we will understand how to install D3.js on our system.

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

# D3.js - Concepts
D3.js is an open source JavaScript library for −

   * Data-driven manipulation of the Document Object Model (DOM).
   * Working with data and shapes.
   * Laying out visual elements for linear, hierarchical, network and geographic data.
   * Enabling smooth transitions between user interface (UI) states.
   * Enabling effective user interaction.

## Web Standards
Before we can start using D3.js to create visualizations, we need to get familiar with web standards. The following web standards are heavily used in D3.js.

   * HyperText Markup Language (HTML)
   * Document Object Model (DOM)
   * Cascading Style Sheets (CSS)
   * Scalable Vector Graphics (SVG)
   * JavaScript

Let us go through each of these web standards one by one in detail.

### HyperText Markup Language (HTML)
As we know, HTML is used to structure the content of the webpage. It is stored in a text file with the extension “.html”.

**Example** − A typical bare-bones HTML example looks like this

```
<!DOCTYPE html>
<html lang = "en">
   <head>
      <meta charset = "UTF-8">
      <title></title>
   </head>

   <body>
   </body>
</html>
```
### Document Object Model (DOM)
When a HTML page is loaded by a browser, it is converted to a hierarchical structure. Every tag in HTML is converted to an element / object in the DOM with a parent-child hierarchy. It makes our HTML more logically structured. Once the DOM is formed, it becomes easier to manipulate (add/modify/remove) the elements on the page.

Let us understand the DOM using the following HTML document −

```
<!DOCTYPE html>
<html lang = "en">
   <head>
      <title>My Document</title>
   </head>

   <body>
      <div>
         <h1>Greeting</h1>
         <p>Hello World!</p>
      </div>
   </body>
</html>
```
The document object model of the above HTML document is as follows,

![Document Object Model](../d3js/images/document_object_model.jpg)

### Cascading Style Sheets (CSS)
While HTML gives a structure to the webpage, CSS styles makes the webpage more pleasant to look at. CSS is a **Style Sheet Language** used to describe the presentation of a document written in HTML or XML (including XML dialects like SVG or XHTML). CSS describes how elements should be rendered on a webpage.

### Scalable Vector Graphics (SVG)
SVG is a way to render images on the webpage. SVG is not a direct image, but is just a way to create images using text. As its name suggests, it is a **Scalable Vector**. It scales itself according to the size of the browser, so resizing your browser will not distort the image. All browsers support SVG except IE 8 and below. Data visualizations are visual representations and it is convenient to use SVG to render visualizations using the D3.js.

Think of SVG as a canvas on which we can paint different shapes. So to start with, let us create an SVG tag −

```
<svg width = "500" height = "500"></<svg>
```
The default measurement for SVG is pixels, so we do not need to specify if our unit is pixel. Now, if we want to draw a rectangle, we can draw it using the code below −

```
<svg width = "500" height = "500">
   <rect x = "0" y = "0" width = "300" height = "200"></rect>
</svg>
```
We can draw other shapes in SVG such as − Line, Circle, Ellipse, Text and Path.

Just like styling HTML elements, styling SVG elements is simple. Let us set the background color of the rectangle to yellow. For that, we need to add an attribute “fill” and specify the value as yellow as shown below −

```
<svg width = "500" height = "500">
   <rect x = "0" y = "0" width = "300" height = "200" fill = "yellow"></rect>
</svg>
```
<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="520px" src="../d3js/src/fill.htm"></iframe>

### JavaScript
JavaScript is a loosely typed client side scripting language that executes in the user's browser. JavaScript interacts with HTML elements (DOM elements) in order to make the web user interface interactive. JavaScript implements the **ECMAScript Standards**, which includes core features based on ECMA-262 specifications as well as other features, which are not based on the ECMAScript standards. JavaScript knowledge is a prerequisite for D3.js.

# D3.js - Selections
Selections is one of the core concepts in D3.js. It is based on CSS selectors. It allows us to select one or more elements in a webpage. In addition, it allows us to modify, append, or remove elements in a relation to the pre-defined dataset. In this chapter, we will see how to use selections to create data visualizations.

D3.js helps to select elements from the HTML page using the following two methods −

   * **select()** − Selects only one DOM element by matching the given CSS selector. If there are more than one elements for the given CSS selector, it selects the first one only.
   * **selectAll()** − Selects all DOM elements by matching the given CSS selector. If you are familiar with selecting elements with jQuery, D3.js selectors are almost the same.

Let us go through each of the methods in detail.

## The select() method
The select() method selects the HTML element based on CSS Selectors. In CSS Selectors, you can define and access HTML-elements in the following three ways −

   * Tag of a HTML element (e.g. div, h1, p, span, etc.,)
   * Class name of a HTML element
   * ID of a HTML element

Let us see it in action with examples.

### Selection by Tag
You can select HTML elements using its TAG. The following syntax is used to select the “div” tag elements,

```
d3.select(“div”)
```
**Example** − Create a page “select_by_tag.html” and add the following changes,

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div>
         Hello World!    
      </div>
      
      <script>
         alert(d3.select("div").text());
      </script>
   </body>
</html>
```
By requesting the webpage through the browser, you will see the following output on the screen −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/select_by_tag.htm"></iframe>

### Selection by Class name
HTML elements styled using CSS classes can be selected by using the following syntax.

```
d3.select(“.<class name>”)
```
Create a webpage “select_by_class.html” and add the following changes −

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div class = "myclass">
         Hello World!
      </div>
      
      <script>
         alert(d3.select(".myclass").text());
      </script>
   </body>
</html>
```
By requesting the webpage through the browser, you will see the following output on the screen −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/select_by_class.htm"></iframe>

### Selection by ID
Every element in a HTML page should have a unique ID. We can use this unique ID of an element to access it using the select() method as specified below.

```
d3.select(“#<id of an element>”)
```
Create a webpage “select_by_id.html” and add the following changes.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div id = "hello">
         Hello World!
      </div>
      
      <script>
         alert(d3.select("#hello").text());
      </script>
   </body>
</html>
```
By requesting the webpage through the browser, you will see the following output on the screen.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/select_by_id.htm"></iframe>

## Adding DOM Elements
The D3.js selection provides the **append()** and the **text()** methods to append new elements into the existing HTML documents. This section explains about adding DOM elements in detail.

### The append() Method
The append() method appends a new element as the last child of the element in the current selection. This method can also modify the style of the elements, their attributes, properties, HTML and text content.

Create a webpage “select_and_append.html” and add the following changes −

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div class = "myclass">
         Hello World!
      </div>
      
      <script>
         d3.select("div.myclass").append("span");
      </script>
   </body>
</html>
```
Requesting the webpage through browser, you could see the following output on the screen,

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/select_and_append.htm"></iframe>

Here, the append() method adds a new tag span inside the div tag as shown below −

```
<div class = "myclass">
   Hello World!<span></span>
</div>
```
### The text() Method
The text() method is used to set the content of the selected / appended elements. Let us change the above example and add the text() method as shown below.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div class = "myclass">
         Hello World!
      </div>
      
      <script>
         d3.select("div.myclass").append("span").text("from D3.js");
      </script>
   </body>
</html>
```
Now refresh the webpage and you will see the following response.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/text_function.htm"></iframe>

Here, the above script performs a chaining operation. D3.js smartly employs a technique called the **chain syntax**, which you may recognize from **jQuery**. By chaining methods together with periods, you can perform several actions in a single line of code. It is fast and easy. The same script can also access without chain syntax as shown below.

```
var body = d3.select("div.myclass");
var span = body.append("span");
span.text("from D3.js");
```
## Modifying Elements
D3.js provides various methods, **html(), attr()** and **style()** to modify the content and style of the selected elements. Let us see how to use modify methods in this chapter.

### The html() Method
The html() method is used to set the html content of the selected / appended elements.

Create a webpage “select_and_add_html.html” and add the following code.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div class = "myclass">
         Hello World!
      </div>
      
      <script>
         d3.select(".myclass").html("Hello World! <span>from D3.js</span>");
      </script>
   </body>
</html>
```
By requesting the webpage through the browser, you will see the following output on the screen.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/html_function.htm"></iframe>

### The attr() Method
The attr() method is used to add or update the attribute of the selected elements. Create a webpage “select_and_modify.html” and add the following code.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div class = "myclass">
         Hello World!
      </div>
      
      <script>
         d3.select(".myclass").attr("style", "color: red");
      </script>
   </body>
</html>
```
By requesting the webpage through the browser, you will see the following output on the screen.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/attribute_function.htm"></iframe>

### The style() Method
The style() method is used to set the style property of the selected elements. Create a webpage “select_and_style.html” and add the following code.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div class = "myclass">
         Hello World!
      </div>
      
      <script>
         d3.select(".myclass").style("color", "red");
      </script>
   </body>
</html>
```
By requesting the webpage through the browser, you will see the following output on the screen.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/style_function.htm"></iframe>

### The classed() Method
The classed() method is exclusively used to set the “class” attribute of an HTML element. Since, a single HTML element can have multiple classes; we need to be careful while assigning a class to an HTML element. This method knows how to handle one or many classes on an element, and it will be performant.

   * **Add class** − To add a class, the second parameter of the classed method must be set to true. It is defined below −

```
d3.select(".myclass").classed("myanotherclass", true);
```
   * **Remove class** − To remove a class, the second parameter of the classed method must be set to false. It is defined below −

```
d3.select(".myclass").classed("myanotherclass", false);
```
   * **Check class** − To check for the existence of a class, just leave off the second parameter and pass the class name you are querying. This will return true, if it exists, false, if it does not.

```
d3.select(".myclass").classed("myanotherclass");
```
This will return true, if any element in the selection has the class. Use **d3.select** for single element selection.

   * **Toggle class** − To flip a class to the opposite state – remove it if it exists already, add it if it does not yet exist – you can do one of the following.
   * For a single element, the code might look as shown below −

```
var element = d3.select(".myclass")
element.classed("myanotherclass", !oneBar.classed("myanotherclass"));
```
## The selectAll() Method
The selectAll() method is used to select multiple elements in the HTML document. The select method selects the first element, but the selectAll method selects all the elements that match the specific selector string. In case the selection matches none, then it returns an empty selection. We can chain all the appending modifying methods, **append(), html(), text(), attr(), style(), classed(),** etc., in the selectAll() method as well. In this case, the methods will affect all the matching elements. Let us understand by creating a new webpage “select_multiple.html” and add the following script −

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h2 class = "myclass">Message</h2>
      <div class = "myclass">
         Hello World!
      </div>
      
      <script>
         d3.selectAll(".myclass").attr("style", "color: red");
      </script>
   </body>
</html>
```
By requesting the webpage through the browser, you will see the following output on the screen.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/select_all_function.htm"></iframe>

Here, the attr() method applies to both **div** and **h2 tag** and the color of the text in both tags changes to Red.

# D3.js - Data Join
Data join is another important concept in D3.js. It works along with selections and enables us to manipulate the HTML document with respect to our data set (a series of numerical values). By default, D3.js gives data set the highest priority in its methods and each item in the data set corresponds to a HTML element. This chapter explains data joins in detail.

## What is a Data Join?
Data join enables us to inject, modify and remove elements (HTML element as well as embedded SVG elements) based on the data set in the existing HTML document. By default, each data item in the data set corresponds to an element (graphical) in the document. 

As the data set changes, the corresponding element can also be manipulated easily. Data join creates a close relationship between our data and graphical elements of the document. Data join makes manipulation of the elements based on the data set a very simple and easy process.

## How Data Join Works?
The primary purpose of the Data join is to map the elements of the existing document with the given data set. It creates a virtual representation of the document with respect to the given data set and provides methods to work with the virtual representation. Let us consider a simple data set as shown below.

```
[10, 20, 30, 25, 15]
```
The data set has five items and so, it can be mapped to five elements of the document. Let us map it to the **li** element of the following document using the selector's selectAll() method and data join's data() method.

### HTML
```
<ul id = "list">
   <li><li>
   <li></li>
</ul>
```
### D3.js code
```
d3.select("#list").selectAll("li").data([10, 20, 30, 25, 15]);
```
Now, there are five virtual elements in the document. The first two virtual elements are the two **li** element defined in the document as shown below.

```
1. li - 10
2. li - 20
```
We can use all the selector's element modifying methods like **attr(), style(), text()**, etc., for the first two **li** as shown below.

```
d3.select("#list").selectAll("li")
   .data([10, 20, 30, 25, 15])
   .text(function(d) { return d; });
```
The function in the text() method is used to get the **li** elements mapped data. Here, **d** represent 10 for first **li** element and 20 for second **li** element.

The next three elements can be mapped to any elements and it can be done using the data join's enter() and selector's append() method. The enter() method gives access to the remaining data (which is not mapped to the existing elements) and the append() method is used to create a new element from the corresponding data. Let us create **li** for the remaining data items as well. The data map is as follows −

```
3. li - 30
4. li - 25
5. li - 15
```
The code to create new a li element is as follows −

```
d3.select("#list").selectAll("li")
   .data([10, 20, 30, 25, 15])
   .text(function(d) { return "This is pre-existing element and the value is " + d; })
   .enter()
   .append("li")
   .text(function(d) 
      { return "This is dynamically created element and the value is " + d; });
```
Data join provides another method called as the **exit() method** to process the data items removed dynamically from the data set as shown below.

```
d3.selectAll("li")
   .data([10, 20, 30, 15])
   .exit()
   .remove()
```
Here, we have removed the fourth item from the data set and its corresponding li using the exit() and the remove() methods.

The complete code is as follows −

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
      <style>
         body { font-family: Arial; }
      </style>
   </head>

   <body>
      <ul id = "list">
         <li></li>
         <li></li>
      </ul>
        
      <input type = "button" name = "remove" value = "Remove fourth value" 
         onclick = "javascript:remove()" />
      
      <script>
         d3.select("#list").selectAll("li")
            .data([10, 20, 30, 25, 15])
            .text(function(d) 
               { return "This is pre-existing element and the value is " + d; })
            .enter()
            .append("li")
            .text(function(d) 
               { return "This is dynamically created element and the value is " + d; });
             
         function remove() {
            d3.selectAll("li")
            .data([10, 20, 30, 15])
            .exit()
            .remove()
         }
      </script>
   </body>
</html>
```
The result of the above code will be as follows −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/remove_function.htm"></iframe>

# D3.js - Array API
D3 contains a collection of modules. You can use each module independently or a collection of modules together to perform operations. This chapter explains about the Array API in detail.

## What is an Array?
An Array contains a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.

## Configuring API
You can easily configure the API using the script below.

```
<script src = "https://d3js.org/d3-array.v1.min.js"></script>
<body>
   <script>
   </script>
</body>
```
## Array Statistics API Methods
Following are some of the most important array statistics API methods.

   * d3.min(array)
   * d3.max(array)
   * d3.extent(array)
   * d3.sum(array)
   * d3.mean(array)
   * d3.quantile(array)
   * d3.variance(array)
   * d3.deviation(array)

Let us discuss each of these in detail.

### d3.min(array)
It returns the minimum value in the given array using natural order.

**Example** − Consider the following script.

```
<script>
   var data = [20,40,60,80,100];
   console.log(d3.min(data));
</script>
```
**Result** − The above script returns the minmum value in the array 20 in your console.

### d3.max(array)
It returns the maximum value in a given array.

**Example** − Consider the following script.

```
<script>
   var data = [20,40,60,80,100];
   console.log(d3.max(data));
</script>
```
**Result** − The above script returns the maximum value in the array (100) in your console.

### d3.extent(array)
It returns the minimum and maximum value in the given array.

**Example** − Consider the following script.

```
<script>
   var data = [20,40,60,80,100];
   console.log(d3.extent(data));
</script>
```
**Result** − The above script returns an extent value [20,100].

### d3.sum(array)
It returns the sum of the given array of numbers. If the array is empty, it returns 0.

**Example** − Consider the following below.

```
<script>
   var data = [20,40,60,80,100];
   console.log(d3.sum(data));
</script>
```
**Result** − The above script returns the sum value is 300.

### d3.mean(array)
It returns the mean of the given array of numbers.

**Example** − Consider the following below.

```
<script>
   var data = [20,40,60,80,100];
   console.log(d3.mean(data));
</script>
```
**Result** − The above script returns the mean value as 60. Similarly, you can check the median value.

### d3.quantile(array)
It returns the p-quantile of the given sorted array of numbers, where p is a number in the range[0, 1]. For example, the median can be computed using p = 0.5, the first quartile at p = 0.25, and the third quartile at p = 0.75. This implementation uses the R-7 method, default R programming language and Excel.

**Example** − Consider the following example.

```
var data = [20, 40, 60, 80, 100];
d3.quantile(data, 0); // output is 20
d3.quantile(data, 0.5); // output is 60
d3.quantile(data, 1); // output is 100
```
Similarly, you can check other values.

### d3.variance(array)
It returns the variance of the given array of numbers.

**Example** − Consider the following script.

```
<script>
   var data = [20,40,60,80,100];
   console.log(d3.variance(data));
</script>
```
**Result** − The above script returns the variance value as 1000.

### d3.deviation(array)
It returns the standard deviation of the given array. If the array has fewer than two values, it returns as undefined.

**Example** − Consider the following below.

```
<script>
   var data = [20,40,60,80,100];
   console.log(d3.deviation(data));
</script>
```
**Result** − The above script returns the deviation value as 31.622776601683793.

**Example** − Let us perform all the Array API methods discussed above using the following script. Create a webpage “array.html” and add the following changes to it.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 array API</h3>
      <script>
         var data = [20,40,60,80,100];
         console.log(d3.min(data));  
         console.log(d3.max(data));
         console.log(d3.extent(data));
         console.log(d3.sum(data));
         console.log(d3.mean(data));
         console.log(d3.quantile(data,0.5));
         console.log(d3.variance(data));
         console.log(d3.deviation(data));
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following response.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/array.htm"></iframe>

![Array](../d3js/images/array.jpg)

## Array Search API Methods
Following are a couple of important Array search API methods.

   * d3.scan(array)
   * d3.ascending(a, b)

Let us understand both of these in detail.

### d3.scan(array)
This method is used to perform a linear scan of the specified array. It returns the index of the least element to the specified comparator. A simple example is defined below.

**Example** −

```
var array = [{one: 1}, {one: 10}];
console.log(d3.scan(array, function(a, b) { return a.one - b.one; })); // output is 0
console.log(d3.scan(array, function(a, b) { return b.one - a.one; })); // output is 1
```
### d3.ascending(a, b)
This method is used to perform the comparator function. It can be implemented as −

```
function ascending(a, b) {
   return a < b ? -1 : a > b ? 1 : a > =  b ? 0 : NaN;
}
```
If no comparator function is specified to the built-in sort method, the default order is alphabetical. The above function returns -1, if a is less than b, or 1, if a is greater than b, or 0.

Similarly, you can perform descending(a, b) method. It returns -1, if a is greater than b, or 1, if a is less than b, or 0. This function performs reverse natural order.

**Example** −

Create a webpage **array_search.html** and add the following changes to it.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 array API</h3>
      <script>
         var array = [{one: 1}, {one: 10}];
         console.log(d3.scan(array, function(a, b) { return a.one - b.one; })); // 0
         console.log(d3.scan(array, function(a, b) { return b.one - a.one; })); // 1
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/array_search.htm"></iframe>

## Array Transformations API
Following are some of the most prominent array transformations API methods.

   * d3.cross(a, b[, reducer])
   * d3.merge(arrays)
   * d3.pairs(array[, reducer])
   * d3.permute(array, indexes)
   * d3.zip(arrays)

Let us understand each of these in detail.

### d3.cross(a, b[, reducer])
This method is used to return the Cartesian product of the given two arrays a and b. A simple example is defined below.

```
d3.cross([10, 20], ["a", "b"]); // output is [[10, "a"], [10, "b"], [20, "a"], [20, "b"]]
```
### d3.merge(arrays)
This method is used to merge the arrays and it is defined below.

```
d3.merge([[10], [20]]); // output is [10, 20]
```
### d3.pairs(array[, reducer])
This method is used to pair array elements and is defined below.

```
d3.pairs([10, 20, 30, 40]); // output is [[10, 20], [20, 30], [30, 40]]
```
### d3.permute(array, indexes)
This method is used to perform the permutation from specified array and indexes. You can also perform the values from an object into an array. It is explained below.

```
var object = {fruit:"mango", color: "yellow"},
   fields = ["fruit", "color"];
d3.permute(object, fields); // output is "mango" "yellow"
```
### d3.zip(arrays)
This method is used to return an array of arrays. If arrays contain only a single array, the returned array contains one-element arrays. If no argument is specified, then the returned array is empty. It is defined below.

```
d3.zip([10, 20], [30, 40]); // output is [[10, 30], [20, 40]]
```
**Example** − Create a webpage **array_transform** and add the following changes to it.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 array API</h3>
      <script>
         console.log(d3.cross([10, 20], ["a", "b"]));
         console.log(d3.merge([[10], [30]]));
         console.log(d3.pairs([10, 20, 30, 40]));
         var object = {fruit:"mango", color: "yellow"},
         fields = ["fruit", "color"];
         console.log(d3.permute(object, fields)); 
         console.log(d3.zip([10, 20], [30, 40]));
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following response.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/array_transform.htm"></iframe>

![Array Transform](../d3js/images/array_transform.jpg)

# D3.js - Collections API
A collection is simply an object that groups multiple elements into a single unit. It is also called as a container. This chapter explains about collections API in detail.

## Configuring API
You can configure the API using the following script.

```
<script src = "https://d3js.org/d3-collection.v1.min.js"></script>
<script>

</script>
```
## Collections API Methods
Collections API contains objects, maps, sets and nests. Following are the most commonly used collections API methods.

   * Objects API
   * Maps API
   * Sets API
   * Nests API

Let us go through each of these API in detail.

### Objects API
Object API is one of the important data type. It supports the following methods −

   * **d3.keys(object)** − This method contains the object property keys and returns an array of the property names.
   * **d3.values(object)** − This method contains the object values and returns an array of property values.
   * **d3.entries(object)** − This method is used to return an array containing both keys and values of the specified object. Each entry is an object with a key and value.

**Example** − Let us consider the following code.

```
d3.entries({one: 1})
```
Here, key is one and value is 1.

**Example** − Create a webpage **objects.html** and add the following changes to it.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 collection API</h3>
      <script>
         var month = {"jan": 1, "Feb": 2, "mar": 3, "apr": 4};
         console.log(d3.keys(month));
         console.log(d3.values(month));
         console.log(d3.entries(month));
      </script>
   </body>
</html>
```
Now, request the browser and you will see the following response.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../prototype/src/objects.htm"></iframe>

![Collections API](../d3js/images/collections_api.jpg)

### Maps API
A map contains values based on key and value pairs. Each key and value pair is known as an entry. A Map contains only unique keys. It is useful to search, update or delete elements based on the key. Let us go through the various Maps API methods in detail.

   * **d3.map([object[, key]])** − This method is used to create a new map. Object is used to copy all enumerable properties.
   * **map.has(key)** − This method is used to check whether map has an entry for the specified key string.
   * **map.get(key)** − This method is used to return the value for the specified key string.
   * **map.set(key, value)** − This method is used to set the value for the specified key string. If the map previously had an entry for the same key string, the old entry is replaced with the new value.
   * **map.remove(key)** − It is used to remove the map entry. If the key is not specified, it returns false.
   * **map.clear()** − Removes all entries from this map.
   * **map.keys()** − Returns an array of string keys for every entry in this map.
   * **map.values()** − Returns an array of values for every entry in this map.
   * **map.entries()** − Returns an array of key-value objects for each entry in this map.
   * **(x) map.each(function)** − This method is used to call the specified function for each entry in the map.
   * **(xi) map.empty()** − Returns true if and only if this map has zero entries.
   * **(xii) map.size()** − Returns the number of entries in this map.

**Example** − Create a webpage **maps.html** and add the following changes to it.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 collection API</h3>
      <script>
         var month = d3.map([{name: "jan"}, {name: "feb"}], 
            function(d) { return d.name; });
         console.log(month.get("jan")); // {"name": "jan"}
         console.log(month.get("apr")); // undefined
         console.log(month.has("feb")); // true
         
         var map =  d3.map().set("fruit", "mango");
         console.log(map.get("fruit")); // mango
         console.log(map.remove("fruit")); // remove key and return true.
         console.log(map.size());    // size is 0 because key removed.
         console.log(map.empty());   // true
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following response.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../prototype/src/maps.htm"></iframe>

![Map API](../d3js/images/map_api.jpg)

Similarly, you can perform other operations as well.

### Sets API
A Set is a Collection that cannot contain duplicate elements. It models the mathematical set abstraction. Let us go through the various Sets API methods in detail.

   * **d3.set([array[, accessor]])** − This method is used to create a new set. Array is used to add string values. An accessor is optional.
   * **set.has(value)** − This method is used to check whether the set has an entry for the specified value string.
   * **set.add(value)** − It is used to add the specified value string to the set.
   * **set.remove(value)** − It is used to remove the set that contains the specified value string.
   * **set.clear()** − Removes all the values from this set.
   * **set.values()** − This method is used to return an array of values to the set.
   * **set.empty()** − Returns true if and only if this set has zero values.
   * **set.size()** − Returns the number of values in this set.

**Example** − Create a webpage **sets.html** and add the following changes to it.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 collection API</h3>
      <script>
         var fruits =  d3.set().add("mango")
          .add("apple").add("orange");
         console.log(fruits.has("grapes")); // return false.
         console.log(fruits.remove("apple")); //true
         console.log(fruits.size());    // size is 2
         console.log(fruits.empty());   // true
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following response on our screen.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../prototype/src/sets.htm"></iframe>

![Sets API](../d3js/images/sets_api.jpg)

Similarly, we can perform other operations as well.

### Nests API
Nesting API contains elements in array and performs in a hierarchical tree structure. Let us go through the various Nests API methods in detail.

   * **d3.nest()** − This method is used to create a new nest.
   * **nest.key(key)** − This method is used to initialize a new key function. This function is used to invoke each element in an input array and return elements in the group.
   * **nest.sortKeys(comparator)** − This method is used to sort keys in a specified comparator. Function is defined as d3.ascending or d3.descending.
   * **nest.sortValues(comparator)** − This method is used to sort values in a specified comparator. Comparator function sorts leaf elements.
   * **nest.map(array)** − This method is used to apply the specified array and in returning a nested map. Each entry in the returned map corresponds to a distinct key value returned by the first key function. The entry value depends on the number of registered key functions.
   * **nest.object(array)** − This method is used to apply the nest operator to the specified array and return a nested object.
   * **nest.entries(array)** − This method is used to apply the nest operator to the specified array and return an array of key-values entries.

Consider a simple webpage **nest.html** to perform the above discussed nest methods.

**Example** − Let us consider the following example.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 Nest API</h3>
      <script>
         var data = [
            {
               "color" : "red",
               "key" : 1
            },
            {
               "color" : "green",
               "key" : 2
            },
            {
               "color" : "blue",
               "key" : 75
            }
         ]
         var nest =  d3.nest()
            .key(function (d) { return d.color; })
            .entries(data)console.log(nest);
         var filter = nest.filter(function (d) { return d.key = = = 'red' })
         console.log(filter);
      </script>
   </body>
</html>
```
Now, check the result in a browser and we will see the following result.

```
Array[3]
0: Object
1: Object
2: Object
length: 3
__proto__: Array[0]

Array[1]
0: Object
length: 1
__proto__: Array[0]
```
# D3.js - Selection API
Selections are powerful data-driven transformation of the document object model (DOM). It is used to set Attributes, Styles, Properties, HTML or Text Content and much more. This chapter explains the selections API in detail.

## Configuring the API
You can configure the API directly using the script below.

```
<script src = "https://d3js.org/d3-selection.v1.min.js"></script>
<script>

</script>
```
## Selection API Methods
Following are the most important methods in selection API.

   * d3.selection()
   * d3.select(selector)
   * d3.selectAll(selector)
   * selection.selectAll(selector)
   * selection.filter(filter)
   * selection.merge(other)
   * d3.matcher(selector)
   * d3.creator(name)
   * selection.each(function)
   * selection.call(function[, arguments…])
   * d3.local()
   * local.set(node, value)
   * local.get(node)
   * local.remove(node)

Let us now discuss each of these in detail.

### d3.selection()
This method is used to select the root element. This function can also be used to test for selections or to extend the selection d3js.

### d3.select(selector)
This method is used to select the first element that matches the specified selector string.

**Example** − Let us consider the following example.

```
var body = d3.select("body");
```
If the selector is not a string, then it selects the specified node, which is defined below.

```
d3.select("p").style("color", "red");
```
### d3.selectAll(selector)
This method selects all the elements that match the specified selector string.

**Example** − Let us consider the following example.

```
var body = d3.selectAll("body");
```
If the selector is not a string, then it selects the specified array of nodes, which is defined below.

```
d3.selectAll("body").style("color", "red");
```
### selection.selectAll(selector)
This method is used to select an element. It selects the descendant elements that match the specified selector string. The elements in the returned selection are grouped by their corresponding parent node in this selection. If no element matches the specified selector for the current element, or if the selector is null, the group at the current index will be empty.

**Example** − Let us consider the following example.

```
var b = d3.selectAll("p").selectAll("b");
```
### selection.filter(filter)
This method is used to filter the selection, returning a new selection that contains only the elements for which the specified filter is true.

**Example** − Let us consider the following example.

```
var even = d3.selectAll("tr").filter(":nth-child(odd)");
```
Here, filter a selection of table rows returns only odd.

### selection.merge(other)
This method is used to return a new selection merging with the specified other selection.

**Example** − Let us consider the following example.

```
var rect = svg.selectAll("rect").data(data);
rect.enter().append("rect").merge(rect);
```
### d3.matcher(selector)
This method is used to assign the specified selector. It returns a function, which returns true.

**Example** − Let us consider the following example.

```
var p = selection.filter(d3.matcher("p"));
```
### d3.creator(name)
This method is used to assign the specified element name It returns a function, which creates an element of the given name, assuming that this is the parent element.

**Example** − Let us consider the following example.

```
selection.append(d3.creator("p"));
```
### selection.each(function)
This method is used to invoke the specified function for each selected element, in the order passed by the current datum (d), the current index (i) and the current group (nodes) with this as the current DOM element (nodes[i]). It is explained below.

```
parent.each(function(p, j) {
   d3.select(this)
      .selectAll(".child")
      .text(function(d, i) { return "child " + d.name + " of " + p.name; });
});
```
### selection.call(function[, arguments…])
It is used to invoke the specified function exactly once. The syntax is shown below.

```
function name(selection, first, last) {
   selection.attr("first-name", first).attr("last-name", last);
}
```
This method can be specified as shown below.

```
d3.selectAll("p").call(name, "Adam", "David");
```
### d3.local()
D3 local allows you to define the local state that is independent of data.

**Example** − Let us consider the following example.

```
var data = d3.local();
```
Unlike var, the value of each local is also scoped by the DOM.

### local.set(node, value)
This method sets the value of this local on the specified node to the value.

**Example** − Let us consider the following example.

```
selection.each(function(d) 
   { data.set(this, d.value); });
local.get(node)
```
This method returns the value of this local on the specified node. If the node does not define this local, then it returns the value from the nearest ancestor that defines it.

### local.remove(node)
This method deletes this local’s value from the specified node. It returns true, if the node defined, otherwise returns false.

# D3.js - Paths API
Paths are used to draw Rectangles, Circles, Ellipses, Polylines, Polygons, Straight Lines, and Curves. SVG Paths represent the outline of a shape that can be Stroked, Filled, Used as a Clipping Path, or any combination of all three. This chapter explains Paths API in detail.

## Configuring Paths
You can configure the Paths API using the script below.

```
<script src = "https://d3js.org/d3-path.v1.min.js"></script>
<script>

</script>
```
## Paths API Methods
Some of the most commonly used Paths API methods are briefly described as follows.

   * **d3.path()** − This method is used to create a new path.
   * **path.moveTo(x, y)** − This method is used to move the specified x and y values.
   * **path.closePath()** − This method is used to close the current path.
   * **path.lineTo(x, y)** − This method is used to create a line from current point to defined x,y values.
   * **path.quadraticCurveTo(cpx, cpy, x, y)** − This method is used to draw a quadratic curve from current point to the specified point.
   * **path.bezierCurveTo(cpx1, cpy1, cpx2, cpy2, x, y)** − This method is used to draw a bezier curve from current point to the specified point.
   * **path.arcTo(x1, y1, x2, y2, radius)** − This method is used to draw a circular arc from the current point to a specified point (x1, y1) and end the line between the specified points (x1, y1) and (x2, y2).
   * **path.arc(x, y, radius, startAngle, endAngle[, anticlockwise])** − This method is used to draw a circular arc to the specified center (x, y), radius, startAngle and endAngle. If anticlockwise value is true then the arc is drawn in the anticlockwise direction, otherwise it is drawn in the clockwise direction.
   * **path.rect(x, y, w, h)** − This method is used to create new sub path containing just the four points (x, y), (x + w, y), (x + w, y + h), (x, y + h). With these four points connected by straight lines marks the subpath as closed. Equivalent to context.rect and uses SVG’s “lineto” commands.
   * **path.toString()** − Returns the string representation of this path according to SVG’s path data specification.

### Example
Let us draw a simple line in D3 using path API. Create a webpage **linepath.html** and add the following changes in it.

```
<!DOCTYPE html>
<meta charset = "UTF-8">
   <head>
      <title>SVG path line Generator</title>
   </head>

   <style>
      path {
         fill: green;
         stroke: #aaa;
      }
   </style>
   
   <body>
      <svg width = "600" height = "100">
         <path transform = "translate(200, 0)" />
      </svg>
      
      <script src = "https://d3js.org/d3.v4.min.js"></script>
      <script>
         var data = [[0, 20], [50, 30], [100, 50], [200, 60], [300, 90]];
         var lineGenerator = d3.line();
         var pathString = lineGenerator(data);
         d3.select('path').attr('d', pathString);
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/linepath.htm"></iframe>

# D3.js - Scales API
D3.js provides scale functions to perform data transformations. These functions map an input domain to an output range.

## Configuring API
We can configure the API directly using the following script.

```
<script src = "https://d3js.org/d3-array.v1.min.js"></script>
<script src = "https://d3js.org/d3-collection.v1.min.js"></script>
<script src = "https://d3js.org/d3-color.v1.min.js"></script>
<script src = "https://d3js.org/d3-format.v1.min.js"></script>
<script src = "https://d3js.org/d3-interpolate.v1.min.js"></script>
<script src = "https://d3js.org/d3-time.v1.min.js"></script>
<script src = "https://d3js.org/d3-time-format.v2.min.js"></script>
<script src = "https://d3js.org/d3-scale.v1.min.js"></script>
<script>

</script>
```
## Scales API Methods
D3 provides the following important scaling methods for different types of charts. Let us understand then in detail.

   * **d3.scaleLinear()** − Constructs a continuous linear scale where we can input data (domain) maps to the specified output range.
   * **d3.scaleIdentity()** − Construct a linear scale where the input data is the same as the output.
   * **d3.scaleTime()** − Construct a linear scale where the input data is in the dates and the output in numbers.
   * **d3.scaleLog()** − Construct a logarithmic scale.
   * **d3.scaleSqrt()** − Construct a square root scale.
   * **d3.scalePow()** − Construct an exponential scale.
   * **d3.scaleSequential()** − Construct a sequential scale where output range is fixed by interpolator function.
   * **d3.scaleQuantize()** − Construct a quantize scale with discrete output range.
   * **d3.scaleQuantile()** − Construct a quantile scale where the input sample data maps to the discrete output range.
   * **d3.scaleThreshold()** − Construct a scale where the arbitrary input data maps to the discrete output range.
   * **d3.scaleBand()** − Band scales are like ordinal scales except the output range is continuous and numeric.
   * **d3.scalePoint()** − Construct a point scale.
   * **d3.scaleOrdinal()** − Construct an ordinal scale where the input data includes alphabets and are mapped to the discrete numeric output range.

Before doing a working example, let us first understand the following two terms −

   * **Domain** − The Domain denotes minimum and maximum values of your input data.
   * **Range** − The Range is the output range, which we would like the input values to map to...

### Working Example
Let us perform the d3.scaleLinear function in this example. To do this, you need to adhere to the following steps −

**Step 1** − **Define variables** − Define SVG variables and data using the coding below.

```
var data = [100, 200, 300, 400, 800, 0]
   var width = 500, 
      barHeight = 20, 
      margin = 1;
```
**Step 2** − **Create linear scale** − Use the following code to create a linear scale.

```
var scale = d3.scaleLinear()
   .domain([d3.min(data), d3.max(data)])
   .range([100, 400]);
```
Here, for the minimum and maximum value for our domain manually, we can use the built-in **d3.min()** and **d3.max()** functions, which will return minimum and maximum values respectively from our data array.

**Step 3** − **Append SVG attributes** − Append the SVG elements using the code given below.

```
var svg = d3.select("body")
   .append("svg")
   .attr("width", width)
   .attr("height", barHeight * data.length);
```
**Step 4** − **Apply transformation** − Apply the transformation using the code below.

```
var g = svg.selectAll("g")
   .data(data).enter().append("g")
   .attr("transform", function (d, i) {
      return "translate(0," + i * barHeight + ")";
});
```
**Step 5** − **Append rect elements** − Append the rect elements to scaling as shown below.

```
g.append("rect")
   .attr("width", function (d) {
      return scale(d);
   })
   .attr("height", barHeight - margin)
```
**Step 6** − **Display data** − Now display the data using the coding given below.

```
g.append("text")
   .attr("x", function (d) { return (scale(d)); })
   .attr("y", barHeight / 2)
   .attr("dy", ".35em")
   .text(function (d) { return d; });
```
**Step 7** − **Working Example** − Now, let us create a bar chart using the d3.scaleLinear() function as follows. 

Create a webpage “scales.html” and add the following changes to it.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <script>
         var data = [100, 200, 300, 350, 400, 250]
         var width = 500, barHeight = 20, margin = 1;
         
         var scale = d3.scaleLinear()
            .domain([d3.min(data), d3.max(data)])
            .range([100, 400]);
         
         var svg = d3.select("body")
            .append("svg")
            .attr("width", width)
            .attr("height", barHeight * data.length);
         
         var g = svg.selectAll("g")
            .data(data)
            .enter()
            .append("g")
            .attr("transform", function (d, i) {
               return "translate(0," + i * barHeight + ")";
         });
    
         g.append("rect")
         .attr("width", function (d) {
            return scale(d);
         })
         
         .attr("height", barHeight - margin)
         g.append("text")
         .attr("x", function (d) { return (scale(d)); })
         .attr("y", barHeight / 2).attr("dy", ".35em")
         .text(function (d) { return d; });
      </script>
   </body>
</html>
```
The above code will display the following result in the browser.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/scales.htm"></iframe>

# D3.js - Axis API
D3 provides functions to draw axes. An axis is made of Lines, Ticks and Labels. An axis uses a Scale, so each axis will need to be given a scale to work with.

## Configuring the Axis API
You can configure the API using the following script.

```
<script src = "https://d3js.org/d3-axis.v1.min.js"></script>
<script>

</script>
```
## Axis API Methods
D3 provides the following significant functions to draw axes. They are described in brief as follows.

   * **d3.axisTop()** − This method is used to create a top horizontal axis.
   * **d3.axisRight()** − This method is used to create a vertical right-oriented axis.
   * **d3.axisBottom()** − This method is used to create a bottom horizontal axis.
   * **d3.axisLeft()** − It creates left vertical axis.

### Working Example
Let us learn how to add the x and y-axis to a graph. To do this, we need to adhere to the steps given below.

**Step 1** − **Define variables** − Define SVG and data variables using the code below.

```
var width = 400, height = 400;
var data = [100, 150, 200, 250, 280, 300];
var svg = d3.select("body")
   .append("svg")
   .attr("width", width)
   .attr("height", height);
```
**Step 2** − **Create a scale linear function** − Create a scale linear function for both x and y axis as defined below.

```
var xscale = d3.scaleLinear()
   .domain([0, d3.max(data)])
   .range([0, width - 100]);

var yscale = d3.scaleLinear()
   .domain([0, d3.max(data)])
   .range([height/2, 0]);
```
Here, we have created a linear scale and specified the domain and the range.

**Step 3** − **Add scales to x-axis** − Now, we can add scales to the x-axis using the following code.

```
var x_axis = d3.axisBottom()
   .scale(xscale);
```
Here, we use d3.axisBottom to create our x-axis and provide it with the scale, which is defined earlier.

**Step 4** − **Add scales to the y-axis** − Use the following code to add scales to the y-axis.

```
var y_axis = d3.axisLeft()
   .scale(yscale);
```
Here, we use the d3.axisLeft to create our y-axis and provide it with the scale we defined above.

**Step 5** − **Apply transformation** − You can append a group element and insert the x, y axis, which is defined below.

```
svg.append("g")
   .attr("transform", "translate(50, 10)")
   .call(y_axis);
```
**Step 6** − **Append group elements** − Apply transition and group elements using the following code.

```
var xAxisTranslate = height/2 + 10;
svg.append("g")
   .attr("transform", "translate(50, " + xAxisTranslate  +")")
   .call(x_axis)
```
**Step 7** − **Working Example** − The complete code listing is given in the following code block. Create a webpage **axes.html** and add the following changes to it.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
      <style>
         svg text {
            fill: purple;
            font: 12px sans-serif;
            text-anchor: end;
         }
      </style>
   </head>

   <body>
      <script>
         var width = 400, height = 400;
         var data = [100, 120, 140, 160, 180, 200];
         var svg = d3.select("body")
            .append("svg")
            .attr("width", width)
            .attr("height", height);
         
         var xscale = d3.scaleLinear()
            .domain([0, d3.max(data)])
            .range([0, width - 100]);
         
         var yscale = d3.scaleLinear()
            .domain([0, d3.max(data)])
            .range([height/2, 0]);
    
         var x_axis = d3.axisBottom().scale(xscale);
         
         var y_axis = d3.axisLeft().scale(yscale);
         
         svg.append("g")
            .attr("transform", "translate(50, 10)")
            .call(y_axis);
         
         var xAxisTranslate = height/2 + 10;
         
         svg.append("g")
            .attr("transform", "translate(50, " + xAxisTranslate  +")")
            .call(x_axis)
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following changes.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/axes.htm"></iframe>

# D3.js - Shapes API
This chapter discusses the different shape generators in D3.js.

## Configuring API
You can configure the Shapes API using the following script.

```
<script src = "https://d3js.org/d3-path.v1.min.js"></script>
<script src = "https://d3js.org/d3-shape.v1.min.js"></script>
<script>

</script>
```
## Shapes Generators
D3.js supports different shapes. Let us go through the prominent shapes in detail.

### Arcs API
The arc generator produces a circle or annulus shape. We have used these API methods in the previous pie charts chapter. Let us understand the various Arcs API methods in detail.

   * **d3.arc()** − This method is used to create a new arc generator.
   * **arc(args)** − It is used to generate an arc with the specified given arguments. Default settings with an object radii and angles is defined below.

```
<script>
   var arc = d3.arc();
   arc({
      innerRadius: 0,
      outerRadius: 100,
      startAngle: 0,
      endAngle: Math.PI / 2
   });
</script>
```
   * **arc.centroid(args)** − This method is used to compute the midpoint [x, y] of the centerline of the arc with the specified arguments.
   * **arc.innerRadius([radius])** − This method is used to set the inner radius from the given radius and return an arc generator. It is defined below −

```
function innerRadius(d) {
   return d.innerRadius;
}
```
   * **arc.outerRadius([radius])** − This method is used to set the outer radius from the given radius and return an arc generator. It is defined as follows.

```
function outerRadius(d) {
   return d.outerRadius;
}
```
   * **arc.cornerRadius([radius])** − This method is used to set the corner radius from the given radius and return an arc generator. It is defined as follows.

```
function cornerRadius() {
   return 0;
}
```
If the corner radius is greater than zero, the corners of the arc are rounded using the circles of the given radius. The corner radius may not be larger than (outerRadius - innerRadius) / 2.

   * **arc.startAngle([angle])** − This method is used to set the start angle to the function from the given angle. It is defined as follows −

```
function startAngle(d) {
   return d.startAngle;
}
```
   * **arc.endAngle([angle])** − This method is used to set the end angle to the function from the given angle. It is defined as follows.

```
function endAngle(d) {
   return d.endAngle;
}
```
   * **arc.padAngle([angle])** − This method is used to set the pad angle to the function from the given angle. It is defined as follows.

```
function padAngle() {
   return d && d.padAngle;
}
```
   * **(x) arc.padRadius([radius])** − This method is used to set the pad radius to the specified function from the given radius. The pad radius determines the fixed linear distance separating adjacent arcs, defined as padRadius *padAngle.
   * **(xi) arc.context([context])** − This method is used to set the context and return an arc generator.

## Pies API
This API is used to create a Pie generator. We have performed these API methods in the previous chapter. We will discuss all those methods in detail.

   * **d3.pie()** − Constructs a new pie generator with the default settings.
   * **pie(data[, arguments])** − This method is used to generate a pie for the given array values. It returns an array of objects. Objects are datum's arc angles. Each object has the following properties −
   * **data** − the input datum; the corresponding element in the input data array.
   * **value** − the numeric value of the arc.
   * **index** − index of the arc.
   * **startAngle** − the start angle of the arc.
   * **endAngle** − the end angle of the arc.
   * **padAngle** − the pad angle of the arc.
   * **pie.value([value])** − This method is used to set the value to the specified function and generates a pie. It is defined as follows −

```
function value(d) {
   return d;
}
```
   * **pie.sort([compare])** − This method is used to sort the data to the specified function and generates pie. The comparator function is defined as follows.

```
pie.sort(function(a, b) 
   { return a.name.localeCompare(b.name); }
);
```
Here, the compare function takes two arguments ‘a’ and ‘b’, each element from the input data array. If the arc for ‘a’ should be before the arc for ‘b’, then the comparator must return a number less than zero. If the arc for ‘a’ should be after the arc for ‘b’, then the comparator must return a number greater than zero.

   * **pie.sortValues([compare])** − This method is used to compare the value from the given function and generates a pie. The function is defined as follows.

```
function compare(a, b) {
   return b - a;
}
```
   * **pie.startAngle([angle])** − This method is used to set the start angle of the pie to the specified function. If the angle is not specified, it returns the current start angle. It is defined as follows.

```
function startAngle() {
   return 0;
}
```
   * **pie.endAngle([angle])** − This method is used to set the end angle of the pie to the specified function. If angle is not specified, it returns the current end angle. It is defined as follows.

```
function endAngle() {
   return 2 * Math.PI;
}
```
   * **pie.padAngle([angle])** − This method is used to set the pad angle to the specified function and generates the pie. The function is defined as follows.

```
function padAngle() {
   return 0;
}
```
## Lines API
Lines API is used to generate a line. We have used these API methods in the **Graphs** chapter. Let us go through each methods in detail.

   * **d3.line()** − This method is used to create a new line generator.
   * **line(data)** − This method is used to generate a line for the given array of data.
   * **line.x([x])** − This method is used to set the x accessor to the specified function and generates a line. The function is defined below,

```
function x(d) {
   return d[0];
}
```
   * **line.y([y])** − This method is used to set the ‘y’’ accessor to the specified function and generates a line. The function is defined as follows.

```
function y(d) {
   return d[1];
}
```
   * **line.defined([defined])** − This method is used to set the defined accessor to the specified function. It is defined as follows.

```
function defined() {
  return true;
}
```
   * **line.curve([curve])** − It is used to set the curve and generates the line.
   * **line.context([context])** − This method is used to set the context and generates a line. If the context is not specified, it returns null.
   * **d3.lineRadial()** − This method is used to create new radial line; it is equivalent to the Cartesian line generator.
   * **lineRadial.radius([radius])** − This method is used to draw a radial line and the accessor returns the radius. It takes distance from the origin(0,0).

In the next chapter, we will learn about the Colors API in D3.js.

# D3.js - Colors API
Colors are displayed combining RED, GREEN and BLUE. Colors can be specified in the following different ways −

   * By color names
   * As RGB values
   * As hexadecimal values
   * As HSL values
   * As HWB values

The d3-color API provides representations for various colors. You can perform conversion and manipulation operations in API. Let us understand these operations in detail.

## Configuring API
You can directly load API using the following script.

```
<script src = "https://d3js.org/d3-color.v1.min.js"></script>
<script>

</script>
```
## Basic Operations
Let us go through the basic color operations in D3.

**Convert color value to HSL** − To convert color value to HSL, use the following **Example** −

```
var convert = d3.hsl("green");
```
You can rotate the hue by 45° as shown below.

```
convert.h + =  45;
```
Similarly, you can change the saturation level as well. To fade the color value, you can change the opacity value as shown below.

```
convert.opacity = 0.5;
```
## Color API Methods
Following are some of the most important Color API Methods.

   * d3.color(specifier)
   * color.opacity
   * color.rgb()
   * color.toString()
   * color.displayable()
   * d3.rgb(color)
   * d3.hsl(color)
   * d3.lab(color)
   * d3.hcl(color)
   * d3.cubehelix(color)

Let us understand each of these Color API Methods in detail.

### d3.color(specifier)
It is used to parse the specified CSS color and return RGB or HSL color. If specifier is not given, then null is returned.

**Example** − Let us consider the following example.

```
<script>
   var color = d3.color("green");  // asign color name directly
   console.log(color);
</script>
```
We will see the following response on our screen −

```
{r: 0, g: 128, b: 0, opacity: 1}
```
### color.opacity
If we want to fade the color, we can change the opacity value. It is in the range of [0, 1].

**Example** − Let us consider the following example.

```
<script>
   var color = d3.color("green");
   console.log(color.opacity);
</script>
```
We will see the following response on the screen −

```
1
```
### color.rgb()
It returns the RGB value for the color. Let us consider the following example.

```
<script>
   var color = d3.color("green");
   console.log(color.rgb());
</script>
```
We will see the following response on our screen.

```
{r: 0, g: 128, b: 0, opacity: 1}
```
### color.toString()
It returns a string representing the color according to the CSS Object Model specification. Let us consider the following example.

```
<script>
   var color = d3.color("green");
   console.log(color.toString());
</script>
```
We will see the following response on our screen.

```
rgb(0, 128, 0)
```
### color.displayable()
Returns true, if the color is displayable. Returns false, if RGB color value is less than 0 or greater than 255, or if the opacity is not in the range [0, 1]. Let us consider the following example.

```
<script>
   var color = d3.color("green");
   console.log(color.displayable());
</script>
```
We will see the following response on our screen.

```
true
```
### d3.rgb(color)
This method is used to construct a new RGB color. Let us consider the following example.

```
<script>
   console.log(d3.rgb("yellow"));
   console.log(d3.rgb(200,100,0));
</script>
```
We will see the following response on the screen.

```
{r: 255, g: 255, b: 0, opacity: 1}
{r: 200, g: 100, b: 0, opacity: 1}
```
### d3.hsl(color)
It is used to construct a new HSL color. Values are exposed as h, s and l properties on the returned instance. Let us consider the following example.

```
<script>
   var hsl = d3.hsl("blue");
   console.log(hsl.h + =  90);
   console.log(hsl.opacity = 0.5);
</script>
```
We will see the following response on the screen.

```
330
0.5
```
### d3.lab(color)
It constructs a new Lab color. The channel values are exposed as ‘l’, ‘a’ and ‘b’ properties on the returned instance.

```
<script>
   var lab = d3.lab("blue");
   console.log(lab);
</script>
```
We will see the following response on the screen.

```
{l: 32.29701093285073, a: 79.18751984512221, b: -107.8601617541481, opacity: 1}
```
### d3.hcl(color)
Constructs a new HCL color. The channel values are exposed as h, c and l properties on the returned instance. Let us consider the following example.

```
<script>
   var hcl = d3.hcl("blue");
   console.log(hcl);
</script>
```
We will see the following response on the screen.

```
{h: 306.2849380699878, c: 133.80761485376166, l: 32.29701093285073, opacity: 1}
```
### d3.cubehelix(color)
Constructs a new Cubehelix color. Values are exposed as h, s and l properties on the returned instance. Let us consider the following example.

```
<script>
   var hcl = d3.hcl("blue");
   console.log(hcl);
</script>
```
We will see the following response on the screen,

```
{h: 236.94217167732103, s: 4.614386868039719, l: 0.10999954957200976, opacity: 1}
```
### Working Example
Let us create a new webpage – **color.html** to perform all the color API methods. The complete code listing is defined below.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>D3 colors API</h3>
      <script>
         var color = d3.color("green");
         console.log(color);
         console.log(color.opacity);
         console.log(color.rgb());
         console.log(color.toString());
         console.log(color.displayable());
         console.log(d3.rgb("yellow"));
         console.log(d3.rgb(200,100,0));
         var hsl = d3.hsl("blue");
         console.log(hsl.h + =  90);
         console.log(hsl.opacity = 0.5);
         var lab = d3.lab("blue");
         console.log(lab);
         var hcl = d3.hcl("blue");
         console.log(hcl);
         var cube = d3.cubehelix("blue");
         console.log(cube);
      </script>
   </body>
</html>
```
Now, request the browser and we will see the following response.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/color.htm"></iframe>

![Colors API](../d3js/images/colors_api.jpg)

# D3.js - Transitions API
D3 Transitions take a selection of elements and for each element; it applies a transition to a part of the current definition of the element.

## Configuring API
You can configure the transition API using the following script.

```
<script src = "https://d3js.org/d3-color.v1.min.js"></script>
<script src = "https://d3js.org/d3-dispatch.v1.min.js"></script>
<script src = "https://d3js.org/d3-ease.v1.min.js"></script>
<script src = "https://d3js.org/d3-interpolate.v1.min.js"></script>
<script src = "https://d3js.org/d3-selection.v1.min.js"></script>
<script src = "https://d3js.org/d3-timer.v1.min.js"></script>
<script src = "https://d3js.org/d3-transition.v1.min.js"></script>
<script>

</script>
```
## Transition API Methods
Let us go through the Transition API methods in detail.

## Selecting Elements
Let us discuss the various selecting elements in detail.

   * **selection.transition([name])** − This method is used to return a new selection transition with the name. If a name is not specified, it returns null.
   * **selection.interrupt([name])** − This method is used to interrupt the selected elements of the transition with the name and is defined below.

```
selection.interrupt().selectAll("*").interrupt();
```
   * **d3.interrupt(node[, name])** − This method is used to interrupt the transition of the specified name on the specified node.
   * **d3.transition([name])** − This method is used to return a new transition with the specified name.
   * **transition.select(selector)** − This method is used to select the first element that matches the specified selector and returns a transition on the resulting selection, which is defined below.

```
transition
   .selection()
   .select(selector)
   .transition(transition)
```
   * **transition.selectAll(selector)** − This method is used to select all the elements that matches the specified selector and returns a transition on the resulting selection. It is defined below −

```
transition
   .selection()
   .selectAll(selector)
   .transition(transition)
```
   * **transition.filter(filter)** − This method is used to select the elements matching the specified filter, they are defined below.

```
transition
   .selection()
   .filter(filter)
   .transition(transition)
```
   * **transition.merge(other)** − This method is used to merge the transition with other transition. It is defined below.

```
transition
   .selection()
   .merge(other.selection())
   .transition(transition)
```
   * **transition.transition()** − This method is used to return a new transition on the selected elements. It is scheduled to start when the transition stops. The new transition inherits this transition’s name, duration and easing. 

**Example** − Let us consider the following example.

```
d3.selectAll(".body")
   .transition() 
   
   // fade to yellow.
   .style("fill", "yellow")
   .transition() 
   
   // Wait for five second. Then change blue, and remove.
   .delay(5000)
   .style("fill", "blue")
   .remove();
```
Here, the body fades to yellow and starts just five seconds before the last transition.

   * **d3.active(node[, name])** − This method is used to return the transition on the specified node with the name.

### Timing Methods
Let us go through the transition timing API methods in detail.

   * **transition.delay([value])** − This method is used to set the transition delay to the specified value. If a function is evaluated for each selected element, it is passed to the current datum ‘d’ and index ‘i', with the context as the current DOM element. If a value is not specified, returns the current value of the delay for the first (non-null) element in the transition. It is defined below,

```
transition.delay(function(d, i) { return i * 10; });
```
   * **transition.duration([value])** − This method is used to set the transition duration to the specified value. If a value is not specified, returns the current value of the duration for the first (non-null) element in the transition.
   * **transition.ease([value])** − This method is used to ease the transition value for selected elements. The easing function is invoked for each frame of the animation and passed the normalized time ‘t’ in the range [0, 1]. If a value is not specified, it returns the current easing function for the first (non-null) element in the transition.

In the next chapter, we will discuss the drag and drop concept in d3.js.

# D3.js - Dragging API
Drag and drop is one of the most familiar concept in d3.js. This chapter explains dragging and its methods in detail.

## Installation
We can directly include dragging API using the following script.

```
<script src = "https://d3js.org/d3-dispatch.v1.min.js"></script>
<script src = "https://d3js.org/d3-selection.v1.min.js"></script>
<script src = "https://d3js.org/d3-drag.v1.min.js"></script>
```
## Dragging API Methods
Following are some of the most important dragging API methods in D3.js.

   * d3.drag()
   * drag(selection)
   * drag.container([container])
   * drag.filter([filter])
   * drag.subject([subject])
   * drag.clickDistance([distance])
   * drag.on(typenames, [listener])
   * d3.dragDisable(window)
   * d3.dragEnable(window[, noclick])

Let us now understand each of these in detail.

### d3.drag()
This method is used to create a new dragging. You can call this method using the following script.

```
<script>
   var drag = d3.drag();
</script>
```
### drag(selection)
This method is used to apply the dragging to the specified selection. You can invoke this function using **selection.call**. A simple example is defined below.

```
d3.select(".node").call(d3.drag().on("drag", mousemo
```

[Previous Page](../d3js/d3js_working_example.md) [Next Page](../d3js/d3js_useful_resources.md) 
