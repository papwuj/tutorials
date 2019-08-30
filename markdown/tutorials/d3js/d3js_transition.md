# D3.js - Transition
Transition is the process of changing from one state to another of an item. D3.js provides a **transition()** method to perform transition in the HTML page. Let us learn about transition in this chapter.

## The transition() method
The transition() method is available for all selectors and it starts the transition process. This method supports most of the selection methods such as – attr(), style(), etc. But, It does not support the append() and the data() methods, which need to be called before the transition() method. Also, it provides methods specific to transition like duration(), ease(), etc. A simple transition can be defined as follows −

```
d3.select("body")
   .transition()
   .style("background-color", "lightblue");
```
A transition can be directly created using the d3.transition() method and then used along with selectors as follows.

```
var t = d3.transition()
   .duration(2000);
d3.select("body")
   .transition(t)
   .style("background-color", "lightblue");
```
## A Minimal Example
Let us now create a basic example to understand how transition works.

Create a new HTML file, **transition_simple.html** with the following code.

```
<!DOCTYPE html>
<html>
   <head>
      <script type = "text/javascript" src = "https://d3js.org/d3.v4.min.js"></script>
   </head>

   <body>
      <h3>Simple transitions</h3>
      <script>
         d3.select("body").transition().style("background-color", "lightblue");
      </script>
   </body>
</html>
```
Here, we have selected the **body** element and then started transition by calling the transition() method. Then, we have instructed to transit the background color from the current color, **white** to **light blue**.

Now, refresh the browser and on the screen, the background color changes from white to light blue. If we want to change the background color from light blue to gray, we can use the following transition −

```
d3.select("body").transition().style("background-color", "gray");
```

[Previous Page](../d3js/d3js_svg_transformation.md) [Next Page](../d3js/d3js_animation.md) 
