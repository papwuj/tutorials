# Apache Commons Collections - Quick Guide
# Apache Commons Collections - Overview
Commons Collections augments Java Collections Framework. It provides several features to make collection handling easy. It provides many new interfaces, implementations and utilities. Main features of Commons Collections are following −

   * **Bag** − Bag interfaces simplifies the collections which have multiple number of copies of each object.
   * **BidiMap** − BidiMap interfaces provide Bi-Directional maps which can be used to lookup values using keys or keys using values.
   * **MapIterator** − MapIterator interface provide simple and easy iteration over maps.
   * **Transforming Decorators** − Transforming decorators can alter every object of a collection as and when it is added to the collection.
   * **Composite Collections** − Composite collections are used where multiple collections are required to be handled uniformly.
   * **Ordered Map** − Ordered Maps retain the order in which elements are added in.
   * **Ordered Set** − Ordered Sets retain the order in which elements are added in.
   * **Reference map** − Reference map allows key/values to be garbage collected under close control.
   * **Comparator implementations** − Many Comparator implementations are available.
   * **Iterator implementations** − Many Iterator implementations are available.
   * **Adapter Classes** − Adapter classes are available to convert array and enumerations to collections.
   * **Utilities** − Utilities are available to test test or create typical set-theory properties of collections such as union, intersection. Supports Closure.

# Commons Collections - Environment Setup
## Local Environment Setup
If you are still willing to set up your environment for Java programming language, then this section guides you on how to download and set up Java on your machine. Please follow the steps mentioned below to set up the environment.

Java SE is freely available from the link [Download Java](https://java.sun.com/javase/downloads/index_jdk5.jsp) . So you download a version based on your operating system.

Follow the instructions to download Java and run the **.exe** to install Java on your machine. Once you have installed Java on your machine, you would need to set environment variables to point to correct installation directories −

## Setting up the Path for Windows 2000/XP
We are assuming that you have installed Java in  directory −

   * Right-click on 'My Computer' and select 'Properties'.
   * Click on the 'Environment variables' button under the 'Advanced' tab.
   * Now, alter the 'Path' variable so that it also contains the path to the Java executable. Example, if the path is currently set to 'C:\WINDOWS\SYSTEM32', then change your path to read 'C:\WINDOWS\SYSTEM32;c:\Program Files\java\jdk\bin'.

## Setting up the Path for Windows 95/98/ME
We are assuming that you have installed Java in  directory −

   * Edit the 'C:\autoexec.bat' file and add the following line at the end − 'SET PATH=%PATH%;C:\Program Files\java\jdk\bin'

## Setting up the Path for Linux, UNIX, Solaris, FreeBSD
Environment variable PATH should be set to point to where the Java binaries have been installed. Refer to your shell documentation if you have trouble doing this.

Example, if you use bash as your shell, then you would add the following line to 


[Previous Page](../commons_collections/commons_collections_union.md) [Next Page](../commons_collections/commons_collections_useful_resources.md) 
