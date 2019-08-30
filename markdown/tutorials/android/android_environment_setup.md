# Android - Environment Setup
![Environment](../android/images/env.jpg)

You will be glad to know that you can start your Android application development on either of the following operating systems −

   * Microsoft Windows XP or later version.
   * Mac OS X 10.5.8 or later version with Intel chip.
   * Linux including GNU C Library 2.7 or later.

Second point is that all the required tools to develop Android applications are freely available and can be downloaded from the Web. Following is the list of software's you will need before you start your Android application programming.

   * Java JDK5 or later version
   * Android Studio 

Here last two components are optional and if you are working on Windows machine then these components make your life easy while doing Java based application development. So let us have a look how to proceed to set required environment.

## Set-up Java Development Kit (JDK)
You can download the latest version of Java JDK from Oracle's Java site − [Java SE Downloads](http://www.oracle.com/technetwork/java/javase/downloads/index.html) . You will find instructions for installing JDK in downloaded files, follow the given instructions to install and configure the setup. Finally set PATH and JAVA_HOME environment variables to refer to the directory that contains **java** and **javac**, typically java_install_dir/bin and java_install_dir respectively.

If you are running Windows and installed the JDK in C:\jdk1.8.0_102, you would have to put the following line in your C:\autoexec.bat file.

```
set PATH=C:\jdk1.8.0_102\bin;%PATH%
set JAVA_HOME=C:\jdk1.8.0_102
```
Alternatively, you could also right-click on , select , then , then . Then, you would update the PATH value and press the OK button.

On Linux, if the SDK is installed in /usr/local/jdk1.8.0_102 and you use the C shell, you would put the following code into your **.cshrc** file.

```
setenv PATH /usr/local/jdk1.8.0_102/bin:$PATH
setenv JAVA_HOME /usr/local/jdk1.8.0_102
```
Alternatively, if you use Android studio, then it will know automatically where you have installed your Java.

## Android IDEs
There are so many sophisticated Technologies are available to develop android applications, the familiar technologies, which are predominantly using tools as follows

   * [Android Studio](/android/android_studio.htm) 
   * Eclipse IDE(Deprecated)


[Previous Page](../android/android_overview.md) [Next Page](../android/android_architecture.md) 
