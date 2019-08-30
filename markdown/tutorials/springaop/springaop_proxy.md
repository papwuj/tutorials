# Spring AOP - Proxy
So far, we've declared aspects using **<aop:config>** or **< aop:aspectj-autoproxy>**. We can create a proxy programmatically as well as invoke the aspects programmatically using the proxy object. 

## Syntax
```
//Create object to be proxied
Student student = new Student();

//Create the Proxy Factory
AspectJProxyFactory proxyFactory = new AspectJProxyFactory(student);

//Add Aspect class to the factory
proxyFactory.addAspect(Logging.class);

//Get the proxy object
Student proxyStudent = proxyFactory.getProxy();

//Invoke the proxied method.
proxyStudent.getAge();
```
Where,

   * **AspectJProxyFactory** − Factory class to create a proxy object.
   * **Logging.class** − Class of the Aspect containing advices.
   * **Student** − Business class to be advised.

To understand the above-mentioned concepts related to proxy, let us write an example which will implement proxy. To write our example with few advices, let us have a working Eclipse IDE in place and use the following steps to create a Spring application −

Following is the content of **Logging.java** file. This is actually a sample of aspect module, which defines the methods to be called at various points.

```
package com.tutorialspoint;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.PointCut;
import org.aspectj.lang.annotation.Before;

@Aspect
public class Logging {

   /** Following is the definition for a PointCut to select
    *  all the methods available. So advice will be called
    *  for all the methods.
    */
   @PointCut("execution(* com.tutorialspoint.Student.getAge(..))")
   private void selectGetAge(){}

   /** 
    * This is the method which I would like to execute
    * before a selected method execution.
    */
   @Before("selectGetAge()")
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
  
   public void setAge(Integer age) {
      this.age = age;
   }
   
   public Integer getAge() {
      System.out.println("Age : " + age );
      return age;
   }   
}
```
Following is the content of the **MainApp.java** file.

```
package com.tutorialspoint;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.aop.aspectj.annotation.AspectJProxyFactory;

public class MainApp {
   public static void main(String[] args) {
      ApplicationContext context = 
         new ClassPathXmlApplicationContext("Beans.xml");

      Student student = (Student) context.getBean("student");

      //Create the Proxy Factory
      AspectJProxyFactory proxyFactory = new AspectJProxyFactory(student);

      //Add Aspect class to the factory
      proxyFactory.addAspect(Logging.class);

      //Get the proxy object
      Student proxyStudent = proxyFactory.getProxy();

      //Invoke the proxied method.
      proxyStudent.getAge();
 
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

   <!-- Definition for student bean -->
   <bean id = "student" class = "com.tutorialspoint.Student">
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
Age : 11
```

[Previous Page](../springaop/springaop_around_aspect1.md) [Next Page](../springaop/springaop_custom_annotation.md) 
