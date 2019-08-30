# Spring Boot - Enabling HTTPS
By default, Spring Boot application uses HTTP 8080 port when the application starts up.

![Started Application on Tomcat port_8080](../spring_boot/images/started_application_on_tomcat_port_8080.jpg)

You need to follow the steps given below to configure the HTTPS and the port 443 in Spring Boot application −

   * Obtain the SSL certificate – Create a self-signed certificate or get one from a Certificate Authority
   * Enable HTTPS and 443 port

## Self-Signed Certificate
To create a self-signed certificate, Java Run Time environment comes bundled with certificate management utility key tool. This utility tool is used to create a Self-Signed certificate. It is shown in the code given here −

```
keytool -genkey -alias tomcat -storetype PKCS12 -keyalg RSA -keysize 2048 -keystore keystore.p12 -validity 3650
Enter keystore password:
   Re-enter new password:
   What is your first and last name?
   [Unknown]:
   What is the name of your organizational unit?
   [Unknown]:
   What is the name of your organization?
   [Unknown]:
   What is the name of your City or Locality?
   [Unknown]:
   What is the name of your State or Province?
   [Unknown]:
   What is the two-letter country code for this unit?
   [Unknown]:
   Is CN = Unknown, OU=Unknown, O = Unknown, L = Unknown, ST = Unknown, C = Unknown correct?
   [no]: yes
```
This code will generate a PKCS12 keystore file named as keystore.p12 and the certificate alias name is tomcat.

## Configure HTTPS
We need to provide the server port as 443, key-store file path, key-store-password, key-store-type and key alias name into the application.properties file. Observe the code given here −

```
server.port: 443
server.ssl.key-store: keystore.p12
server.ssl.key-store-password: springboot
server.ssl.keyStoreType: PKCS12
server.ssl.keyAlias: tomcat
```
You can use the following code if you are using YAML properties use below application.yml −

```
server:
   port: 443
   ssl:
      key-store: keystore.p12
      key-store-password: springboot
      keyStoreType: PKCS12
      keyAlias: tomcat
```
You can create an executable JAR file, and run the spring boot application by using the following Maven or Gradle commands.

For Maven, you can use the following command −

```
mvn clean install
```
After “BUILD SUCCESS”, you can find the JAR file under the target directory.

For Gradle, you can use the command

```
gradle clean build
```
After “BUILD SUCCESSFUL”, you can find the JAR file under the build/libs directory.

Now, run the JAR file by using the following command −

```
java –jar <JARFILE>
```
Now, the application has started on the Tomcat port 443 with https as shown −

![Started Application on Tomcat Port 443](../spring_boot/images/started_application_on_tomcat_port_443.jpg)


[Previous Page](../spring_boot/spring_boot_scheduling.md) [Next Page](../spring_boot/spring_boot_eureka_server.md) 
