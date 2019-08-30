# Sencha Touch - First Program
In this chapter, we will list down the steps to write the first Hello World program in Ext JS.

## Step 1
Create an index.htm page in an editor of our choice. Include the required library files in the head section of html page as follows.

### index.htm
```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js">
      </script>
      <script type = "text/javascript">
         Ext.application( {
            name: 'Sencha', launch: function() {
               Ext.create("Ext.tab.Panel", {
                  fullscreen: true, items: [{
                     title: 'Home', iconCls: 'home', html: 'Welcome to sencha touch'
                  }]
               });
            }
         });
      </script>
   </head>
   
   <body>
   </body>
</html>
```
### Explanation
   * Ext.application() method is the starting point of Sencha Touch application. It creates a global variable called 'Sencha' declared with the name property - all the Application's classes such as its Models, Views and Controllers will reside under this single namespace, which reduces the chances of colliding global variables and file names.
   * launch() method is called once the page is ready and all the JavaScript files are loaded.
   * Ext.create() method is used to create an object in Sencha Touch. Here, we are creating an object of simple panel class Ext.tab.Panel.
   * Ext.tab.Panel is the predefined class in Sencha Touch for creating a panel.
   * Every Sencha Touch class has different properties to perform some basic functionalities.

Ext.Panel class has various properties such as −

   * **fullscreen** property is to make use of a complete screen, hence the panel will take fullscreen space.
   * **items** property is the container for various items.
   * **iconCls** is the class used for displaying different icons.
   * **title** property is to provide the title to the panel.
   * **html** property is the html content to be shown in the panel.

### Step 2
Open the index.htm file in a standard browser and you will get the following output.

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="300px" height="200px" src="../sencha_touch/src/first_program.htm"></iframe>


[Previous Page](../sencha_touch/sencha_touch_mvc_explanation.md) [Next Page](../sencha_touch/sencha_touch_build_application.md) 
