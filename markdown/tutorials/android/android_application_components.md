# Android - Application Components
Application components are the essential building blocks of an Android application. These components are loosely coupled by the application manifest file  that describes each component of the application and how they interact.

There are following four main components that can be used within an Android application −

## Activities
An activity represents a single screen with a user interface,in-short Activity performs actions on the screen. For example, an email application might have one activity that shows a list of new emails, another activity to compose an email, and another activity for reading emails. If an application has more than one activity, then one of them should be marked as the activity that is presented when the application is launched.

An activity is implemented as a subclass of **Activity** class as follows −

```
public class MainActivity extends Activity {
}
```
## Services
A service is a component that runs in the background to perform long-running operations. For example, a service might play music in the background while the user is in a different application, or it might fetch data over the network without blocking user interaction with an activity.

A service is implemented as a subclass of **Service** class as follows −

```
public class MyService extends Service {
}
```
## Broadcast Receivers
Broadcast Receivers simply respond to broadcast messages from other applications or from the system. For example, applications can also initiate broadcasts to let other applications know that some data has been downloaded to the device and is available for them to use, so this is broadcast receiver who will intercept this communication and will initiate appropriate action.

A broadcast receiver is implemented as a subclass of **BroadcastReceiver** class and each message is broadcaster as an **Intent** object.

```
public class MyReceiver  extends  BroadcastReceiver {
   public void onReceive(context,intent){}
}
```
## Content Providers
A content provider component supplies data from one application to others on request. Such requests are handled by the methods of the  class. The data may be stored in the file system, the database or somewhere else entirely.

A content provider is implemented as a subclass of **ContentProvider** class and must implement a standard set of APIs that enable other applications to perform transactions.

```
public class MyContentProvider extends  ContentProvider {
   public void onCreate(){}
}
```
We will go through these tags in detail while covering application components in individual chapters.

## Additional Components
There are additional components which will be used in the construction of above mentioned entities, their logic, and wiring between them. These components are −


[Previous Page](../android/android_architecture.md) [Next Page](../android/android_hello_world_example.md) 
