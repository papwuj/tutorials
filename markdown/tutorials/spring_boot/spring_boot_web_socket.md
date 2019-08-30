# Spring Boot - Web Socket
In this chapter, let us understand how to build an interactive web application by using Spring Boot with Web sockets.

To build an interactive web application in Spring Boot with Web socket, you need to add the following dependencies.

Maven users should add the following dependencies in the pom.xml file.

```
<dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-websocket</artifactId>
</dependency>
<dependency>
   <groupId>org.webjars</groupId>
   <artifactId>webjars-locator</artifactId>
</dependency>
<dependency>
   <groupId>org.webjars</groupId>
   <artifactId>sockjs-client</artifactId>
   <version>1.0.2</version>
</dependency>

<dependency>
   <groupId>org.webjars</groupId>
   <artifactId>stomp-websocket</artifactId>
   <version>2.3.3</version>
</dependency>
<dependency>
   <groupId>org.webjars</groupId>
   <artifactId>bootstrap</artifactId>
   <version>3.3.7</version>        </dependency>
<dependency>
   <groupId>org.webjars</groupId>
   <artifactId>jquery</artifactId>
   <version>3.1.0</version>
</dependency>
```
Gradle users can add the following dependencies in your build.gradle file −

```
compile("org.springframework.boot:spring-boot-starter-websocket")
compile("org.webjars:webjars-locator")
compile("org.webjars:sockjs-client:1.0.2")
compile("org.webjars:stomp-websocket:2.3.3")
compile("org.webjars:bootstrap:3.3.7")
compile("org.webjars:jquery:3.1.0")
```
Let us create a Message handling controller to work with STOMP messaging. STOMP messages can be routed to @Controller class file. For example, GreetingController is mapped to handle the messages to destination “/hello”.

```
package com.tutorialspoint.websocketapp;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class GreetingController {
   @MessageMapping("/hello")
   @SendTo("/topic/greetings")
   public Greeting greeting(HelloMessage message) throws Exception {
      Thread.sleep(1000); // simulated delay
      return new Greeting("Hello, " + message.getName() + "!");
   }
}
```
Now, configure Spring for STOMP messaging. Write a WebSocketConfig class file that extends the AbstractWebSocketMessageBrokerConfigurer class as shown below.

```
package com.tutorialspoint.websocketapp;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig extends AbstractWebSocketMessageBrokerConfigurer {
   @Override
   public void configureMessageBroker(MessageBrokerRegistry config) {
      config.enableSimpleBroker("/topic");
      config.setApplicationDestinationPrefixes("/app");
   }
   @Override
   public void registerStompEndpoints(StompEndpointRegistry registry) {
      registry.addEndpoint("/tutorialspoint-websocket").withSockJS();
   }
}
```
The @EnableWebSocketMessageBroker annotation is used to configure the Web socket message broker to create STOMP endpoints.

You can create a browser client file under the src/main/resources/static/index.html as shown −

```
<!DOCTYPE html>
<html>
   <head>
      <title>Hello WebSocket</title>
      <link href = "/webjars/bootstrap/css/bootstrap.min.css" rel = "stylesheet">
      <link href = "/main.css" rel = "stylesheet">
      <script src = "/webjars/jquery/jquery.min.js"></script>
      <script src = "/webjars/sockjs-client/sockjs.min.js"></script>
      <script src = "/webjars/stomp-websocket/stomp.min.js"></script>
      <script src = "/app.js"></script>
   </head>
   
   <body>
      <noscript>
         <h2 style = "color: #ff0000">
            Seems your browser doesn't support Javascript! Websocket relies on Javascript being
            enabled. Please enable Javascript and reload this page!
         </h2>
      </noscript>
      <div id = "main-content" class = "container">
         <div class = "row">
            <div class = "col-md-6">
               <form class = "form-inline">
                  <div class = "form-group">
                     <label for = "connect">WebSocket connection:</label>
                     <button id = "connect" class = "btn btn-default" type = "submit">Connect</button>
                     <button id = "disconnect" class = "btn btn-default" type = "submit" disabled = "disabled">Disconnect
                     </button>
                  </div>
               </form>
            </div>
            
            <div class = "col-md-6">
               <form class = "form-inline">
                  <div class = "form-group">
                     <label for = "name">What is your name?</label>
                     <input type = "text" id = "name" class = "form-control" placeholder = "Your name here...">
                  </div>
                  <button id = "send" class = "btn btn-default" type = "submit">Send</button>
               </form>
            </div>
         </div>
         
         <div class  =  "row">
            <div class  =  "col-md-12">
               <table id  =  "conversation" class = "table table-striped">
                  <thead>
                     <tr>
                        <th>Greetings</th>
                     </tr>
                  </thead>
                  <tbody id  =  "greetings"></tbody>
               </table>
            </div>
         </div>
      </div>
   </body>
</html>
```
Let us create an app.js file to consume and produce the messages by using STOMP.

```
var stompClient = null;

function setConnected(connected) {
   $("#connect").prop("disabled", connected);
   $("#disconnect").prop("disabled", !connected);
   
   if (connected) {
      $("#conversation").show();
   } else {
      $("#conversation").hide();
   }
   $("#greetings").html("");
}

function connect() {
   var socket = new SockJS('/tutorialspoint-websocket');
   stompClient = Stomp.over(socket);
   stompClient.connect({}, function (frame) {
      setConnected(true);
      console.log('Connected: ' + frame);
      stompClient.subscribe('/topic/greetings', function (greeting) {
         showGreeting(JSON.parse(greeting.body).content);
      });
   });
}
function disconnect() {
   if (stompClient !== null) {
      stompClient.disconnect();
   }
   setConnected(false);
   console.log("Disconnected");
}
function sendName() {
   stompClient.send("/app/hello", {}, JSON.stringify({'name': $("#name").val()}));
}
function showGreeting(message) {
   $("#greetings").append("<tr><td>" + message + "</td></tr>");
}
$(function () {
   $( "form" ).on('submit', function (e) {e.preventDefault();});
   $( "#connect" ).click(function() { connect(); });
   $( "#disconnect" ).click(function() { disconnect(); });
   $( "#send" ).click(function() { sendName(); });
});
```
The code for main Spring Boot application is shown below.

```
package com.tutorialspoint.websocketapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WebsocketappApplication {
   public static void main(String[] args) {
      SpringApplication.run(WebsocketappApplication.class, args);
   }  
}
```
The complete build configuration file is given below.

**Maven – pom.xml**

```
<?xml version = "1.0" encoding = "UTF-8"?>
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.tutorialspoint</groupId>
   <artifactId>websocketapp</artifactId>
   <version>0.0.1-SNAPSHOT</version>
   <packaging>jar</packaging>
   <name>websocketapp</name>
   <description>Demo project for Spring Boot</description>

   <parent>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-parent</artifactId>
      <version>1.5.9.RELEASE</version>
   </parent>

   <dependencies>
      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter-websocket</artifactId>
      </dependency>
      <dependency>
         <groupId>org.webjars</groupId>
         <artifactId>webjars-locator</artifactId>
      </dependency>
      <dependency>
         <groupId>org.webjars</groupId>
         <artifactId>sockjs-client</artifactId>
         <version>1.0.2</version>
      </dependency>
      
      <dependency>
         <groupId>org.webjars</groupId>
         <artifactId>stomp-websocket</artifactId>
         <version>2.3.3</version>
      </dependency>
      <dependency>
         <groupId>org.webjars</groupId>
         <artifactId>bootstrap</artifactId>
         <version>3.3.7</version>
      </dependency>
      
      <dependency>
         <groupId>org.webjars</groupId>
         <artifactId>jquery</artifactId>
         <version>3.1.0</version>
      </dependency>
      <dependency>
         <groupId>org.springframework.boot</groupId>
         <artifactId>spring-boot-starter-test</artifactId>
         <scope>test</scope>
      </dependency>
   </dependencies>
   
   <properties>
      <java.version>1.8</java.version>
   </properties>
   
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
**Gradle – build.gradle**

```
buildscript {
   repositories {
      mavenCentral()
   }
   dependencies {
      classpath("org.springframework.boot:spring-boot-gradle-plugin:1.5.9.RELEASE")
   }
}
apply plugin: 'java'
apply plugin: 'eclipse'
apply plugin: 'org.springframework.boot'

jar {
   baseName = 'websocketapp'
   version =  '0.1.0'
}
sourceCompatibility = 1.8
targetCompatibility = 1.8

repositories {
   mavenCentral()
}
dependencies {
   compile("org.springframework.boot:spring-boot-starter-websocket")
   compile("org.webjars:webjars-locator")
   compile("org.webjars:sockjs-client:1.0.2")
   compile("org.webjars:stomp-websocket:2.3.3")
   compile("org.webjars:bootstrap:3.3.7")
   compile("org.webjars:jquery:3.1.0")

   testCompile("org.springframework.boot:spring-boot-starter-test")
}
```

[Previous Page](../spring_boot/spring_boot_hystrix.md) [Next Page](../spring_boot/spring_boot_batch_service.md) 
