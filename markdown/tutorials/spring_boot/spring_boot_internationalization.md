# Spring Boot - Internationalization
Internationalization is a process that makes your application adaptable to different languages and regions without engineering changes on the source code. In ither words, Internationalization is a readiness of Localization.

In this chapter, we are going to learn in detail about How to implement the Internationalization in Spring Boot.

## Dependencies
We need the Spring Boot Starter Web and Spring Boot Starter Thymeleaf dependency to develop a web application in Spring Boot.

### Maven
```
<dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-web</artifactId>
</dependency>

<dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-thymeleaf</artifactId>
</dependency>
```
### Gradle
```
compile('org.springframework.boot:spring-boot-starter-web')
compile group: 'org.springframework.boot', name: 'spring-boot-starter-thymeleaf'
```
## LocaleResolver
We need to determine default Locale of your application. We need to add the LocaleResolver bean in our Spring Boot application.

```
@Bean
public LocaleResolver localeResolver() {
   SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
   sessionLocaleResolver.setDefaultLocale(Locale.US);
   return sessionLocaleResolver;
}
```
## LocaleChangeInterceptor
LocaleChangeInterceptor is a used to change the new Locale based on the value of the language parameter added to a request.

```
@Bean
public LocaleChangeInterceptor localeChangeInterceptor() {
   LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor();
   localeChangeInterceptor.setParamName("language");
   return localeChangeInterceptor;
}
```
To take this effect, we need to add the LocaleChangeInterceptor into the application’s registry interceptor. The configuration class should extend the WebMvcConfigurerAdapter class and override the addInterceptors() method.

```
@Override
public void addInterceptors(InterceptorRegistry registry) {
   registry.addInterceptor(localeChangeInterceptor());
}
```
## Messages Sources
Spring Boot application by default takes the message sources from **src/main/resources** folder under the classpath. The default locale message file name should be **message.properties** and files for each locale should name as **messages_XX.properties**. The “XX” represents the locale code.

All the message properties should be used as key pair values. If any properties are not found on the locale, the application uses the default property from messages.properties file.

The default messages.properties will be as shown −

```
welcome.text=Hi Welcome to Everyone
```
The French language messages_fr.properties will be as shown −

```
welcome.text=Salut Bienvenue à tous
```
**Note** − Messages source file should be saved as “UTF-8” file format.

## HTML file
In the HTML file, use the syntax **#{key}** to display the messages from the properties file.

```
<h1 th:text = "#{welcome.text}"></h1>
```
The complete code is given below

### Maven – pom.xml
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
### Gradle – build.gradle
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
   compile group: 'org.springframework.boot', name: 'spring-boot-starter-thymeleaf'
   testCompile('org.springframework.boot:spring-boot-starter-test')
}
```
The main Spring Boot application class file is given below −

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
The controller class file is given below −

```
package com.tutorialspoint.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
   @RequestMapping("/locale")
   public String locale() {
      return "locale";
   }
}
```
Configuration class to support the Internationalization

```
package com.tutorialspoint.demo;

import java.util.Locale;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Configuration
public class Internationalization extends WebMvcConfigurerAdapter {
   @Bean
   public LocaleResolver localeResolver() {
      SessionLocaleResolver sessionLocaleResolver = new SessionLocaleResolver();
      sessionLocaleResolver.setDefaultLocale(Locale.US);
      return sessionLocaleResolver;
   }
   @Bean
   public LocaleChangeInterceptor localeChangeInterceptor() {
      LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor();
      localeChangeInterceptor.setParamName("language");
      return localeChangeInterceptor;
   }
   @Override
   public void addInterceptors(InterceptorRegistry registry) {
      registry.addInterceptor(localeChangeInterceptor());
   }
}
```
The Message sources – messages.properties is as shown −

```
welcome.text = Hi Welcome to Everyone
```
The Message sources – message_fr.properties is as shown −

```
welcome.text = Salut Bienvenue à tous
```
The HTML file locale.html should be placed under the templates directory on the classpath as shown −

```
<!DOCTYPE html>
<html>
   <head>
      <meta charset = "ISO-8859-1"/>
      <title>Internationalization</title>
   </head>
   <body>
      <h1 th:text = "#{welcome.text}"></h1>
   </body>
</html>
```
You can create an executable JAR file, and run the Spring boot application by using the following Maven or Gradle commands −

For Maven, use the following command −

```
mvn clean install
```
After “BUILD SUCCESS”, you can find the JAR file under the target directory.

For Gradle, use the following command −

```
gradle clean build
```
After “BUILD SUCCESSFUL”, you can find the JAR file under the build/libs directory.

Now, run the JAR file by using the command as shown −

```
java –jar <JARFILE>
```
You will find that the application has started on the Tomcat port 8080.

![Started Application on Tomcat Port_8080](../spring_boot/images/started_application_on_tomcat_port_8080.jpg)

Now hit the URL **http://localhost:8080/locale** in your web browser and you can see the following output −

![Output Web Browser](../spring_boot/images/output_web_browser.jpg)

The URL **http://localhost:8080/locale?language=fr** will give you the output as shown −

![Output Web Browser Salut Bienvenue](../spring_boot/images/output_web_browser_salut_bienvenue.jpg)


[Previous Page](../spring_boot/spring_boot_cors_support.md) [Next Page](../spring_boot/spring_boot_scheduling.md) 
