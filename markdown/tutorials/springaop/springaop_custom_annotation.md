# Spring AOP - Custom Annotation
As per PointCut expressions, it may be the case that they get applied to some other beans for which advice is not intended. For example, consider the following expression.

```
execution(* com.tutorialspoint.*.getAge(..))
```
A new spring bean is added with getAge() method and the advice will start getting applied to it although it may not be intended. To achieve this, we can create a custom annotation and annotate the methods on which the advice is to be applied.

```
@Before("@annotation(com.tutorialspoint.Loggable)")
```
To understand the above-mentioned concepts related to @Before Advice, let us write an example which will implement @Before Advice. To write our example with few advices, let us have a working Eclipse IDE in place and use the following steps to create a Spring application.

Following is the content of **Logging.java** file. This is actually a sample of aspect module, which defines the methods to be called at various points.

```
package com.tutorialspoint;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class Logging {

   /** 
    * This is the method which I would like to execute
    * before a selected method execution.
    */
   @Before("@annotation(com.tutorialspoint.Loggable)")
   public void beforeAdvice(){
      System.out.println("Going to setup student profile.");
   }  
}
```
Following is the content of the **Loggable.java** file −

```
package com.tutorialspoint;

public @interface Loggable {

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
   
   @Loggable
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

   <aop:aspectj-autoproxy/>

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

[Previous Page](../springaop/springaop_proxy.md) [Next Page](../springaop/springaop_quick_guide.md) 
