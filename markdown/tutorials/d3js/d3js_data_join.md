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


[Previous Page](../d3js/d3js_selections.md) [Next Page](../d3js/d3js_introduction_to_svg.md) 
