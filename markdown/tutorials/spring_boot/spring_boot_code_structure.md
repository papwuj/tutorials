# Spring Boot - Code Structure
Spring Boot does not have any code layout to work with. However, there are some best practices that will help us. This chapter talks about them in detail.

## Default package
A class that does not have any package declaration is considered as a **default package**. Note that generally a default package declaration is not recommended. Spring Boot will cause issues such as malfunctioning of Auto Configuration or Component Scan, when you use default package.

**Note** − Java's recommended naming convention for package declaration is reversed domain name. For example − **com.tutorialspoint.myproject**

## Typical Layout
The typical layout of Spring Boot application is shown in the image given below −

![Typical Layout of Spring Boot Application](../spring_boot/images/typical_layout_of_spring_boot_application.jpg)

The Application.java file should declare the main method along with @SpringBootApplication. Observe the code given below for a better understanding −

```
package com.tutorialspoint.myproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {
   public static void main(String[] args) {SpringApplication.run(Application.class, args);}
}
```

[Previous Page](../spring_boot/spring_boot_build_systems.md) [Next Page](../spring_boot/spring_boot_beans_and_dependency_injection.md) 
