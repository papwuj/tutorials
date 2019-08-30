# Sencha Touch - Migration
Sencha Touch comes with various rectifications from the earlier version.

Sencha Touch 2 comes with the backward compatibility build, which makes the migration process easier from version 1.x to 2.x.

This build just makes the work easier by providing a warning and the logs whenever any migration issue occurs or code change is required, so the user will get to know where the changes are must, to make sure the application works with the latest version.

Sencha Touch 2.x migration requires the following code changes.

## Class System
**Code in Sencha Touch 1.x** −

```
MyApp.view.StudentPanel = Ext.extend(Ext.Panel, {
   scroll: 'vertical',
   html: 'Student Panel'
   initComponent: function() {
      Ext.getCmp('StudentIdDiv').update('This is a Student panel');
   }
});
```
**Code in Sencha Touch 2.x** −

```
Ext.define('MyApp.view.StudentPanel', {
   extend: 'Ext.Panel',

   config: {
      scroll: 'vertical',
      html: 'Student Panel'
   },

   initialize: function() {
      Ext.getCmp('StudentIdDiv').setHtml('This is a Student panel')
   }
});
```
By looking at both the versions, you can see the way to create class is changes which is now inspired by ExtJs such as −

   * Ext.extend is changed to Ext.define.
   * All the configuration parameters related to the class are now defined under config parameter.
   * The initComponent is changed to initialize() method.
   * In Sencha Touch 2.x, we can have setHtml() and getHtml() functions to update html or to get the value.

## MVC Architecture
Sencha Touch 1.x code was modular and based on MVC architecture. Sencha Touch 2.x follows a different syntax for writing model, view, and controller. Let’s see the difference of model, view, and controller files in different versions.

### Model
**Code in Sencha Touch 1.x** −

```
Ext.regModel('MyApp.model.StudentModel', {
   fields: [
      {name: 'name',  type: 'string'},
      {name: 'age',   type: 'int'}
   ]
});
```
**Code in Sencha Touch 2.x** −

```
Ext.define('MyApp.model.StudentModel', {
   extend: 'Ext.data.Model', config: {
      fields: [
         {name: 'name',  type: 'string'},
         {name: 'age',   type: 'int'}
      ]
   }
});
```
Ext.regModel is changed to Ext.define which extends Ext.data.Model.

All the fields come under config section now in 2.x version.

### View
**Code in Sencha Touch 1.x** −

```
Ext.Panel("studentView", {
   items: [{}]
});
```
**Code in Sencha Touch 2.x** −

```
Ext.define('MyApp.view.StudentView', {
   extend: 'Ext.tab.Panel',
   items: [{}]
});
```
View is almost the same, the only change being the view name follows the 2.x version namespacing such as Myapp.view.StudentView and code is writing in Ext.define method as like model.

### Controller
**Code in Sencha Touch 1.x** −

```
Ext.regController("studentController", {
   someMethod: function() {
      alert('Method is called');
   }
});
```
**Code in Sencha Touch 2.x** −

```
Ext.define('MyApp.controller.studentController', {
   extend: 'Ext.app.Controller', someMethod: function() {
      alert('Method is called');
   }
});
```
Same as model in controller. Also the Ext.regController is changed into Ext.define, which extends Ext.app.Controller.

### Application
**Code in Sencha Touch 1.x** −

```
Ext.application({
   name: 'MyApp',
   launch: function() {
      Ext.create('MyApp.view.StudentView');
   }
});
```
**Code in Sencha Touch 2.x** −

```
Ext.application({
   name: 'MyApp',
   models: ['studentModel'],
   controllers: ['studentController'],
   views: ['studentView'],
   stores: ['studentStore'],

   launch: function() {
      Ext.create('MyApp.view.Main');
   }
});
```
The major difference between version 1.x and version 2.x is, in 2.x we declare all model, views, controllers, and stores in the application itself.


[Previous Page](../sencha_touch/sencha_touch_build_application.md) [Next Page](../sencha_touch/sencha_touch_core_concepts.md) 
