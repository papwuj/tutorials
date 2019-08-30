# Consuming RESTful Web Services
This chapter will discuss in detail about consuming a RESTful Web Services by using jQuery AJAX.

Create a simple Spring Boot web application and write a controller class files which is used to redirects into the HTML file to consumes the RESTful web services.

We need to add the Spring Boot starter Thymeleaf and Web dependency in our build configuration file.

For Maven users, add the below dependencies in your pom.xml file.

```
<dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>

<dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-web</artifactId>
</dependency>
```
For Gradle users, add the below dependencies into your build.gradle file −

```
compile group: ‘org.springframework.boot’, name: ‘spring-boot-starter-thymeleaf’
compile(‘org.springframework.boot:spring-boot-starter-web’)
```
The code for @Controller class file is given below −

```
@Controller
public class ViewController {
}
```
You can define the Request URI methods to redirects into the HTML file as shown below −

```
@RequestMapping(“/view-products”)
public String viewProducts() {
   return “view-products”;
}
@RequestMapping(“/add-products”)
public String addProducts() {
   return “add-products”;
}
```
This API **http://localhost:9090/products** should return the below JSON in response as shown below −

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
Now, create a view-products.html file under the templates directory in the classpath.

In the HTML file, we added the jQuery library and written the code to consume the RESTful web service on page load.

```
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
   $.getJSON("http://localhost:9090/products", function(result){
      $.each(result, function(key,value) {
         $("#productsJson").append(value.id+" "+value.name+" ");
      }); 
   });
});
</script>
```
The POST method and this URL **http://localhost:9090/products** should contains the below Request Body and Response body.

The code for Request body is given below −

```
{
   "id":"3",
   "name":"Ginger"
}
```
The code for Response body is given below −

```
Product is created successfully
```
Now, create the add-products.html file under the templates directory in the classpath.

In the HTML file, we added the jQuery library and written the code that submits the form to RESTful web service on clicking the button.

```
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
   $(document).ready(function() {
      $("button").click(function() {
         var productmodel = {
            id : "3",
            name : "Ginger"
         };
         var requestJSON = JSON.stringify(productmodel);
         $.ajax({
            type : "POST",
            url : "http://localhost:9090/products",
            headers : {
               "Content-Type" : "application/json"
            },
            data : requestJSON,
            success : function(data) {
               alert(data);
            },
            error : function(data) {
            }
         });
      });
   });
</script>
```
The complete code is given below.

Maven – pom.xml file

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
      <relativePath />
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

      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter-thymeleaf</artifactId>
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
The code for Gradle – build.gradle is given below −

```
buildscript {
   ext {
      springBootVersion = ‘1.5.8.RELEASE’
   }
   repositories {
      mavenCentral()
   }
   dependencies {
      classpath("org.springframework.boot:spring-boot-gradle-plugin:${springBootVersion}")
   }
}

apply plugin: ‘java’
apply plugin: ‘eclipse’
apply plugin: ‘org.springframework.boot’

group = ‘com.tutorialspoint’
version = ‘0.0.1-SNAPSHOT’
sourceCompatibility = 1.8

repositories {
   mavenCentral()
}

dependencies {
   compile(‘org.springframework.boot:spring-boot-starter-web’)
   compile group: ‘org.springframework.boot’, name: ‘spring-boot-starter-thymeleaf’
   testCompile(‘org.springframework.boot:spring-boot-starter-test’)
}
```
The controller class file given below – ViewController.java is given below −

```
package com.tutorialspoint.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
   @RequestMapping(“/view-products”)
   public String viewProducts() {
      return “view-products”;
   }
   @RequestMapping(“/add-products”)
   public String addProducts() {
      return “add-products”;   
   }   
}
```
The view-products.html file is given below −

```
<!DOCTYPE html>
<html>
   <head>
      <meta charset = "ISO-8859-1"/>
      <title>View Products</title>
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      
      <script>
         $(document).ready(function(){
            $.getJSON("http://localhost:9090/products", function(result){
               $.each(result, function(key,value) {
                  $("#productsJson").append(value.id+" "+value.name+" ");
               }); 
            });
         });
      </script>
   </head>
   
   <body>
      <div id = "productsJson"> </div>
   </body>
</html>
```
The add-products.html file is given below −

```
<!DOCTYPE html>
<html>
   <head>
      <meta charset = "ISO-8859-1" />
      <title>Add Products</title>
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      
      <script>
         $(document).ready(function() {
            $("button").click(function() {
               var productmodel = {
                  id : "3",
                  name : "Ginger"
               };
               var requestJSON = JSON.stringify(productmodel);
               $.ajax({
                  type : "POST",
                  url : "http://localhost:9090/products",
                  headers : {
                     "Content-Type" : "application/json"
                  },
                  data : requestJSON,
                  success : function(data) {
                     alert(data);
                  },
                  error : function(data) {
                  }
               });
            });
         });
      </script>
   </head>
   
   <body>
      <button>Click here to submit the form</button>
   </body>
</html>
```
The main Spring Boot Application class file is given below −

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
Now, you can create an executable JAR file, and run the Spring Boot application by using the following Maven or Gradle commands.

For Maven, use the command as given below −

```
mvn clean install
```
After “BUILD SUCCESS”, you can find the JAR file under the target directory.

For Gradle, use the command as given below −

```
gradle clean build
```
After “BUILD SUCCESSFUL”, you can find the JAR file under the build/libs directory.

Run the JAR file by using the following command −

```
java –jar <JARFILE>
```
Now, the application has started on the Tomcat port 8080.

![Started Application on Tomcat Port_8080](../spring_boot/images/started_application_on_tomcat_port_8080.jpg)

Now hit the URL in your web browser and you can see the output as shown −

http://localhost:8080/view-products 

![1Honey_2Almond](../spring_boot/images/1honey_2almond.jpg)

http://localhost:8080/add-products 

![Submit Form Spring Boot](../spring_boot/images/submit_form_spring_boot.jpg)

Now, click the button **Click here to submit the form** and you can see the result as shown −

![Submit Form Spring Boot Output Window](../spring_boot/images/submit_form_spring_boot_output_window.jpg)

Now, hit the view products URL and see the created product.

**http://localhost:8080/view-products**

![1Honey 2Almond 3Ginger](../spring_boot/images/1honey_2almond_3ginger.jpg)

## Angular JS
To consume the APIs by using Angular JS, you can use the examples given below −

Use the following code to create the Angular JS Controller to consume the GET API - **http://localhost:9090/products** −

```
angular.module('demo', [])
.controller('Hello', function($scope, $http) {
   $http.get('http://localhost:9090/products').
   then(function(response) {
      $scope.products = response.data;
   });
});
```
Use the following code to create the Angular JS Controller to consume the POST API - **http://localhost:9090/products** −

```
angular.module('demo', [])
.controller('Hello', function($scope, $http) {
   $http.post('http://localhost:9090/products',data).
   then(function(response) {
      console.log("Product created successfully");
   });
});
```
**Note** − The Post method data represents the Request body in JSON format to create a product.


[Previous Page](../spring_boot/spring_boot_thymeleaf.md) [Next Page](../spring_boot/spring_boot_cors_support.md) 
