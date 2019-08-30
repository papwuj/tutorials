# Spring AOP - XML Based After Throwing Advice
**After-throwing** is an advice type which ensures that an advice runs after the method execution, only if the method exits by throwing an exception. Following is the syntax of after-throwing advice.

## Syntax
```
<aop:config>
   <aop:aspect id = "log" ref = "logging">
      <aop:PointCut id = "PointCut-id" expression = "execution( expression )"/>    
      <aop:after-throwing PointCut-ref = "PointCut-id" throwing = "ex" 
         method = "methodName"/>
   </aop:aspect>
</aop:config>
```
Where,

   * **PointCut-id** − id of the PointCut.
   * **ex** − Exception to be thrown.
   * **methodName** − Method name of the function to be called when a called function throws an exception and exits.

To understand the above-mentioned concepts related to After Throwing Advice, let us write an example which will implement After Throwing Advice. To write our example with few advices, let us have a working Eclipse IDE in place and use the following steps to create a Spring application −

Following is the content of **Logging.java** file. This is actually a sample of aspect module, which defines the methods to be called at various points.

```
package com.tutorialspoint;

public class Logging {
   /**
    * This is the method which I would like to execute
    * if there is an exception raised.
    */
   public void afterThrowingAdvice(IllegalArgumentException ex) {
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

      student.printThrowException();     
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
         <aop:after-throwing PointCut-ref = "selectAll" 
            throwing = "ex" method = "afterThrowingAdvice"/>         
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
Exception raised
There has been an exception: java.lang.IllegalArgumentException
Exception in thread "main" java.lang.IllegalArgumentException
   at com.tutorialspoint.Student.printThrowException(Student.java:25)
	
   at com.tutorialspoint.Student$$FastClassBySpringCGLIB$$7dc55815.invoke(<generated>>)
	
   at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)
	
   at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:717)
	
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)
	
   at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:58)
	
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	
   at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)
	
   at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)
	
   at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:653)
	
   at com.tutorialspoint.Student$$EnhancerBySpringCGLIB$$8514cd8.printThrowException(<generated>)
	
   at com.tutorialspoint.MainApp.main(MainApp.java:15)
```

[Previous Page](../springaop/springaop_after_returning.md) [Next Page](../springaop/springaop_around_aspect.md) 
