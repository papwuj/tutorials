# Apache Camel - Components
Camel provides several pre-built components.

In this chapter, we will discuss a few important components from the **camel-core** module.

## Bean
The **Bean** component binds beans to Camel message exchanges. The URI to create an Endpoint is specified as **bean:beanID**, where **beanID** is the name of the bean as specified in the **Registry**.

```
JndiContext jndiContext = new JndiContext();
jndiContext.bind("MilkOrder", new MilkOrderProcessor());
CamelContext camelContext = new DefaultCamelContext(jndiContext);

camelContext.addRoutes(new RouteBuilder() {
   public void configure() {
      from("direct:bigBasket")
         .to("bean:MilkOrder?method=placeOrder");
   }
});
```
Note how the endpoint is specified using the **bean:** protocol. You may optionally specify the bean method that is to be invoked; in this case, the method called **placeOrder** will be invoked while evaluating the Endpoint expression. The **MilkOrder** is a JNDI name to the **MilkOrderProcessor** Javabean as registered in the first two lines of the code snippet. The definition of **MilkOrderProcessor** itself is omitted here for brevity.

## Direct
You must have noticed the use of **Direct** in our previous examples. To send an order to an oil vendor, we used **direct:oil** in the Endpoint specification. The use of **Direct** component allows you to synchronously invoke an endpoint. The following two code snippets from our previous examples illustrate the use of **Direct** −

```
.when(header("order").isEqualTo("oil"))
   .to("direct:oil")
```
And,

```
from("direct:DistributeOrderDSL")
   .process(myProcessor);
```
## File
The **File** component provides access to the file system on your machine. Using this component, you will be able to save messages from other components to a local disk. In addition, it allows other Camel components to process the local files. You may use either **file:directoryName[?options]** or **file://directoryName[?options]** as a URI format while using the File component. You have earlier seen the use of this component −

```
from ("file:/order").to("jms:orderQueue");
```
Note that the **File** component by default takes the directory name. Therefore, the contents of the order directory will be taken as input contents. To specify a particular file in the **order** directory, you will use the following statement −

```
from ("file:/order?fileName = order.xml").to("jms:orderQueue");
```
## Log
The **Log** component allows you to log messages to the underlying logging mechanism. Camel uses Simple Logging Facade for Java (SLF4J) as an abstraction to various logging frameworks. You may use **java.util.logging, logback, log4j** for logging. This code snippet illustrates the use of the **Log** component −

```
from("direct:DistributeOrderDSL")
   .to("bean:MilkOrder?method = placeOrder")
   .to("log:com.example.com?level = INFO&showBody = true");
```
## SEDA
The **SEDA** component allows you to asynchronously call another endpoint in the same **CamelContext**. If you want to call across CamelContext instances, you need to use **VM** component. The use of SEDA is illustrated here −

```
from("direct:DistributeOrderDSL")
// send it to the seda queue that is async
   .to("seda:nextOrder")
```
In this route, we will simply route the orders to **nextOrder** asynchronous queue. A client who has subscribed to this queue will pick up the messages from this queue.

## Timer
The **Timer** component is used for sending out messages at regular intervals and can thus be very useful while testing Camel applications. The code snippet here fires a test message to the console every two seconds −

```
from("timer://testTimer?period = 2000")
   .setBody()
   .simple("This is a test message ${header.timer}")
      .to("stream:out");
```

[Previous Page](../apache_camel/apache_camel_endpoints.md) [Next Page](../apache_camel/apache_camel_message_queues.md) 
