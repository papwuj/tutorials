# Spring Boot - Tomcat Port Number
Spring Boot lets you to run the same application more than once on a different port number. In this chapter, you will learn about this in detail. Note that the default port number 8080.

## Custom Port
In the **application.properties** file, we can set custom port number for the property server.port

```
server.port = 9090
```
In the **application.yml** file, you can find as follows −

```
server: 
   port: 9090
```
## Random Port
In the **application.properties** file, we can set random port number for the property server.port

```
server.port = 0
```
In the **application.yml** file, you can find as follows −

```
server: 
   port: 0
```
**Note** − If the **server.port** number is 0 while starting the Spring Boot application, Tomcat uses the random port number.


[Previous Page](../spring_boot/spring_boot_servlet_filter.md) [Next Page](../spring_boot/spring_boot_rest_template.md) 
