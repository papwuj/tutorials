# Spring Boot - Twilio
Twilio is a 3 party application used to send SMS and make voice calls from our application. It allows us to send the SMS and make voice calls programmatically.

In this chapter, you are going to learn how to implement the SMS sending and making voice calls by using Spring Boot with Twilio.

**Note** − We used the Trail account in Twilio to send the SMS and making voice calls. You can learn more about Twilio at [www.twilio.com](https://www.twilio.com/) .

First, we need to add the Twilio dependency in our build configuration file.

Maven users can add the following dependency in the pom.xml file.

```
<dependency>
   <groupId>com.twilio.sdk</groupId>
   <artifactId>twilio</artifactId>
   <version>7.16.1</version>
</dependency>
```
Gradle users can add the following dependency in the build.gradle file.

```
compile group: "com.twilio.sdk", name:"twilio", version: "7.16.1"
```
Now, initialize the Twilio account with ACCOUNT_SID and AUTH_ID in static block as shown −

```
static {
   Twilio.init(ACCOUNT_SID, AUTH_ID);
}
```
## Sending SMS
To send the SMS, we need to provide a from-number and to-number to the Message.create() method. Message body content also we need to provide for the method Message.creator()as shown −

```
Message.creator(new PhoneNumber("to-number"), new PhoneNumber("from-number"),
   "Message from Spring Boot Application").create();
```
The main Spring Boot application class file looks below.

```
package com.tutorialspoint.smsdemo;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@SpringBootApplication
public class SmsdemoApplication implements ApplicationRunner {
   private final static String ACCOUNT_SID = "<your-account-sid>";
   private final static String AUTH_ID = "<your-auth-id>";

   static {
      Twilio.init(ACCOUNT_SID, AUTH_ID);
   }
   public static void main(String[] args) {
      SpringApplication.run(SmsdemoApplication.class, args);
   }
   @Override
   public void run(ApplicationArguments arg0) throws Exception {
      Message.creator(new PhoneNumber("to-number"), new PhoneNumber("from-number"),
         "Message from Spring Boot Application").create();
   }
}
```
The complete code to build configuration file is given below −

**Maven – pom.xml**

```
<?xml version = "1.0" encoding = "UTF-8"?>
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.tutorialspoint</groupId>
   <artifactId>smsdemo</artifactId>
   <version>0.0.1-SNAPSHOT</version>
   <packaging>jar</packaging>
   <name>smsdemo</name>
   <description>Demo project for Spring Boot</description>

   <parent>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-parent</artifactId>
      <version>1.5.9.RELEASE</version>
      <relativePath /> <!-- lookup parent from repository -->
   </parent>

   <properties>
      <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
      <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
      <java.version>1.8</java.version>
   </properties>

   <dependencies>
      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter</artifactId>
      </dependency>
      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter-test</artifactId>
         <scope>test</scope>
      </dependency>
      <dependency>
         <groupId>com.twilio.sdk</groupId>
         <artifactId>twilio</artifactId>
         <version>7.16.1</version>
      </dependency>
   </dependencies>

   <build>
      <plugins>
         <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
         </plugin>
      </plugins>
   </build>
   
</project>
```
**Gradle – build.gradle**

```
buildscript {
   ext {
      springBootVersion = '1.5.9.RELEASE'
   }
   repositories {
      mavenCentral()
   }
   dependencies {
      classpath("org.springframework.boot:spring-boot-gradle-plugin:${springBootVersion}")
   }
}
apply plugin: 'java'
apply plugin: 'eclipse'
apply plugin: 'org.springframework.boot'

group = 'com.tutorialspoint'
version = '0.0.1-SNAPSHOT'
sourceCompatibility = 1.8

repositories {
   mavenCentral()
}
dependencies {
   compile('org.springframework.boot:spring-boot-starter')
   testCompile('org.springframework.boot:spring-boot-starter-test')
   compile group: "com.twilio.sdk", name:"twilio", version: "7.11.+"   
}
```
You can create an executable JAR file, and run the spring boot application by using the following Maven or Gradle commands −

For Maven, use the command as shown −

```
mvn clean install
```
After “BUILD SUCCESS”, you can find the JAR file under the target directory.

For Gradle, use the command as shown −

```
gradle clean build
```
After “BUILD SUCCESSFUL”, you can find the JAR file under the build/libs directory.

Run the JAR file by using the command as given below −

```
java –jar <JARFILE>
```
Now, you will receive the SMS to your “to-number”.

Message received to “to-number”.

```
Sent from your Twilio trail account
- Message from Spring Boot Application
```
**Note** − In this example, we used the Trail account. So, you should verify the numbers before sending the SMS.

## Voice Calls
To make voice calls by using Twilio, we need to call the Call.creator() method. For this method, we need to provide a to-number, from-number, and voice-note as shown here.

```
Call.creator(new PhoneNumber("<to-number>"), new PhoneNumber("<from-number>"),
   new URI("http://demo.twilio.com/docs/voice.xml")).create();
```
The code for main Spring Boot application class file is given below.

```
package com.tutorialspoint.smsdemo; 

import java.net.URI;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Call;
import com.twilio.type.PhoneNumber;

@SpringBootApplication
public class SmsdemoApplication implements ApplicationRunner {
   private final static String ACCOUNT_SID = "<ACCOUNT-SID>";
   private final static String AUTH_ID = "AUTH-ID";

   static {
      Twilio.init(ACCOUNT_SID, AUTH_ID);
   }
   public static void main(String[] args) {
      SpringApplication.run(SmsdemoApplication.class, args);
   }
   @Override
   public void run(ApplicationArguments arg0) throws Exception {
      Call.creator(new PhoneNumber("<to-number>"), new PhoneNumber("<from-number>"),
         new URI("http://demo.twilio.com/docs/voice.xml")).create();
   }
}
```
The code for complete build configuration file is given below −

**Maven – pom.xml**

```
<?xml version = "1.0" encoding = "UTF-8"?>
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.tutorialspoint</groupId>
   <artifactId>smsdemo</artifactId>
   <version>0.0.1-SNAPSHOT</version>
   <packaging>jar</packaging>
   <name>smsdemo</name>
   <description>Demo project for Spring Boot</description>

   <parent>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-parent</artifactId>
      <version>1.5.9.RELEASE</version>
      <relativePath /> <!-- lookup parent from repository -->
   </parent>

   <properties>
      <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
      <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
      <java.version>1.8</java.version>
   </properties>

   <dependencies>
      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter</artifactId>
      </dependency>
      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter-test</artifactId>
         <scope>test</scope>
      </dependency>
      <dependency>
         <groupId>com.twilio.sdk</groupId>
         <artifactId>twilio</artifactId>
         <version>7.16.1</version>
      </dependency>
   </dependencies>

   <build>
      <plugins>
         <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
         </plugin>
      </plugins>
   </build>
   
</project>
```
**Gradle – build.gradle**

```
buildscript {
   ext {
      springBootVersion = '1.5.9.RELEASE'
   }
   repositories {
      mavenCentral()
   }
   dependencies {
      classpath("org.springframework.boot:spring-boot-gradle-plugin:${springBootVersion}")
   }
}

apply plugin: 'java'
apply plugin: 'eclipse'
apply plugin: 'org.springframework.boot'

group = 'com.tutorialspoint'
version = '0.0.1-SNAPSHOT'
sourceCompatibility = 1.8

repositories {
   mavenCentral()
}
dependencies {
   compile('org.springframework.boot:spring-boot-starter')
   testCompile('org.springframework.boot:spring-boot-starter-test')
   compile group: "com.twilio.sdk", name:"twilio", version: "7.11.+"   
}
```
You can create an executable JAR file, and run the Spring Boot application by using the following Maven or Gradle commands.

For Maven, use the command as shown −

```
mvn clean install
```
After “BUILD SUCCESS”, you can find the JAR file under the target directory.

For Gradle, use the command as shown −

```
gradle clean build
```
After “BUILD SUCCESSFUL”, you can find the JAR file under the build/libs directory.

Now, run the JAR file by using the command given here −

```
java –jar <JARFILE>
```
Now, you will receive call to your “to-number” from Twilio.

Press any key after attending the call, you will hear the voice note from [https://demo.twilio.com/docs/voice.xml](https://demo.twilio.com/docs/voice.xml) 

**Note** − In this example, we used the Trail account. So, you should verify the numbers before making calls.


[Previous Page](../spring_boot/spring_boot_apache_kafka.md) [Next Page](../spring_boot/spring_boot_unit_test_cases.md) 
