# Sencha Touch - Builds
Today's demand for a web application is to develop a fast application with less development efforts. Sencha Touch helps in doing so with ease as it provide a number of build libraries to choose from, based on the development or production code along with the facility to create a custom build.

Sencha Touch build libraries loads the classes dynamically. Dynamic loading stands for the classes that gets loaded when required and only those classes will be included which are required in the application. This makes the application run faster as the number of files to be loaded reduces, simultaneously decreasing the time to load.

Sencha Touch 2.x provides the following five build libraries.

With the above mentioned builds, Sencha Touch provides a facility to create custom builds.

## Advantages of Having a Custom Build
Custom build does not load all the touch files. It loads only those files, which we are using in the application, which makes the application faster and easily maintainable.

Sencha CMD is used to create a custom build. To create a custom build in Sencha CMD, go to the directory where the app file resides and type one of the following commands to create a build.

Once the build is successful, it will generate all-classes.js file which we need to include in our index.html to make it production ready.

Following code shows the changes to be done for production ready code.

**Index.html before building application**

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-debug.js"></script>
      <script type = "text/javascript" src = "app.js"> </script>
   </head>
   <body>
   </body>
</html>
```
**Index.html after building the application**

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch.js"></script>
      <script type = "text/javascript" src = "app.js"> </script>
      <script type = "text/javascript" src = "app-classes.js"> </script>
   </head>
   <body>
   </body>
</html>
```

[Previous Page](../sencha_touch/sencha_touch_first_app.md) [Next Page](../sencha_touch/sencha_touch_migration_steps.md) 
