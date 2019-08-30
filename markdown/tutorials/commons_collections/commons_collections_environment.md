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

Example, if you use bash as your shell, then you would add the following line to the end of your '.bashrc: export PATH=/path/to/java:$PATH'

## Popular Java Editors
To write your Java programs, you need a text editor. There are many sophisticated IDEs available in the market. But for now, you can consider one of the following −

   * **Notepad** − On Windows machine you can use any simple text editor like Notepad (Recommended for this tutorial), TextPad.
   * **Netbeans** − It is a Java IDE that is open-source and free which can be downloaded from [https://www.netbeans.org/index.html](https://www.netbeans.org/index.html) .
   * **Eclipse** − It is also a Java IDE developed by the eclipse open-source community and can be downloaded from [https://www.eclipse.org/](https://www.eclipse.org/) .

## Download Common Collections Archive
Download the latest version of Apache Common Collections jar file from [commons-collections4-4.1-bin.zip](https://commons.apache.org/proper/commons-collections/download_collections.cgi) . At the time of writing this tutorial, we have downloaded  and copied it into C:\&gt;Apache folder.

## Set Apache Common Collections Environment
Set the **APACHE_HOME** environment variable to point to the base directory location where Apache jar is stored on your machine. Assuming, we've extracted commons-collections4-4.1-bin.zip in Apache folder on various Operating Systems as follows.

## Set CLASSPATH Variable
Set the **CLASSPATH** environment variable to point to the Common Collections jar location. Assuming, you have stored commons-collections4-4.1-bin.zip in Apache folder on various Operating Systems as follows.


[Previous Page](../commons_collections/commons_collections_overview.md) [Next Page](../commons_collections/commons_collections_bag.md) 
