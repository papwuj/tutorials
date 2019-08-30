# Apache Camel - Project
We will use Maven to build a Camel project. Although, we preferable use IntelliJ IDE for development. You may use any IDE of your choice for this project.

## Creating New Project
Create a new **Maven** project and specify the following −

```
GroupId: Basket
ArtifactId: Basket
```
Select the default location for your project or if you prefer specify the directory of your choice.

## Adding Dependencies
You need to add few dependencies to use Camel. The dependencies are added in **pom.xml**. So open pom.xml and add following two dependencies −

```
<dependencies>
   <dependency>
      <groupId>org.apache.camel</groupId>
      <artifactId>camel-core</artifactId>
      <version>2.20.0</version>
   </dependency>
   <dependency>
      <groupId>org.apache.camel</groupId>
      <artifactId>camel-stream</artifactId>
      <version>2.20.0</version>
   </dependency>
</dependencies>
```
**Note** − We need the bare minimum dependencies for our application. As you use more Camel components from its libraries, you will need to add the corresponding dependencies in this pom.xml file.

## Creating Java DSL
Next, you will write your filtering and routing code in a Java DSL. Create a new Java class called **DistributeOrderDSL**. Add the following code to it −

```
public class DistributeOrderDSL {
   public static void main(String[] args) throws Exception {
      CamelContext context = new DefaultCamelContext();
      try {
         context.addRoutes(new RouteBuilder() {
            @Override
            public void configure() throws Exception {
               from("direct:DistributeOrderDSL")
                  .split(xpath("//order[@product='soaps']/items")).to("stream:out");
               
               // .to("file:src/main/resources/order/");
            }
         });
         context.start();
         ProducerTemplate orderProducerTemplate = context.createProducerTemplate();
         InputStream orderInputStream = new FileInputStream(ClassLoader.getSystemClassLoader()
            .getResource("order.xml").getFile());
         orderProducerTemplate.sendBody("direct:DistributeOrderDSL", orderInputStream);
      } finally {
         context.stop();
      }
   }
}
```
In the **main** method, first we create **CamelContext** by instantiating a default implementation provided in **DefaultCamelContext** class.

```
CamelContext context = new DefaultCamelContext();
```
Next, we add a route by creating an anonymous **RouteBuilder** instance −

```
context.addRoutes(new RouteBuilder() {
```
We override the **configure** method to add a route from a direct URI **DistributeOrderDSL** to the system console. We provide some filtering by using the xpath query.

```
public void configure() throws Exception {
   from("direct:DistributeOrderDSL")
      .split(xpath("//order[@product = 'soaps']/items")).to("stream:out");
   // .to("file:src/main/resources/order/");
}
```
After adding the route, we start the context −

```
context.start();
```
Next, we add the code for creating our direct URI - **DistributeOrderDSL**.

```
ProducerTemplate orderProducerTemplate = context.createProducerTemplate();
InputStream orderInputStream = new FileInputStream(ClassLoader.getSystemClassLoader()
   .getResource("order.xml").getFile());
```
Finally, we start the processing −

```
orderProducerTemplate.sendBody("direct:DistributeOrderDSL", orderInputStream);
```
Now, as your Java DSL code is completed, the only thing that remains before testing the application is to add the **order.xml** file to your project. You may use the sample XML shown in the Introduction chapter for this purpose.

## Test Results
When you run the application, you would see the following output −

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
Note that only orders for Soaps are listed here. If you wish to store this to a local file, just comment the **stream.out** line and uncomment the following line in your **configure** method −

```
// .to("file:src/main/resources/order/");
```
In our subsequent section, we will learn how to use Camel with Spring.


[Previous Page](../apache_camel/apache_camel_message_queues.md) [Next Page](../apache_camel/apache_camel_using_with_spring.md) 
