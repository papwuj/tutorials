# D3.js - Introduction to SVG
SVG stands for **Scalable Vector Graphics**. SVG is an XML-based vector graphics format. It provides options to draw different shapes such as Lines, Rectangles, Circles, Ellipses, etc. Hence, designing visualizations with SVG gives you more power and flexibility.

## Features of SVG
Some of the salient features of SVG are as follows −

   * SVG is a vector based image format and it is text-based.
   * SVG is similar in structure to HTML.
   * SVG can be represented as a **Document object model**.
   * SVG properties can be specified as attributes.
   * SVG should have absolute positions relative to the origin (0, 0).
   * SVG can be included as is in the HTML document.

## A Minimal Example
Let us create a minimal SVG image and include it in the HTML document.

**Step 1** − Create a SVG image and set width as 300 pixel and height as 300 pixel.

```
<svg width = "300" height = "300">

</svg>
```
Here, the **svg** tag starts an SVG image and it has width and height as attributes. The default unit of the SVG format is **pixel**.

**Step 2** − Create a line starting at (100, 100) and ending at (200, 100) and set red color for the line.

```
<line x1 = "100" y1 = "100" x2 = "200" y2 = "200" 
   style = "stroke:rgb(255,0,0);stroke-width:2"/>
```
Here, the **line** tag draws a line and its attributes **x1, y1** refers to the starting point and **x2, y2** refers to the ending point. The style attribute sets color and thickness of the line using the **stroke** and the **stroke-width** styles.

   * **x1** − This is the x-coordinate of the first point.
   * **y1** − This is the y-coordinate of the first point.
   * **x2** − This is the x-coordinate of the second point.
   * **y2** − This is the y-coordinate of the second point.
   * **stroke** − Color of the line.
   * **stroke-width** − Thickness of the line.

**Step 3** − Create a HTML document, “svg_line.html” and integrate the above SVG as shown below −

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
      <div id = "svgcontainer">
         <svg width = "300" height = "300">
            <line x1 = "100" y1 = "100" 
               x2 = "200" y2 = "200" style = "stroke:rgb(255,0,0);
               stroke-width:2"/>
         </svg>
      </div>
      <p></p>
      <p></p>
   </body>
</html>
```
The above program will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/svg_line.htm"></iframe>

## SVG Using D3.js
To create SVG using D3.js, let us follow the steps given below.

**Step 1** − Create a container to hold the SVG image as given below.

```
<div id = "svgcontainer"></div>
```
**Step 2** − Select the SVG container using the select() method and inject the SVG element using the append() method. Add the attributes and styles using the attr() and the style() methods.

```
var width = 300;
var height = 300;
var svg = d3.select("#svgcontainer")
   .append("svg").attr("width", width).attr("height", height);
```
**Step 3** − Similarly, add the **line** element inside the **svg** element as shown below.

```
svg.append("line")
   .attr("x1", 100)
   .attr("y1", 100)
   .attr("x2", 200) 
   .attr("y2", 200)
   .style("stroke", "rgb(255,0,0)")
   .style("stroke-width", 2);
```
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
      <div id = "svgcontainer">
      </div>
      <script language = "javascript">
         var width = 300;
         var height = 300;
         var svg = d3.select("#svgcontainer")
            .append("svg")
            .attr("width", width)
            .attr("height", height);
         svg.append("line")
            .attr("x1", 100)
            .attr("y1", 100)
            .attr("x2", 200)
            .attr("y2", 200)
            .style("stroke", "rgb(255,0,0)")
            .style("stroke-width", 2);
      </script>
   </body>
</html>
```
The above code yields the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/svg_line.htm"></iframe>

## Rectangle Element
A rectangle is represented by the **<rect>** tag as shown below.

```
<rect x = "20" y = "20" width = "300" height = "300"></rect>
```
The attributes of a rectangle are as follows −

   * **x** − This is the x-coordinate of the top-left corner of the rectangle.
   * **y** − This is the y-coordinate of the top-left corner of the rectangle.
   * **width** − This denotes the width of the rectangle.
   * **height** − This denotes the height of the rectangle.

A simple rectangle in SVG is defined as explained below.

```
<svg width = "300" height = "300">
   <rect x = "20" y = "20" width = "300" height = "300" fill = "green"></rect>
</svg>
```
The same rectangle can be created dynamically as described below.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div id = "svgcontainer"></div>
      <script>
         var width = 300;
         var height = 300;
         //Create SVG element
         var svg = d3.select("#svgcontainer")
            .append("svg")
            .attr("width", width)
            .attr("height", height);
         //Create and append rectangle element
         svg.append("rect")
            .attr("x", 20)
            .attr("y", 20)
            .attr("width", 200)
            .attr("height", 100)
            .attr("fill", "green");
      </script>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/rectangle_element.htm"></iframe>

## Circle Element
A circle is represented by the **<circle>** tag as explained below.

```
<circle cx = "200" cy = "50" r = "20"/>
```
The attributes of circle are as follows −

   * **cx** − This is the x-coordinate of the center of the circle.
   * **cy** − This is the y-coordinate of the center of the circle.
   * **r** − This denotes the radius of the circle.

A simple circle in SVG is described below.

```
<svg width = "300" height = "300">
   <circle cx = "200" cy = "50" r = "20" fill = "green"/>
</svg>
```
The same circle can be created dynamically as described below.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div id = "svgcontainer"></div>
      <script>
         var width = 300;
         var height = 300;
         //Create SVG element
         var svg = d3.select("#svgcontainer")
            .append("svg")
            .attr("width", width)
            .attr("height", height);
         //Append circle 
         svg.append("circle")
            .attr("cx", 200)
            .attr("cy", 50)
            .attr("r", 20)
            .attr("fill", "green");
      </script>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/circle_element.htm"></iframe>

## Ellipse Element
The SVG Ellipse element is represented by the **<ellipse>** tag as explained below.

```
<ellipse cx = "200" cy = "50" rx = "100" ry = "50"/>
```
The attributes of an ellipse are as follows −

   * **cx** − This is the x-coordinate of the center of the ellipse.
   * **cy** − This is the y-coordinate of the center of the ellipse.
   * **rx** − This is the x radius of the circle.
   * **ry** − This is the y radius of the circle.

A simple ellipse in the SVG is described below.

```
<svg width = "300" height = "300">
   <ellipse cx = "200" cy = "50" rx = "100" ry = "50" fill = "green" />
</svg>
```
The same ellipse can be created dynamically as below,

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <div id = "svgcontainer"></div>
      <script>
         var width = 300;
         var height = 300;
         var svg = d3.select("#svgcontainer")
            .append("svg")
            .attr("width", width)
            .attr("height", height);
         svg.append("ellipse")
            .attr("cx", 200)
            .attr("cy", 50)
            .attr("rx", 100)
            .attr("ry", 50)
            .attr("fill", "green")
      </script>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/ellipse_element.htm"></iframe>


[Previous Page](../d3js/d3js_data_join.md) [Next Page](../d3js/d3js_svg_transformation.md) 
