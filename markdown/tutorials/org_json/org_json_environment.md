# org.json - Environment Setup
## Local Environment Setup
JSON.simple is a library for Java, so the very first requirement is to have JDK installed in your machine.

### System Requirement
## Step 1: Verify Java Installation in Your Machine
First of all, open the console and execute a java command based on the operating system you are working on.

Let's verify the output for all the operating systems −

If you do not have Java installed on your system, then download the Java Software Development Kit (SDK) from the following link [www.oracle.com](https://www.oracle.com/technetwork/java/javase/downloads/index.html) . We are assuming Java 1.8.0_101 as the installed version for this tutorial.

## Step 2: Set JAVA Environment
Set the **JAVA_HOME** environment variable to point to the base directory location where Java is installed on your machine. For example.

Append Java compiler location to the System Path.

Verify Java installation using the command **java -version** as explained above.

## Step 3: Download org.json Archive
Download the latest version of org.json jar file from [org.json @ MVNRepository](https://mvnrepository.com/artifact/org.json/json) . At the time of writing this tutorial, we have downloaded json-20180813, and copied it into C:\&gt;JSON folder.

## Step 4: Set JSON_JAVA Environment
Set the **JSON_JAVA** environment variable to point to the base directory location where org.json jar is stored on your machine. Let's assuming we've stored json-20180813.jar in the JSON folder.

## Step 5: Set CLASSPATH Variable
Set the **CLASSPATH** environment variable to point to the JSON.simple jar location.


[Previous Page](../org_json/org_json_overview.md) [Next Page](../org_json/org_json_cdl.md) 
