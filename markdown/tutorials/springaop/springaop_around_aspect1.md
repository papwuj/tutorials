# Spring AOP - Annotation Based Around Advice
**@Around** is an advice type, which ensures that an advice can run before and after the method execution. Following is the syntax of @Around advice.

## Syntax
```
@PointCut("execution(* com.tutorialspoint.Student.getAge(..))")
private void selectGetName(){}

@Around("selectGetAge()")
public void aroundAdvice(ProceedingJoinPoint proceedingJoinPoint){
   System.out.println("Around advice");
   Object[] args = jp.getArgs();
   if(args.length>0){
      System.out.print("Arguments passed: " );
      for (int i = 0; i < args.length; i++) {
         System.out.print("arg "+(i+1)+": "+args[i]);
      }
   }

   Object result = jp.proceed(args);
   System.out.println("Returning " + result);
   return result.toString();   
}
```
Where,

   * **@PointCut** − Mark a function as a PointCut
   * **execution( expression )** − Expression covering methods on which advice is to be applied.
   * **@Around** − Mark a function as an advice to be executed before method(s) covered by PointCut.

To understand the above-mentioned concepts related to @Around Advice, let us write an example which will implement @Around Advice. To write our example with few advices, let us have a working Eclipse IDE in place and use the following steps to create a Spring application −

Following is the content of **Logging.java** file. This is actually a sample of aspect module, which defines the methods to be called at various points.

```
package com.tutorialspoint;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.PointCut;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.ProceedingJoinPoint; 

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
    * around a selected method execution.
    */
   @Around("selectGetAge()")
   public void aroundAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable{
      System.out.println("Around advice");
      Object[] args = proceedingJoinPoint.getArgs();
      if(args.length>0){
         System.out.print("Arguments passed: " );
         for (int i = 0; i < args.length; i++) {
            System.out.print("arg "+(i+1)+": "+args[i]);
         }
      }

      Object result = proceedingJoinPoint.proceed(args);
      System.out.println("Returning " + result);
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
Around advice
Age : 11
Returning 11
```

[Previous Page](../springaop/springaop_after_throwing1.md) [Next Page](../springaop/springaop_proxy.md) 
