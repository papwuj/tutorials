# D3.js - SVG Transformation
SVG provides options to transform a single SVG shape element or group of SVG elements. SVG transform supports **Translate, Scale, Rotate** and **Skew**. Let us learn transformation in this chapter.

## Introduction to SVG Transformation
SVG introduces a new attribute, **transform** to support transformation. The possible values are one or more of the following,

   * **Translate** − It takes two options, **tx** refers translation along the x-axis and **ty** refers to the translation along the y-axis. For **Example**− translate(30 30).
   * **Rotate** − It takes three options, **angle** refers rotation angle, **cx** and **cy** refers to the center of the rotation in the x and y axis. If **cx** and **cy** are not specified, then it defaults to the current origin of the coordinate system. For **Example** − rotate(60).
   * **Scale** − It takes two options, **sx** refers to the scaling factor along the x-axis and **sy** refers to the scaling factor along the y-axis. Here, **sy** is optional and it takes the value of **sx**, if it is not specified. For **Example** − scale(10).
   * **Skew (SkewX and SkewY)** − It takes a single option; the **skew-angle** refers to the angle along the x-axis for SkewX and the angle along the y-axis for SkewY. For **Example** − skewx(20).

An example of the SVG rectangle with translate, which is described as follows −

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <svg width = "300" height = "300">
         <rect x = "20" 
            y = "20"
            width = "60"
            height = "60"
            fill = "green"
            transform = "translate(30 30)">
         </rect>
      </svg>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/svg_rectangle.htm"></iframe>

More than one transformation can be specified for a single SVG element using space as separation. If more than one value is specified, the transformation will be applied one by one sequentially in the order specified.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <svg width = "300" height = "300">
         <rect x = "20" 
            y = "20" 
            width = "60" 
            height = "60" 
            fill = "green" 
            transform = "translate(60 60) rotate(45)">
         </rect>
      </svg>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/svg_element.htm"></iframe>

Transformation can be applied to the SVG group element as well. This enables to transform complex graphics defined in the SVG as described below.

```
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <svg width = "300" height = "300">
         <g transform = "translate(60,60) rotate(30)">
            <rect x = "20" 
               y = "20" 
               width = "60" 
               height = "30" 
               fill = "green">
            </rect>
            <circle cx = "0" 
               cy = "0" 
               r = "30" 
               fill = "red"/>
         </g>
      </svg>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/svg_group_element.htm"></iframe>

## A Minimal Example
To create an SVG image, try to scale, and rotate it using transformation, let us follow the steps given below.

**Step 1** − Create an SVG image and set width as 300 pixels and height as 300 pixels.

```
<svg width = "300" height = "300">

</svg>
```
**Step 2** − Create an SVG group.

```
<svg width = "300" height = "300">
   <g>
   </g>
</svg>
```
**Step 3** − Create a rectangle of length 60 and height 30 and fill it with green color.

```
<svg width = "300" height = "300">
   <g>
      <rect x = "20" 
         y = "20" 
         width = "60" 
         height = "30" 
         fill = "green">
      </rect>
   </g>
</svg>
```
**Step 4** − Create a circle of radius 30 and fill it with red color.

```
<svg width = "300" height = "300">
   <g>
      <rect x = "20" 
         y = "20" 
         width = "60" 
         height = "30" 
         fill = "green">
      </rect>
      <circle cx = "0" 
         cy = "0" 
         r = "30" 
         fill = "red"/>
   </g>
</svg>
```
**Step 5** − Add a transform attribute and add translate and rotate as shown below.

```
<svg width = "300" height = "300">
   <g transform = "translate(60,60) rotate(30)">
      <rect x = "20" 
         y = "20" 
         width = "60" 
         height = "60" 
         fill = "green">
      </rect>
      <circle cx = "0" 
         cy = "0" 
         r = "30" 
         fill = "red"/>
   </g>
</svg>
```
**Step 6** − Create an HTML document, “svg_transform_rotate_group.html” and integrate the above SVG as explained below.

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
            <g transform = "translate(60,60) rotate(30)">
               <rect x = "20" 
                  y = "20" 
                  width = "60" 
                  height = "60" 
                  fill = "green">
               </rect>
               <circle cx = "0" 
                  cy = "0" 
                  r = "30" 
                  fill = "red"/>
            </g>
         </svg>
      </div>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/svg_transform_rotate_group.htm"></iframe>

### Transformation Using D3.js
To create SVG using D3.js, let us follow the steps given below.

**Step 1** − Create a container to hold the SVG image as explained below.

```
<div id = "svgcontainer"></div>
```
**Step 2** − Create a SVG image as explained below.

```
var width = 300;
var height = 300;
var svg = d3.select("#svgcontainer")
   .append("svg")
   .attr("width", width)
   .attr("height", height);
```
**Step 3** − Create a SVG group element and set translate and rotate attributes.

```
var group = svg.append("g").attr("transform", "translate(60, 60) rotate(30)");
```
**Step 4** − Create an SVG rectangle and append it inside the group.

```
var rect = group
   .append("rect")
   .attr("x", 20)
   .attr("y", 20)
   .attr("width", 60)
   .attr("height", 30)
   .attr("fill", "green")
```
**Step 5** − Create an SVG circle and append it inside the group.

```
var circle = group
   .append("circle")
   .attr("cx", 0)
   .attr("cy", 0)
   .attr("r", 30)
   .attr("fill", "red")
```
The complete code is as follows −

```
<!DOCTYPE html>
<html lang = "en">
   <head>
      <title>SVG rectangle</title>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
      <style>
         body { font-family: Arial; }
      </style>
   </head>

   <body>
      <div id = "svgcontainer"></div>
         <script language = "javascript">
            var width = 300;
            var height = 300;
            var svg = d3.select("#svgcontainer")
               .append("svg")
               .attr("width", width)
               .attr("height", height);

            var group = svg.append("g")
               .attr("transform", "translate(60, 60) rotate(30)");
            
            var rect = group.append("rect")
               .attr("x", 20)
               .attr("y", 20)
               .attr("width", 60)
               .attr("height", 30)
               .attr("fill", "green")
            
            var circle = group
               .append("circle")
               .attr("cx", 0)
               .attr("cy", 0)
               .attr("r", 30)
               .attr("fill", "red")
         </script>
      </div>
   </body>
</html>
```
The above code will yield the following result.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="660px" height="150px" src="../d3js/src/transformation.htm"></iframe>

## Transform Library
D3.js provides a separate library to manage transform without manually creating the transform attributes. It provides methods to handle all type of transformation. Some of the methods are **transform(), translate(), scale(), rotate()**, etc. You can include **d3-transform** in your webpage using the following script.

```
<script src = "http://d3js.org/d3.v4.min.js"></script>
<script src = "d3-transform.js"></script>
```
In the above example, the transform code can be written as shown below −

```
var my_transform = d3Transform()
   .translate([60, 60])
   .rotate(30);

var group = svg
   .append("g")
   .attr("transform", my_transform);
```

[Previous Page](../d3js/d3js_introduction_to_svg.md) [Next Page](../d3js/d3js_transition.md) 
