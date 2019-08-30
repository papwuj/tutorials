# Spring AOP - XML Based Application
In this chapter, we will write actual AOP applications using Spring AOP Framework. Before you start writing your first example using Spring-WS framework, you have to make sure that you have set up your Spring AOP environment properly as explained in [Spring Web Services - Environment Setup](/springaop/springaop_environment.htm)  chapter.

Now, proceed to write a simple console-ased Spring AOP Application, which will demonstrate AOP concepts.

## Create a Project
**Step 1** − Open a command console, go the C:\MVN directory and execute the following **mvn** command.

```
C:\MVN>mvn archetype:generate -DgroupId = com.tutorialspoint -DartifactId = Student
	-DarchetypeArtifactId = maven-archetype-quickstart -DinteractiveMode = false
```
Maven will start processing and will create the complete Java application project structure.

```
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building Maven Stub Project (No POM) 1
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] >>> maven-archetype-plugin:2.4:generate (default-cli) > generate-sources
@ standalone-pom >>>
[INFO]
[INFO] <<< maven-archetype-plugin:2.4:generate (default-cli) < generate-sources
@ standalone-pom <<<
[INFO]
[INFO] --- maven-archetype-plugin:2.4:generate (default-cli) @ standalone-pom --
-
[INFO] Generating project in Batch mode
Downloading: https://repo.maven.apache.org/maven2/org/apache/maven/archetypes/ma
ven-archetype-quickstart/1.0/maven-archetype-quickstart-1.0.jar
Downloaded: https://repo.maven.apache.org/maven2/org/apache/maven/archetypes/mav
en-archetype-quickstart/1.0/maven-archetype-quickstart-1.0.jar (5 KB at 1.1 KB/s
ec)
Downloading: https://repo.maven.apache.org/maven2/org/apache/maven/archetypes/ma
ven-archetype-quickstart/1.0/maven-archetype-quickstart-1.0.pom
Downloaded: https://repo.maven.apache.org/maven2/org/apache/maven/archetypes/mav
en-archetype-quickstart/1.0/maven-archetype-quickstart-1.0.pom (703 B at 1.2 KB/
sec)
[INFO] -------------------------------------------------------------------------
---
[INFO] Using following parameters for creating project from Old (1.x) Archetype:
 maven-archetype-quickstart:1.0
[INFO] -------------------------------------------------------------------------
---
[INFO] Parameter: groupId, Value: com.tutorialspoint
[INFO] Parameter: packageName, Value: com.tutorialspoint
[INFO] Parameter: package, Value: com.tutorialspoint
[INFO] Parameter: artifactId, Value: Student
[INFO] Parameter: basedir, Value: C:\MVN
[INFO] Parameter: version, Value: 1.0-SNAPSHOT
[INFO] project created from Old (1.x) Archetype in dir: C:\MVN\Student
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 01:17 min
[INFO] Finished at: 2017-02-19T21:11:14+05:30
[INFO] Final Memory: 15M/114M
[INFO] ------------------------------------------------------------------------
```
**Step 2** − Go to C:/MVN directory. You'll see a Java application project created, named student (as specified in artifactId). Update the POM.xml to include Spring-AOP dependencies. Add MainApp.java, Student.java, and Logging.java files.

**POM.xml**

```
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/maven-v4_0_0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.tutorialspoint</groupId>
   <artifactId>Student</artifactId>
   <packaging>jar</packaging>
   <version>1.0-SNAPSHOT</version>
   <name>Student</name>
   <url>http://maven.apache.org</url>
   
   <dependencies>
      <dependency>
         <groupId>junit</groupId>
         <artifactId>junit</artifactId>
         <version>3.8.1</version>
         <scope>test</scope>
      </dependency>
      
      <dependency>
         <groupId>org.springframework</groupId>
         <artifactId>spring-aop</artifactId>
         <version>4.1.0.RELEASE</version>
      </dependency>
      
      <dependency>
         <groupId>org.springframework</groupId>
         <artifactId>spring-context</artifactId>
         <version>4.1.4.RELEASE</version>
      </dependency>
      
      <dependency>
         <groupId>org.aspectj</groupId>
         <artifactId>aspectjweaver</artifactId>
         <version>1.6.8</version>
      </dependency>
      
   </dependencies>
</project>
package com.tutorialspoint;

public class Logging {

   /** 
    * This is the method which I would like to execute
    * before a selected method execution.
    */
   public void beforeAdvice() {
      System.out.println("Going to setup student profile.");
   }

   /** 
    * This is the method which I would like to execute
    * after a selected method execution.
    */
   public void afterAdvice() {
      System.out.println("Student profile has been setup.");
   }

   /** 
    * This is the method which I would like to execute
    * when any method returns.
    */
   public void afterReturningAdvice(Object retVal){
      System.out.println("Returning:" + retVal.toString() );
   }

   /**
    * This is the method which I would like to execute
    * if there is an exception raised.
    */
   public void AfterThrowingAdvice(IllegalArgumentException ex) {
      System.out.println("There has been an exception: " + ex.toString());   
   }
   
}
```
Following is the content of the **Student.java** file.

```
package com.tutorialspoint;

public class Student {
   private Integer age;
   private String name;

   public void setAge(Integer age) {
      this.age = age;
   }
   public Integer getAge() {
      System.out.println("Age : " + age );
      return age;
   }

   public void setName(String name) {
      this.name = name;
   }
   public String getName() {
      System.out.println("Name : " + name );
      return name;
   }
   
   public void printThrowException(){
      System.out.println("Exception raised");
      throw new IllegalArgumentException();
   }
}
```
Following is the content of the **MainApp.java** file.

```
package com.tutorialspoint;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {
   public static void main(String[] args) {
      ApplicationContext context = 
         new ClassPathXmlApplicationContext("Beans.xml");

      Student student = (Student) context.getBean("student");

      student.getName();
      student.getAge();
      
      student.printThrowException();
   }
}
```
**Step 3** − Add the configuration file **Beans.xml** under **src > main > resources** folder.

```
<?xml version = "1.0" encoding = "UTF-8"?>
<beans xmlns = "http://www.springframework.org/schema/beans"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance" 
   xmlns:aop = "http://www.springframework.org/schema/aop"
   xsi:schemaLocation = "http://www.springframework.org/schema/beans
   http://www.springframework.org/schema/beans/spring-beans-3.0.xsd 
   http://www.springframework.org/schema/aop 
   http://www.springframework.org/schema/aop/spring-aop-3.0.xsd ">

   <aop:config>
      <aop:aspect id = "log" ref = "logging">
         <aop:PointCut id = "selectAll" 
            expression = "execution(* com.tutorialspoint.*.*(..))"/>
         <aop:before PointCut-ref = "selectAll" method = "beforeAdvice"/>
         <aop:after PointCut-ref = "selectAll" method = "afterAdvice"/>
         <aop:after-returning PointCut-ref = "selectAll" 
            returning = "retVal"
            method = "afterReturningAdvice"/>
         <aop:after-throwing PointCut-ref = "selectAll" 
            throwing = "ex"
            method = "AfterThrowingAdvice"/>
      </aop:aspect>
   </aop:config>

   <!-- Definition for student bean -->
   <bean id = "student" class = "com.tutorialspoint.Student">
      <property name = "name"  value = "Zara" />
      <property name = "age"  value = "11"/>      
   </bean>

   <!-- Definition for logging aspect -->
   <bean id = "logging" class = "com.tutorialspoint.Logging"/> 
      
</beans>
```
**Step 4** − Open the command console, go the C:\MVN directory and execute the following **mvn** command.

```
C:\MVN>Student> mvn package
```
Maven will start processing and downloading the required libraries.

```
[INFO] Scanning for projects...
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building Student 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
Downloading: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven
-jar-plugin/2.4/maven-jar-plugin-2.4.pom
Downloaded: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-
jar-plugin/2.4/maven-jar-plugin-2.4.pom (6 KB at 2.2 KB/sec)
Downloading: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven
-jar-plugin/2.4/maven-jar-plugin-2.4.jar
Downloaded: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-
jar-plugin/2.4/maven-jar-plugin-2.4.jar (34 KB at 31.6 KB/sec)
Downloading: https://repo.maven.apache.org/maven2/org/springframework/spring-aop
/4.1.0.RELEASE/spring-aop-4.1.0.RELEASE.pom
Downloaded: https://repo.maven.apache.org/maven2/org/springframework/spring-aop/
4.1.0.RELEASE/spring-aop-4.1.0.RELEASE.pom (3 KB at 3.7 KB/sec)
Downloading: https://repo.maven.apache.org/maven2/org/springframework/spring-bea
ns/4.1.0.RELEASE/spring-beans-4.1.0.RELEASE.pom
Downloaded: https://repo.maven.apache.org/maven2/org/springframework/spring-bean
s/4.1.0.RELEASE/spring-beans-4.1.0.RELEASE.pom (3 KB at 4.1 KB/sec)
Downloading: https://repo.maven.apache.org/maven2/org/springframework/spring-cor
e/4.1.0.RELEASE/spring-core-4.1.0.RELEASE.pom
Downloaded: https://repo.maven.apache.org/maven2/org/springframework/spring-core
/4.1.0.RELEASE/spring-core-4.1.0.RELEASE.pom (3 KB at 4.0 KB/sec)
Downloading: https://repo.maven.apache.org/maven2/org/springframework/spring-aop
/4.1.0.RELEASE/spring-aop-4.1.0.RELEASE.jar
Downloading: https://repo.maven.apache.org/maven2/org/springframework/spring-cor
e/4.1.0.RELEASE/spring-core-4.1.0.RELEASE.jar
Downloading: https://repo.maven.apache.org/maven2/org/springframework/spring-bea
ns/4.1.0.RELEASE/spring-beans-4.1.0.RELEASE.jar
Downloaded: https://repo.maven.apache.org/maven2/org/springframework/spring-aop/
4.1.0.RELEASE/spring-aop-4.1.0.RELEASE.jar (351 KB at 43.9 KB/sec)
Downloaded: https://repo.maven.apache.org/maven2/org/springframework/spring-bean
s/4.1.0.RELEASE/spring-beans-4.1.0.RELEASE.jar (685 KB at 37.5 KB/sec)
Downloaded: https://repo.maven.apache.org/maven2/org/springframework/spring-core
/4.1.0.RELEASE/spring-core-4.1.0.RELEASE.jar (982 KB at 47.1 KB/sec)
[INFO]
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ Student --
-
[WARNING] Using platform encoding (Cp1252 actually) to copy filtered resources,
i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory C:\MVN\Student\src\main\resources
[INFO]
[INFO] --- maven-compiler-plugin:3.1:compile (default-compile) @ Student ---
[INFO] Changes detected - recompiling the module!
[WARNING] File encoding has not been set, using platform encoding Cp1252, i.e. b
uild is platform dependent!
[INFO] Compiling 1 source file to C:\MVN\Student\target\classes
[INFO]
[INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ St
udent ---
[WARNING] Using platform encoding (Cp1252 actually) to copy filtered resources,
i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory C:\MVN\Student\src\test\resources
[INFO]
[INFO] --- maven-compiler-plugin:3.1:testCompile (default-testCompile) @ Student
 ---
[INFO] Changes detected - recompiling the module!
[WARNING] File encoding has not been set, using platform encoding Cp1252, i.e. b
uild is platform dependent!
[INFO] Compiling 1 source file to C:\MVN\Student\target\test-classes
[INFO]
[INFO] --- maven-surefire-plugin:2.12.4:test (default-test) @ Student ---
[INFO] Surefire report directory: C:\MVN\Student\target\surefire-reports
Downloading: https://repo.maven.apache.org/maven2/org/apache/maven/surefire/sure
fire-junit3/2.12.4/surefire-junit3-2.12.4.pom
Downloaded: https://repo.maven.apache.org/maven2/org/apache/maven/surefire/suref
ire-junit3/2.12.4/surefire-junit3-2.12.4.pom (2 KB at 1.3 KB/sec)
Downloading: https://repo.maven.apache.org/maven2/org/apache/maven/surefire/sure
fire-junit3/2.12.4/surefire-junit3-2.12.4.jar
Downloaded: https://repo.maven.apache.org/maven2/org/apache/maven/surefire/suref
ire-junit3/2.12.4/surefire-junit3-2.12.4.jar (26 KB at 27.7 KB/sec)

-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Running com.tutorialspoint.AppTest
Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.002 sec

Results :

Tests run: 1, Failures: 0, Errors: 0, Skipped: 0

[INFO]
[INFO] --- maven-jar-plugin:2.4:jar (default-jar) @ Student ---
Downloading: https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1-al
pha-2/classworlds-1.1-alpha-2.jar
Downloaded: https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1-alp
ha-2/classworlds-1.1-alpha-2.jar (37 KB at 35.8 KB/sec)
[INFO] Building jar: C:\MVN\Student\target\Student-1.0-SNAPSHOT.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 38.441 s
[INFO] Finished at: 2017-02-19T21:18:59+05:30
[INFO] Final Memory: 18M/109M
[INFO] ------------------------------------------------------------------------
```
## Import Project in Eclipse
**Step 1** − Open Eclipse.

**Step 2** − Select **File → Import →** option.

**Step 3** − Select Maven Projects Option. Click the Next Button.

**Step 4** − Select Project location, where Student project was created using Maven.

**Step 5** − Click Finish Button.

## Run Project
Once you are done creating the source and configuration files, run your application. Rightclick on MainApp.java in your application and use **run as Java Application** command. If everything is fine with your application, it will print the following message.

```
Going to setup student profile.
Name : Zara
Student profile has been setup.
Returning:Zara
Going to setup student profile.
Age : 11
Student profile has been setup.
Returning:11
Going to setup student profile.
Exception raised
Student profile has been setup.
There has been an exception: java.lang.IllegalArgumentException
Exception in thread "main" java.lang.IllegalArgumentException
   at com.tutorialspoint.Student.printThrowException(Student.java:25)
   
   at com.tutorialspoint.Student$$FastClassBySpringCGLIB$$7dc55815.invoke(<generated>)
   
   at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
   
   at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:717)
   
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)
   
   at org.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:52)
   
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
   
   at org.springframework.aop.aspectj.AspectJAfterAdvice.invoke(AspectJAfterAdvice.java:43)
   
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
   
   at org.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:52)
   
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
   
   at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:58)
   
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
   
   at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
   
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
   
   at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:653)
   
   at com.tutorialspoint.Student$$EnhancerBySpringCGLIB$$56a970f2.printThrowException(<generated>)
   
   at com.tutorialspoint.MainApp.main(MainApp.java:16)
```

[Previous Page](../springaop/springaop_implementations.md) [Next Page](../springaop/springaop_pointcut_methods.md) 
