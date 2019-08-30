# Spring AOP - Environment Setup
This chapter takes you through the process of setting up Spring AOP on Windows and Linux based systems. Spring AOP can be easily installed and integrated with your current Java environment and MAVEN by following a few simple steps without any complex setup procedures. User administration is required while installation.

## System Requirements
Let us now look at the steps to install Spring AOP.

## Step 1: Verify your Java Installation
First of all, you need to have Java Software Development Kit (SDK) installed on your system. To verify this, execute any of the following two commands depending on the platform you are working on.

If the Java installation has been done properly, then it will display the current version and specification of your Java installation. A sample output is given in the following table.

We assume the readers of this tutorial have Java SDK version 1.7.0_60 installed on their system.

In case you do not have Java SDK, download its current version from [https://www.oracle.com/technetwork/java/javase/downloads/index.html](https://www.oracle.com/technetwork/java/javase/downloads/index.html)  and have it installed.

## Step 2: Set your Java Environment
Set the environment variable JAVA_HOME to point to the base directory location where Java is installed on your machine. For example,

Append the full path of Java compiler location to the System Path.

Execute the command **java -version** from the command prompt as explained above.

## Step 3: Download Maven Archive
Download Maven 3.3.3 from [https://maven.apache.org/download.cgi](https://maven.apache.org/download.cgi) 

## Step 4: Extract the Maven Archive
Extract the archive, to the directory you wish to install Maven 3.3.3. The subdirectory apache-maven-3.3.3 will be created from the archive.

## Step 5: Set Maven Environment Variables
Add M2_HOME, M2, MAVEN_OPTS to environment variables.

## Step 6: Add Maven Bin Directory Location to System Path
Now append M2 variable to System Path.

## Step 7: Verify Maven installation
Now open console, and execute the following **mvn** command.

Finally, verify the output of the above commands, which should be something as follows −

## Step 8 - Set Up Eclipse IDE
All the examples in this tutorial have been written using Eclipse IDE. So I would suggest you should have the latest version of Eclipse installed on your machine.

To install Eclipse IDE, download the latest Eclipse binaries from [https://www.eclipse.org/downloads/](https://www.eclipse.org/downloads/) . Once you download the installation, unpack the binary distribution into a convenient location. For example, in C:\eclipse on Windows, or /usr/local/eclipse on Linux/Unix and finally set PATH variable appropriately.

Eclipse can be started by executing the following commands on Windows machine, or you can double-click on eclipse.exe

```
%C:\eclipse\eclipse.exe
```
Eclipse can be started by executing the following commands on Unix (Solaris, Linux, etc.) machine −

```
$/usr/local/eclipse/eclipse
```
After a successful startup, if everything is fine then it should display the following result −

![Eclipse Home page](../springaop/images/eclipsehomepage.jpg)

Once you are done with this last step, you are ready to proceed for your first AOP example, which you will see in the next chapter.


[Previous Page](../springaop/springaop_overview.md) [Next Page](../springaop/springaop_core_concepts.md) 
