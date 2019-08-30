# RxJava - Environment Setup
## Local Environment Setup
RxJava is a library for Java, so the very first requirement is to have JDK installed in your machine.

### System Requirement
## Step 1 - Verify Java Installation in Your Machine
First of all, open the console and execute a java command based on the operating system you are working on.

Let's verify the output for all the operating systems −

If you do not have Java installed on your system, then download the Java Software Development Kit (SDK) from the following link [https://www.oracle.com](https://www.oracle.com/technetwork/java/javase/downloads/index.html) . We are assuming Java 1.8.0_101 as the installed version for this tutorial.

## Step 2 - Set JAVA Environment
Set the **JAVA_HOME** environment variable to point to the base directory location where Java is installed on your machine. For example.

Append Java compiler location to the System Path.

Verify Java installation using the command **java -version** as explained above.

## Step 3 - Download RxJava2 Archive
Download the latest version of RxJava jar file from [RxJava @ MVNRepository](https://mvnrepository.com/artifact/io.reactivex.rxjava2/rxjava)  and its dependency [Reactive Streams @ MVNRepository](https://mvnrepository.com/artifact/org.reactivestreams/reactive-streams)  . At the time of writing this tutorial, we have downloaded rxjava-2.2.4.jar, reactive-streams-1.0.2.jar and copied it into C:\&gt;RxJava folder.

## Step 4 - Set RxJava Environment
Set the **RX_JAVA** environment variable to point to the base directory location where RxJava jar is stored on your machine. Let’s assuming we've stored rxjava-2.2.4.jar and reactive-streams-1.0.2.jar in the RxJava folder.

## Step 5 - Set CLASSPATH Variable
Set the **CLASSPATH** environment variable to point to the RxJava jar location.

## Step 6 - Test RxJava Setup
Create a class TestRx.java as shown below −

```
import io.reactivex.Flowable;
public class TestRx {
   public static void main(String[] args) {
      Flowable.just("Hello World!").subscribe(System.out::println);
   }
}
```
## Step 7 - Verify the Result
Compile the classes using **javac** compiler as follows −

```
C:\RxJava>javac Tester.java
```
Verify the output.

```
Hello World!
```

[Previous Page](../rxjava/rxjava_overview.md) [Next Page](../rxjava/rxjava_how_observable_works.md) 
