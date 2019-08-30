# Sencha Touch - Architecture
The bottom layer for any mobile application is OS, on top of that anything or everything is built. Then we have the browsers on which we will be running the applications. It could be Chrome, Safari, IE anything. The upper layer is a W3 standards, which is common for all. Sencha Touch stands or is built on top of W3 standards, which is nothing but HTML5, which makes a single application compatible with different browsers of different devices.

Sencha Touch is a combination of three frameworks − ExtJs, JqTouch, and Raphael (vector drawing). It follows MVC architecture. MVC separates the code into more manageable chunks.

Although the architecture is not mandatory for the program, however, it is a best practice to follow this structure to make your code highly maintainable and organized.

## Project Structure With Sencha Touch App
```
----------src
----------resources
-------------------CSS files
-------------------Images
----------JavaScript
--------------------App Folder
-------------------------------Controller
------------------------------------Contoller.js
-------------------------------Model
------------------------------------Model.js
-------------------------------Store
------------------------------------Store.js
-------------------------------View
------------------------------------View.js
-------------------------------Utils
------------------------------------Utils.js
--------------------------------app.js
-----------HTML files
```
Sencha Touch app folder will reside in the JavaScript folder of your project.

The App will contain controller, view, model, store, and utility files with app.js.

**app.js** − The main file from where the flow of program will start. It should be included in main HTML file using &lt;script&gt; tag. App calls the controller of application for rest of the functionality.

**Controller.js** − It is the controller file of Sencha Touch MVC architecture. This contains all the control of the application, the events listeners, and most of the functionality of the code. It performs the following tasks: routing, intermediate between view and model, and executes events.

**View.js** − It contains the interface part of the application, which shows up to the user. Sencha Touch uses various UI rich views, which can be extended and customized according to the requirement.

**Store.js** − It contains the locally cached data, which is to be rendered on view with the help of model objects. Store fetches the data using proxies, which has the path defined for services to fetch the backend data.

**Model.js** − It contains the objects which binds the store data to view. It is the representation of the real-world object, which basically deals with the database.

**Utils.js** − It is not included in MVC architecture but it is a best practice to use this so as to make the code clean, less complex, and more readable. We can write methods in this file and call them in controller or view renderer wherever required. It is helpful for code reusability purpose as well.


[Previous Page](../sencha_touch/sencha_touch_naming_convention.md) [Next Page](../sencha_touch/sencha_touch_mvc_explanation.md) 
