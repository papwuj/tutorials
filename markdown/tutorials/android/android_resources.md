# Android Resources Organizing & Accessing
There are many more items which you use to build a good Android application. Apart from coding for the application, you take care of various other **resources** like static content that your code uses, such as bitmaps, colors, layout definitions, user interface strings, animation instructions, and more. These resources are always maintained separately in various sub-directories under **res/** directory of the project.

This tutorial will explain you how you can organize your application resources, specify alternative resources and access them in your applications.

## Organize resource in Android Studio
```
MyProject/
   app/
      manifest/
         AndroidManifest.xml
   java/
      MyActivity.java  
      res/
         drawable/  
            icon.png  
         layout/  
            activity_main.xml
            info.xml
         values/  
            strings.xml
```


## Alternative Resources
Your application should provide alternative resources to support specific device configurations. For example, you should include alternative drawable resources ( i.e.images ) for different screen resolution and alternative string resources for different languages. At runtime, Android detects the current device configuration and loads the appropriate resources for your application.

To specify configuration-specific alternatives for a set of resources, follow the following steps −

   * Create a new directory in res/ named in the form **<resources_name>-<config_qualifier>**. Here **resources_name** will be any of the resources mentioned in the above table, like layout, drawable etc. The **qualifier** will specify an individual configuration for which these resources are to be used. You can check official documentation for a complete list of qualifiers for different type of resources.
   * Save the respective alternative resources in this new directory. The resource files must be named exactly the same as the default resource files as shown in the below example, but these files will have content specific to the alternative. For example though image file name will be same but for high resolution screen, its resolution will be high.

Below is an example which specifies images for a default screen and alternative images for high resolution screen.

```
MyProject/
   app/
      manifest/
         AndroidManifest.xml
   java/
      MyActivity.java   
      res/
         drawable/  
            icon.png
            background.png
         drawable-hdpi/  
            icon.png
            background.png  
         layout/  
            activity_main.xml
            info.xml
         values/  
            strings.xml
```
Below is another example which specifies layout for a default language and alternative layout for Arabic language.

```
MyProject/
   app/
      manifest/
         AndroidManifest.xml
   java/
      MyActivity.java   
      res/
         drawable/  
            icon.png
            background.png
         drawable-hdpi/  
            icon.png
            background.png  
         layout/  
            activity_main.xml
            info.xml
         layout-ar/
            main.xml
         values/  
            strings.xml
```
## Acces

[Previous Page](../android/android_hello_world_example.md) [Next Page](../android/android_acitivities.md) 
