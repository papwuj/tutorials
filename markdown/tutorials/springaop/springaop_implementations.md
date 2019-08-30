# Spring AOP - Implementations
Spring supports the **@AspectJ annotation style** approach and the **schema-based** approach to implement custom aspects.

## XML Schema Based
Aspects are implemented using regular classes along with XML based configuration.

To use the AOP namespace tags described in this section, you need to import the spring AOP schema, described as follows −

```
<?xml version = "1.0" encoding = "UTF-8"?>
<beans xmlns = "http://www.springframework.org/schema/beans"
   
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance" 
   xmlns:aop = "http://www.springframework.org/schema/aop"
   xsi:schemaLocation = "http://www.springframework.org/schema/beans
   http://www.springframework.org/schema/beans/spring-beans-3.0.xsd 
   http://www.springframework.org/schema/aop 
   http://www.springframework.org/schema/aop/spring-aop-3.0.xsd ">

   <!-- bean definition & AOP specific configuration -->

</beans>
```
## Declaring an Aspect
An **aspect** is declared using the **<aop:aspect>** element, and the backing bean is referenced using the **ref** attribute as follows.

```
<aop:config>
   <aop:aspect id = "myAspect" ref = "aBean">
   ...
   </aop:aspect>
</aop:config>

<bean id = "aBean" class = "...">
   ...
</bean>
```
Here "aBean" will be configured and dependency injected just like any other Spring bean as you have seen in the previous chapters.

## Declaring a PointCut
A **PointCut** helps in determining the join points (i.e. methods) of interest to be executed with different advices. While working with XML Schema based configuration, PointCut will be defined as follows −

```
<aop:config>
   <aop:aspect id = "myAspect" ref = "aBean">

   <aop:PointCut id = "businessService"
      expression = "execution(* com.xyz.myapp.service.*.*(..))"/>
      ...
   </aop:aspect>
</aop:config>

<bean id = "aBean" class = "...">
   ...
</bean>
```
The following example defines a PointCut named 'businessService' that will match the execution of getName() method available in Student class under the package com.tutorialspoint.

```
<aop:config>
   <aop:aspect id = "myAspect" ref = "aBean">

   <aop:PointCut id = "businessService"
      expression = "execution(* com.tutorialspoint.Student.getName(..))"/>
   ...
   </aop:aspect>
</aop:config>

<bean id = "aBean" class = "...">
   ...
</bean>
```
## Declaring Advices
You can declare any of the five advices inside an &lt;aop:aspect&gt; using the &lt;aop:{ADVICE NAME}&gt; element as follows.

```
<aop:config>
   <aop:aspect id = "myAspect" ref = "aBean">
      <aop:PointCut id = "businessService"
         expression = "execution(* com.xyz.myapp.service.*.*(..))"/>

      <!-- a before advice definition -->
      <aop:before PointCut-ref = "businessService" 
         method = "doRequiredTask"/>

      <!-- an after advice definition -->
      <aop:after PointCut-ref = "businessService" 
         method = "doRequiredTask"/>

      <!-- an after-returning advice definition -->
      <!--The doRequiredTask method must have parameter named retVal -->
      <aop:after-returning PointCut-ref = "businessService"
         returning = "retVal"
         method = "doRequiredTask"/>

      <!-- an after-throwing advice definition -->
      <!--The doRequiredTask method must have parameter named ex -->
      <aop:after-throwing PointCut-ref = "businessService"
        throwing = "ex"
         method = "doRequiredTask"/>

      <!-- an around advice definition -->
      <aop:around PointCut-ref = "businessService" 
         method = "doRequiredTask"/>
   ...
   </aop:aspect>
</aop:config>

<bean id = "aBean" class = "...">
   ...
</bean>
```
You can use same **doRequiredTask** or different methods for different advices. These methods will be defined as a part of aspect module.

## @AspectJ based
@AspectJ refers to a style of declaring aspects as regular Java classes annotated with Java 5 annotations. @AspectJ refers to a style of declaring aspects as regular Java classes annotated with Java 5 annotations. The @AspectJ support is enabled by including the following element inside your XML Schema-based configuration file.

```
<aop:aspectj-autoproxy/>
```
## Declaring an Aspect
Aspects classes are like any other normal bean and may have methods and fields just like any other class, except that they will be annotated with @Aspect as follows.

```
package org.xyz;

import org.aspectj.lang.annotation.Aspect;

@Aspect
public class AspectModule {

}
```
They will be configured in XML like any other bean as follows.

```
<bean id = "myAspect" class = "org.xyz.AspectModule">
   <!-- configure properties of aspect here as normal -->
</bean>
```
## Declaring a PointCut
A **PointCut** helps in determining the join points (i.e. methods) of interest to be executed with different advices. While working with @AspectJ based configuration, PointCut declaration has two parts −

   * A PointCut expression that determines exactly which method executions we are interested in.
   * A PointCut signature comprising a name and any number of parameters. The actual body of the method is irrelevant and in fact should be empty.

The following example defines a PointCut named 'businessService' that will match the execution of every method available in the classes under the package com.xyz.myapp.service.

```
import org.aspectj.lang.annotation.PointCut;

@PointCut("execution(* com.xyz.myapp.service.*.*(..))") // expression 
private void businessService() {}  // signature
```
The following example defines a PointCut named 'getname' that will match the execution of getName() method available in Student class under the package com.tutorialspoint.

```
import org.aspectj.lang.annotation.PointCut;

@PointCut("execution(* com.tutorialspoint.Student.getName(..))") 
private void getname() {}
```
## Declaring Advices
You can declare any of the five advices using @{ADVICE-NAME} annotations as given below. This assumes that you already have defined a PointCut signature method businessService().

```
@Before("businessService()")
public void doBeforeTask(){
   ...
}

@After("businessService()")
public void doAfterTask(){
   ...
}

@AfterReturning(PointCut = "businessService()", returning = "retVal")
public void doAfterReturnningTask(Object retVal){
   // you can intercept retVal here.
   ...
}

@AfterThrowing(PointCut = "businessService()", throwing = "ex")
public void doAfterThrowingTask(Exception ex){
   // you can intercept thrown exception here.
   ...
}

@Around("businessService()")
public void doAroundTask(){
   ...
}
```
You can define PointCut inline for any of the advices. Following is an example to define inline PointCut for before advice.

```
@Before("execution(* com.xyz.myapp.service.*.*(..))")
public doBeforeTask(){
   ...
}
```

[Previous Page](../springaop/springaop_advice_types.md) [Next Page](../springaop/springaop_application.md) 
