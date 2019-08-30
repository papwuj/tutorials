# Spring Boot - Rest Template
Rest Template is used to create applications that consume RESTful Web Services. You can use the **exchange()** method to consume the web services for all HTTP methods. The code given below shows how to create Bean for Rest Template to auto wiring the Rest Template object.

```
package com.tutorialspoint.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class DemoApplication {
   public static void main(String[] args) {
      SpringApplication.run(DemoApplication.class, args);
   }
   @Bean
   public RestTemplate getRestTemplate() {
      return new RestTemplate();
   }
}
```
## GET
**Consuming the GET API by using RestTemplate - exchange() method**

Assume this URL **http://localhost:8080/products** returns the following JSON and we are going to consume this API response by using Rest Template using the following code −

```
[
   {
      "id": "1",
      "name": "Honey"
   },
   {
      "id": "2",
      "name": "Almond"
   }
]
```
You will have to follow the given points to consume the API −

   * Autowired the Rest Template Object.
   * Use HttpHeaders to set the Request Headers.
   * Use HttpEntity to wrap the request object.
   * Provide the URL, HttpMethod, and Return type for Exchange() method.

```
@RestController
public class ConsumeWebService {
   @Autowired
   RestTemplate restTemplate;

   @RequestMapping(value = "/template/products")
   public String getProductList() {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity <String> entity = new HttpEntity<String>(headers);
      
      return restTemplate.exchange("
         http://localhost:8080/products", HttpMethod.GET, entity, String.class).getBody();
   }
}
```
## POST
**Consuming POST API by using RestTemplate - exchange() method**

Assume this URL **http://localhost:8080/products** returns the response shown below, we are going to consume this API response by using the Rest Template.

The code given below is the Request body −

```
{
   "id":"3",
   "name":"Ginger"
}
```
The code given below is the Response body −

```
Product is created successfully
```
You will have to follow the points given below to consume the API −

   * Autowired the Rest Template Object.
   * Use the HttpHeaders to set the Request Headers.
   * Use the HttpEntity to wrap the request object. Here, we wrap the Product object to send it to the request body.
   * Provide the URL, HttpMethod, and Return type for exchange() method.

```
@RestController
public class ConsumeWebService {
   @Autowired
   RestTemplate restTemplate;

   @RequestMapping(value = "/template/products", method = RequestMethod.POST)
   public String createProducts(@RequestBody Product product) {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity<Product> entity = new HttpEntity<Product>(product,headers);
      
      return restTemplate.exchange(
         "http://localhost:8080/products", HttpMethod.POST, entity, String.class).getBody();
   }
}
```
## PUT
**Consuming PUT API by using RestTemplate - exchange() method**

Assume this URL **http://localhost:8080/products/3** returns the below response and we are going to consume this API response by using Rest Template.

The code given below is Request body −

```
{
   "name":"Indian Ginger"
}
```
The code given below is the Response body −

```
Product is updated successfully
```
You will have to follow the points given below to consume the API −

   * Autowired the Rest Template Object.
   * Use HttpHeaders to set the Request Headers.
   * Use HttpEntity to wrap the request object. Here, we wrap the Product object to send it to the request body.
   * Provide the URL, HttpMethod, and Return type for exchange() method.

```
@RestController
public class ConsumeWebService {
   @Autowired
   RestTemplate restTemplate;

   @RequestMapping(value = "/template/products/{id}", method = RequestMethod.PUT)
   public String updateProduct(@PathVariable("id") String id, @RequestBody Product product) {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity<Product> entity = new HttpEntity<Product>(product,headers);
      
      return restTemplate.exchange(
         "http://localhost:8080/products/"+id, HttpMethod.PUT, entity, String.class).getBody();
   }
}
```
## DELETE
**Consuming DELETE API by using RestTemplate - exchange() method**

Assume this URL **http://localhost:8080/products/3** returns the response given below and we are going to consume this API response by using Rest Template.

This line of code shown below is the Response body −

```
Product is deleted successfully
```
You will have to follow the points shown below to consume the API −

   * Autowired the Rest Template Object.
   * Use HttpHeaders to set the Request Headers.
   * Use HttpEntity to wrap the request object.
   * Provide the URL, HttpMethod, and Return type for exchange() method.

```
@RestController
public class ConsumeWebService {
   @Autowired
   RestTemplate restTemplate;

   @RequestMapping(value = "/template/products/{id}", method = RequestMethod.DELETE)
   public String deleteProduct(@PathVariable("id") String id) {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity<Product> entity = new HttpEntity<Product>(headers);
      
      return restTemplate.exchange(
         "http://localhost:8080/products/"+id, HttpMethod.DELETE, entity, String.class).getBody();
   }
}
```
The complete Rest Template Controller class file is given below −

```
package com.tutorialspoint.demo.controller;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.tutorialspoint.demo.model.Product;

@RestController
public class ConsumeWebService {
   @Autowired
   RestTemplate restTemplate;

   @RequestMapping(value = "/template/products")
   public String getProductList() {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity<String> entity = new HttpEntity<String>(headers);
      
      return restTemplate.exchange(
         "http://localhost:8080/products", HttpMethod.GET, entity, String.class).getBody();
   }
   @RequestMapping(value = "/template/products", method = RequestMethod.POST)
   public String createProducts(@RequestBody Product product) {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity<Product> entity = new HttpEntity<Product>(product,headers);
      
      return restTemplate.exchange(
         "http://localhost:8080/products", HttpMethod.POST, entity, String.class).getBody();
   }
   @RequestMapping(value = "/template/products/{id}", method = RequestMethod.PUT)
   public String updateProduct(@PathVariable("id") String id, @RequestBody Product product) {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity<Product> entity = new HttpEntity<Product>(product,headers);
      
      return restTemplate.exchange(
         "http://localhost:8080/products/"+id, HttpMethod.PUT, entity, String.class).getBody();
   }
   @RequestMapping(value = "/template/products/{id}", method = RequestMethod.DELETE)
   public String deleteProduct(@PathVariable("id") String id) {
      HttpHeaders headers = new HttpHeaders();
      headers.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
      HttpEntity<Product> entity = new HttpEntity<Product>(headers);
      
      return restTemplate.exchange(
         "http://localhost:8080/products/"+id, HttpMethod.DELETE, entity, String.class).getBody();
   }
}
```
The code for Spring Boot Application Class – DemoApplication.java is given below −

```
package com.tutorialspoint.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {
   public static void main(String[] args) {
      SpringApplication.run(DemoApplication.class, args);
   }
}
```
The code for Maven build – pom.xml is given below −

```
<?xml version = "1.0" encoding = "UTF-8"?>
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.tutorialspoint</groupId>
   <artifactId>demo</artifactId>
   <version>0.0.1-SNAPSHOT</version>
   <packaging>jar</packaging>
   <name>demo</name>
   <description>Demo project for Spring Boot</description>

   <parent>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-parent</artifactId>
      <version>1.5.8.RELEASE</version>
      <relativePath/> 
   </parent>

   <properties>
      <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
      <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
      <java.version>1.8</java.version>
   </properties>

   <dependencies>
      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter-web</artifactId>
      </dependency>

      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter-test</artifactId>
         <scope>test</scope>
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
The code for Gradle Build – build.gradle is given below −

```
buildscript {
   ext {
      springBootVersion = '1.5.8.RELEASE'
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
   compile('org.springframework.boot:spring-boot-starter-web')
   testCompile('org.springframework.boot:spring-boot-starter-test')
}
```
You can create an executable JAR file, and run the Spring Boot application by using the following Maven or Gradle commands −

For Maven, you can use the command given below −

```
mvn clean install
```
After “BUILD SUCCESS”, you can find the JAR file under the target directory.

For Gradle, you can use the command shown below −

```
gradle clean build
```
After “BUILD SUCCESSFUL”, you can find the JAR file under build/libs directory.

Now, run the JAR file by using the following command −

```
java –jar <JARFILE>
```
Now, the application has started on the Tomcat port 8080.

![Started Application on Tomcat Port_8080](../spring_boot/images/started_application_on_tomcat_port_8080.jpg)

Now hit the below URL’s in POSTMAN application and you can see the output.

GET Products by Rest Template − **http://localhost:8080/template/products**

![GET Products by Rest Template](../spring_boot/images/get_products_by_rest_template.jpg)

Create Products POST − **http://localhost:8080/template/products**

![Create Products POST](../spring_boot/images/create_products_post.jpg)

Update Product PUT − **http://localhost:8080/template/products/3**

![Update Products POST](../spring_boot/images/update_products_post.jpg)

Delete Product − **http://localhost:8080/template/products/3**

![Delete Products POST](../spring_boot/images/delete_products_post.jpg)


[Previous Page](../spring_boot/spring_boot_tomcat_port_number.md) [Next Page](../spring_boot/spring_boot_file_handling.md) 
