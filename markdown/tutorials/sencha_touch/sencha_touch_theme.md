# Sencha Touch - Theme
Sencha Touch provides a number of themes to be used in your applications. You can add different themes in place of classic theme and see the difference in the output based on the device we are using for the application. This is done simply by replacing the theme CSS file as explained in the following example.

## Desktop Theme
Consider your very first Hello World application. The following CSS from the application is used for desktop theme.

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css
```
To see the effect, try the following program −

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css" rel = "stylesheet" />
      <script type="text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js"></script>
      <script type = "text/javascript">
         Ext.application({
            name: 'Sencha',
            launch: function() {
               Ext.create("Ext.tab.Panel", {
                  fullscreen: true,
                  items: [{
                     title: 'Home',
                     iconCls: 'home',
                     html: 'Welcome to sencha touch'
                  }]
               });
            }
         });
      </script>
   </head>
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="300px" height="200px" src="../sencha_touch/src/desktop_theme.htm"></iframe>

## Windows Theme
Consider your very first Hello World application. Remove the following CSS from the application −

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css
```
Add the following CSS to use Windows theme.

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/wp.css
```
To see the effect, try the following program −

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/wp.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js"></script>
      <script type = "text/javascript">
         Ext.application({
            name: 'Sencha',
            launch: function() {
               Ext.create("Ext.tab.Panel", {
                  fullscreen: true,
                  items: [{
                     title: 'Home',
                     iconCls: 'home',
                     html: 'Welcome to sencha touch'
                  }]
               });
            }
         });
      </script>
   </head>
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="300px" height="200px" src="../sencha_touch/src/windows_theme.htm"></iframe>

## IOS Theme
Consider your very first Hello World application. Remove the following CSS from the application.

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css
```
Add the following CSS to use Windows theme

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/cupertino.css
```
To see the effect, try the following program −

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/cupertino.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js"></script>
      <script type = "text/javascript">
         Ext.application({
            name: 'Sencha',
            launch: function() {
               Ext.create("Ext.tab.Panel", {
                  fullscreen: true,
                  items: [{
                     title: 'Home',
                     iconCls: 'home',
                     html: 'Welcome to sencha touch'
                  }]
               });
            }
         });
      </script>
   </head>
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="300px" height="200px" src="../sencha_touch/src/ios_theme.htm"></iframe>

## IOS Classic Theme
Consider your very first Hello World application. Remove the following CSS from the application −

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css
```
Add the following CSS to use Windows theme −

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/cupertino-classic.css
```
To see the effect, try the following program −

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/cupertino-classic.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js"></script>
      <script type = "text/javascript">
         Ext.application({
            name: 'Sencha',
            launch: function() {
               Ext.create("Ext.tab.Panel", {
                  fullscreen: true,
                  items: [{
                     title: 'Home',
                     iconCls: 'home',
                     html: 'Welcome to sencha touch'
                  }]
               });
            }
         });
      </script>
   </head>
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="300px" height="200px" src="../sencha_touch/src/ios_classic_theme.htm"></iframe>

## Android Theme
Consider your very first Hello World application. Remove the following CSS from the application.

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css
```
Add the following CSS to use Windows theme.

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/mountainview.css
```
To see the effect, try the following program −

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/mountainview.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js"></script>
      <script type = "text/javascript">
         Ext.application({
            name: 'Sencha',
            launch: function() {
               Ext.create("Ext.tab.Panel", {
                  fullscreen: true,
                  items: [{
                     title: 'Home',
                     iconCls: 'home',
                     html: 'Welcome to sencha touch'
                  }]
               });
            }
         });
      </script>
   </head>
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="300px" height="200px" src="../sencha_touch/src/android_theme.htm"></iframe>

## BlackBerry Theme
Consider your very first Hello World application. Remove the following CSS from the application.

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/sencha-touch.css
```
Add the following CSS to use Windows theme.

```
https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/bb10.css
```
To see the effect, try the following program −

```
<!DOCTYPE html>
<html>
   <head>
      <link href = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/resources/css/bb10.css" rel = "stylesheet" />
      <script type = "text/javascript" src = "https://cdn.sencha.com/touch/sencha-touch-2.4.2/sencha-touch-all.js"></script>
      <script type = "text/javascript">
         Ext.application({
            name: 'Sencha',
            launch: function() {
               Ext.create("Ext.tab.Panel", {
                  fullscreen: true,
                  items: [{
                     title: 'Home',
                     iconCls: 'home',
                     html: 'Welcome to sencha touch'
                  }]
               });
            }
         });
      </script>
   </head>
</html>
```
This will produce following result −

<iframe style="margin:5px;" frameborder="0" scrolling="0" width="300px" height="200px" src="../sencha_touch/src/bb_theme.htm"></iframe>


[Previous Page](../sencha_touch/sencha_touch_data.md) [Next Page](../sencha_touch/sencha_touch_device_profile.md) 
