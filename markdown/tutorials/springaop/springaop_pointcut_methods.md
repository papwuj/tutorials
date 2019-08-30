# Spring AOP - XML Based PointCut
## Join Point
A JoinPoint represents a point in your application where you can plug-in AOP aspect. You can also say, it is the actual place in the application where an action will be taken using Spring AOP framework. Consider the following examples −

   * All methods classes contained in a package(s).
   * A particular methods of a class.

## PointCut
PointCut is a set of one or more JoinPoints where an advice should be executed. You can specify PointCuts using expressions or patterns as we will see in our AOP examples. In Spring, PointCut helps to use specific JoinPoints to apply the advice. Consider the following examples −

   * expression = "execution(* com.tutorialspoint.*.*(..))"
   * expression = "execution(* com.tutorialspoint.Student.getName(..))"

## Syntax
```
<aop:config>
   <aop:aspect id = "log" ref = "adviceClass">
      <aop:PointCut id = "PointCut-id" expression = "execution( expression )"/>    
   </aop:aspect>
</aop:config>
```
Where,

   * **adviceClass** − ref of the class containing advice methods
   * **PointCut-id** − id of the PointCut
   * **execution( expression )** − Expression covering methods on which advice is to be applied.

To understand the above-mentioned concepts related to JoinPoint and PointCut, let us write an example which will implement few of the PointCuts. To write our example with few advices, let us have a working Eclipse IDE in place and use the following steps to create a Spring application.

Following is the content of **Logging.java** file. This is actually a sample of aspect module, which defines the methods to be called at various points.

```
package com.tutorialspoint;

public class Logging {

   /** 
    * This is the method which I would like to execute
    * before a selected method execution.
    */
   public void beforeAdvice(){
      System.out.println("Going to setup student profile.");
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
   }
}
```
Following is the configuration file **Beans.xml**.

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
Once you are done with creating the source and bean configuration files, run the application. If everything is fine with your application, it will print the following message.

```
Going to setup student profile.
Name : Zara
Going to setup student profile.
Age : 11
```
The above-defined &lt;aop:pointcut&gt; selects all the methods defined under the package com.tutorialspoint. Let us suppose, you want to execute your advice before or after a particular method, you can define your PointCut to narrow down your execution by replacing stars (*) in PointCut definition with actual class and method names. Following is a modified XML configuration file to show the concept.

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
            expression = "execution(* com.tutorialspoint.Student.getName(..))"/>
         <aop:before PointCut-ref = "selectAll" method = "beforeAdvice"/>
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
## Run Project
Once you are done creating the source and configuration files, run your application. Rightclick on MainApp.java in your application and use **run as Java Application** command. If everything is fine with your application, it will print the following message.

```
Going to setup student profile.
Name : Zara
Age : 11
```

[Previous Page](../springaop/springaop_application.md) [Next Page](../springaop/springaop_before_advice.md) 
