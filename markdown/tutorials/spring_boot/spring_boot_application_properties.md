# Spring Boot - Application Properties
Application Properties support us to work in different environments. In this chapter, you are going to learn how to configure and specify the properties to a Spring Boot application.

## Command Line Properties
Spring Boot application converts the command line properties into Spring Boot Environment properties. Command line properties take precedence over the other property sources. By default, Spring Boot uses the 8080 port number to start the Tomcat. Let us learn how change the port number by using command line properties.

**Step 1** − After creating an executable JAR file, run it by using the command **java –jar <JARFILE>**.

**Step 2** − Use the command given in the screenshot given below to change the port number for Spring Boot application by using command line properties.

![Command Line Properties JARFILE](../spring_boot/images/command_line_properties_jarfile.jpg)

**Note** − You can provide more than one application properties by using the delimiter −.

## Properties File
Properties files are used to keep ‘N’ number of properties in a single file to run the application in a different environment. In Spring Boot, properties are kept in the **application.properties** file under the classpath.

The application.properties file is located in the **src/main/resources** directory. The code for sample **application.properties** file is given below −

```
server.port = 9090
spring.application.name = demoservice
```
Note that in the code shown above the Spring Boot application demoservice starts on the port 9090.

## YAML File
Spring Boot supports YAML based properties configurations to run the application. Instead of **application.properties**, we can use **application.yml** file. This YAML file also should be kept inside the classpath. The sample **application.yml** file is given below −

```
spring:
   application:
      name: demoservice
   server:
port: 9090
```
## Externalized Properties
Instead of keeping the properties file under classpath, we can keep the properties in different location or path. While running the JAR file, we can specify the properties file path. You can use the following command to specify the location of properties file while running the JAR −

```
-Dspring.config.location = C:\application.properties
```


![Externalized Properties](../spring_boot/images/externalized_properties.jpg)

## Use of @Value Annotation
The @Value annotation is used to read the environment or application property value in Java code. The syntax to read the property value is shown below −

```
@Value("${property_key_name}")
```
Look at the following example that shows the syntax to read the **spring.application.name** property value in Java variable by using @Value annotation.

```
@Value("${spring.application.name}")
```
Observe the code given below for a better understanding −

```
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoApplication {
   @Value("${spring.application.name}")
   private String name;
   public static void main(String[] args) {
      SpringApplication.run(DemoApplication.class, args);
   }
   @RequestMapping(value = "/")
   public String name() {
      return name;
   }
}
```
**Note** − If the property is not found while running the application, Spring Boot throws the Illegal Argument exception as **Could not resolve placeholder 'spring.application.name' in value "${spring.application.name}"**.

To resolve the placeholder issue, we can set the default value for the property using thr syntax given below −

```
@Value("${property_key_name:default_value}")

@Value("${spring.application.name:demoservice}")
```
## Spring Boot Active Profile
Spring Boot supports different properties based on the Spring active profile. For example, we can keep two separate files for development and production to run the Spring Boot application.

### Spring active profile in application.properties
Let us understand how to have Spring active profile in application.properties. By default, application. properties will be used to run the Spring Boot application. If you want to use profile based properties, we can keep separate properties file for each profile as shown below −

**application.properties**

```
server.port = 8080
spring.application.name = demoservice
```
**application-dev.properties**

```
server.port = 9090
spring.application.name = demoservice
```
**application-prod.properties**

```
server.port = 4431
spring.application.name = demoservice
```
While running the JAR file, we need to specify the spring active profile based on each properties file. By default, Spring Boot application uses the application.properties file. The command to set the spring active profile is shown below −

![Prod.Properties Active Dev](../spring_boot/images/prod_properties_active_dev.jpg)

You can see active profile name on the console log as shown below −

```
2017-11-26 08:13:16.322  INFO 14028 --- [           
   main] com.tutorialspoint.demo.DemoApplication  :
   The following profiles are active: dev
```
Now, Tomcat has started on the port 9090 (http) as shown below −

```
2017-11-26 08:13:20.185  INFO 14028 --- [           
   main] s.b.c.e.t.TomcatEmbeddedServletContainer : 
   Tomcat started on port(s): 9090 (http)
```
You can set the Production active profile as shown below −

![Production Active Profile](../spring_boot/images/production_active_profile.jpg)

You can see active profile name on the console log as shown below −

```
2017-11-26 08:13:16.322  INFO 14028 --- [           
   main] com.tutorialspoint.demo.DemoApplication  :
   The following profiles are active: prod
```
Now, Tomcat started on the port 4431 (http) as shown below −

```
2017-11-26 08:13:20.185  INFO 14028 --- [          
   main] s.b.c.e.t.TomcatEmbeddedServletContainer :
   Tomcat started on port(s): 4431 (http)
```
### Spring active profile for application.yml
Let us understand how to keep Spring active profile for application.yml. We can keep the Spring active profile properties in the single **application.yml** file. No need to use the separate file like application.properties.

The following is an example code to keep the Spring active profiles in application.yml file. Note that the delimiter (---) is used to separate each profile in application.yml file.

```
spring:
   application:
      name: demoservice
server:
   port: 8080

---
spring:
   profiles: dev
   application:
      name: demoservice
server:
   port: 9090

---
spring: 
   profiles: prod
   application:
      name: demoservice
server: 
   port: 4431
```
To command to set development active profile is given below −

![Prod.Properties Active Dev](../spring_boot/images/prod_properties_active_dev.jpg)

You can see active profile name on the console log as shown below −

```
2017-11-26 08:41:37.202  INFO 14104 --- [           
   main] com.tutorialspoint.demo.DemoApplication  : 
   The following profiles are active: dev
```
Now, Tomcat started on the port 9090 (http) as shown below −

```
2017-11-26 08:41:46.650  INFO 14104 --- [           
   main] s.b.c.e.t.TomcatEmbeddedServletContainer : 
   Tomcat started on port(s): 9090 (http)
```
The command to set Production active profile is given below −

![Production Active Profile](../spring_boot/images/production_active_profile.jpg)

You can see active profile name on the console log as shown below −

```
2017-11-26 08:43:10.743  INFO 13400 --- [    
   main] com.tutorialspoint.demo.DemoApplication  : 
   The following profiles are active: prod
```
This will start Tomcat on the port 4431 (http) as shown below:

```
2017-11-26 08:43:14.473  INFO 13400 --- [     
   main] s.b.c.e.t.TomcatEmbeddedServletContainer : 
   Tomcat started on port(s): 4431 (http)
```

[Previous Page](../spring_boot/spring_boot_runners.md) [Next Page](../spring_boot/spring_boot_logging.md) 
