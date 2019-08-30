# Sencha Touch - Device Profile
In today's world of technologies, we have multiple devices such as mobile, tablet, desktop, and laptop with different screen sizes. Hence, there is a need to develop applications, which are accessible from all the devices with good look and feel. However, to develop different code for different devices is very time consuming and costly.

Sencha Touch helps us in this regard, by offering a device profile feature. Based on the active profile, the different dependencies will be run and applicable.

We can declare device profile while writing an application code. We can have multiple devices as −

```
Ext.application({
   name: 'MyApp',
   profiles: ['Phone', 'Tablet']
});
```
Once it is done, the profiles will be loaded as −

   * MyApp.profiles.Phone.js
   * MyApp.profiles.Tablet.js

## Writing a simple phone profile
```
Ext.define('Mail.profile.Phone', {
   extend: 'Ext.app.Profile',

   config: {
      name: 'Phone',
      views: ['phoneView']
   },

   isActive: function() {
      return Ext.os.is('Phone');
   }
});
```
## Writing a simple tablet profile
```
Ext.define('Mail.profile.Tablet', {
   extend: 'Ext.app.Profile',

   config: {
      name: 'Tablet',
      views: ['tableView']
   },

   isActive: function() {
      return Ext.os.is('Tablet');
   }
});
```
As we can see in profile, we have isActive function which determines if the particular device is active. If the device is active, the corresponding dependencies will be loaded and instantiated.

As mentioned in the above example, if we are using phone device then phone profile's isActive function will return true and the dependencies related to the phone device will be loaded; here phoneView will be loaded. If the device is a tablet then phone profile's isActive function will return false and tablet profile's isActive function will return true and dependency tabletView will be loaded.

## Launch Process
One more point to be noticed here is when we have profiles in the application, then the loading and instantiation of application code will be in the following order −

   * Controllers are instantiated first and each controller's init function will be loaded.
   * Profile's launch function will be called.
   * Application's launch function will be called.

Both profile and application's launch functions are optional, so if we do not define any one of them they will not get called.

Take a look at the following code to check where and how the different launch and init functions can be defined.

## Controller's init function
```
Ext.define('MyApp.controller.Main', {
   extend: 'Ext.app.Controller',
   
   init : function (){
      Ext.Msg.alert('Controller's init method');
   },
   
   config: {
      refs: {
         tab: '#divId
     }
   }
});
```
## Profile's launch function
```
Ext.define('Mail.profile.Tablet', {
   extend: 'Ext.app.Profile',

   config: {
      name: 'Tablet', views: ['tableView']
   },

   isActive: function() {
      return Ext.os.is('Tablet');
   }
   launch : function() {
      Ext.Msg.alert('profile's launch function');
   }
});
```
## Application's launch function
```
Ext.application({
   name: 'Sencha', launch: function() {
      Ext.Msg.alert(Application's launch function);
   }
});
```

[Previous Page](../sencha_touch/sencha_touch_theme.md) [Next Page](../sencha_touch/sencha_touch_dependencies.md) 
