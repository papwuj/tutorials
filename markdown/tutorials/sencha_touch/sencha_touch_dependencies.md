# Sencha Touch - Dependencies
There are certain ways defined in Sencha Touch to declare dependencies, one within the application and the other inside the classes.

Let’s take a look at the different ways to define dependencies.

## Application Level Dependencies
Here, we declare all the dependencies when we create Ext.application.

```
Ext.application({
   name: 'MyApp',
   views: ['StudentsView'],
   models: ['StudentsModel'],
   controllers: ['StudentsController'],
   stores: ['StudentsStore'],
   profiles: ['Phone', 'Tablet']
});
```
Now, when the application gets loaded, all the dependencies will be loaded at the same time. The path of the other files will be −

   * MyApp.views.StudentsView
   * MyApp.models.StudentsModel
   * MyApp.stores.StudentsStore etc.

The above way of declaration not only loads the file, it also decides which profile it should keep as active. After loading the controller, it makes sure to instantiate it. Once the stores are loaded, it instantiates them and provides one id if not already given.

## Profile-specific Dependencies
When we are using profiles in an application, there may be possibilities that few functionalities are only required for some specific profile.

Profile specific dependencies are declared in the profiles itself instead of the application level declaration.

```
Ext.define('MyApp.profile.Tablet', {
   extend: 'Ext.app.Profile', config: {
      views: ['StudentView'], controllers: ['StudentController'], models: ['StudentModel']
   }
});
```
Dependencies get loaded irrespective of the profile being active or not. However, based on the active profile, further processing such as instantiating controller and stores happens.

## Nested Dependencies
When we have larger application we have multiple controllers, models, views, and stores.

It is always good to keep modularity in larger applications. For that, we can define subfolders and while declaring dependencies we can use subfolder name to declare.

```
Ext.application({
   name: 'MyApp',
   controllers: ['Controller', 'nested.NewController'],
   views: ['class.Cview', 'SView']
});
```
In the above case, following files will be loaded −

   * MyApp.controllers.Controller
   * MyApp.controllers.nested.NewController
   * MyApp.Views.Sview
   * MyApp.Views.class.Cview

## External Dependencies
We can specify the dependencies outside the application by giving fully qualified names of the classes as −

```
Ext.Loader.setPath({
   'Class': 'Class'
});

Ext.application({
   views: ['Class.view.LoginForm', 'Welcome'],
   controllers: ['Class.controller.Sessions', 'Main'],
   models: ['Class.model.User']
});
```
In the above case, following files will be loaded −

   * Class/view/LoginForm.js
   * Class/controller/Sessions.js
   * Class/model/User.js
   * app/view/Welcome.js
   * app/controller/Main.js


[Previous Page](../sencha_touch/sencha_touch_device_profile.md) [Next Page](../sencha_touch/sencha_touch_environment_detection.md) 
