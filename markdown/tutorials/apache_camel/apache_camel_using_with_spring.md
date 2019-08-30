# Apache Camel - Using with Spring
We will now recreate the application from the previous chapter using Spring. This will give us an idea of how to create Camel routing in XML rather than a DSL.

## Creating New Project
Create a new **Maven** project and specify the following −

```
GroupId: BasketWithSpring
ArtifactId: BasketWithSpring
```
Select the default location for your project or if you prefer specify the directory of your choice.

## Adding Dependencies
In addition to the core dependencies that you used in the earlier application, you need to add few more dependencies to use Spring. The dependencies are added in pom.xml. Now, open pom.xml and add the following dependencies −

```
<dependencies>
   ...
   <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-context</artifactId>
      <version>5.1.3.RELEASE</version>
   </dependency>
   
   <dependency>
      <groupId>org.apache.activemq</groupId>
      <artifactId>activemq-pool</artifactId>
      <version>5.15.2</version>
   </dependency>
   
   <dependency>
      <groupId>org.apache.activemq</groupId>
      <artifactId>activemq-pool</artifactId>
      <version>5.15.1</version>
   </dependency>
   
   <dependency>
      <groupId>org.apache.camel</groupId>
      <artifactId>camel-spring</artifactId>
      <version>2.15.1</version>
   </dependency>
</dependencies>
```
## Creating Java DSL for Spring
Let us now create a new Java class called **DistributeOrderXML**. Add the following code to it −

```
public class DistributeOrderXML {
   public static void main(String[] args) throws Exception {
      ApplicationContext appContext = new ClassPathXmlApplicationContext(
         "SpringRouteContext.xml");
      CamelContext camelContext = SpringCamelContext.springCamelContext(appContext, false);
      try {
         camelContext.start();
         ProducerTemplate orderProducerTemplate = camelContext.createProducerTemplate();
         InputStream orderInputStream = new FileInputStream(ClassLoader.getSystemClassLoader()
            .getResource("order.xml").getFile());
         
         orderProducerTemplate.sendBody("direct:DistributeOrderXML", orderInputStream);
      } finally {
         camelContext.stop();
      }
   }
}
```
In the **main** method, first we create an instance of **ApplicationContext**, which is the central interface within a Spring application. In its constructor, we specify the name of the XML file that contains our routing and filtering information.

```
ApplicationContext appContext = new ClassPathXmlApplicationContext(
   "SpringRouteContext.xml");
```
Next, we create **CamelContext** specifying the above created **ApplicationContext** in its parameter.

```
CamelContext camelContext = SpringCamelContext.springCamelContext(appContext, false);
```
At this point, our routing and filtering is set up. Therefore, we start the **CamelContext** using its **start** method. As in the earlier case, we define the Endpoint for loading the order.xml file and start the processing. Now, let us understand how routing is defined in XML.

## Creating Application Context
Add a new XML file to the project and call it **SpringRouteContext.xml.** Cut-n-paste the following contents to this file.

```
<?xml version = "1.0" encoding = "UTF-8"?>
<beans xmlns = "http://www.springframework.org/schema/beans"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "
      http://www.springframework.org/schema/beans
      http://www.springframework.org/schema/beans/spring-beans.xsd
      http://camel.apache.org/schema/spring
      http://camel.apache.org/schema/spring/camel-spring.xsd ">
   <camelContext xmlns = "http://camel.apache.org/schema/spring">
      <route>
         <from uri = "direct:DistributeOrderXML"/>
         <log message = "Split by Distribute Order"/>
         <split>
            <xpath>//order[@product = 'Oil']/items</xpath>
            <to uri = "file:src/main/resources/order/"/>
            <to uri = "stream:out"/>
         </split>
      </route>
   </camelContext>
</beans>
```
Here, we define the xpath query as follows, note that we now select all orders for “oil”.

```
<xpath>//order[@product = 'Oil']/items</xpath>
```
The output Endpoints are multiple. The first endpoint specifies the **order** folder and the second one specifies the console.

```
<to uri = "file:src/main/resources/order/"/>
<to uri = "stream:out"/>
```
Run the application.

## Test Results
When you run the application, you will see the following output on screen.

```
<items>
   <item>
      <Brand>Cinthol</Brand>
      <Type>Original</Type>
      <Quantity>4</Quantity>
      <Price>25</Price>
   </item>
   <item>
      <Brand>Cinthol</Brand>
      <Type>Lime</Type>
      <Quantity>6</Quantity>
      <Price>30</Price>
   </item>
</items>
```
Check out the **order** folder in the path specified by you. You will find a newly created file that contains the above XML code.

## Conclusion
Camel provides a ready-to-use framework that implements EIPs to ease your integration projects. It supports coding in domain-specific languages and also the use of XML.


[Previous Page](../apache_camel/apache_camel_project.md) [Next Page](../apache_camel/apache_camel_quick_guide.md) 
