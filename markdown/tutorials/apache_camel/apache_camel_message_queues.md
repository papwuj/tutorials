# Apache Camel - Message Queues
Most of the integration projects use messaging as it helps in creating loosely coupled application architecture. Messaging can be either synchronous or asynchronous. JMS supports both **point-to-point** and **publish-subscribe** models. You use a **Queue** for point-to-point and **Topic** for a publish-subscribe model. On a Java platform, JMS - Java Messaging Service provides an interface to a messaging server. Apache activeMQ is one such open source JMS provider. Camel does not ship with a JMS provider; however, it can be configured to use activeMQ. To use this component, you need to include the following jars in your project - activemq, camel-spring, and camel-jms.

The following code snippet shows how to configure Camel for activeMQ.

```
<bean id = "jms" class = "org.apache.camel.component.jms.JmsComponent">
   <property name = "connectionFactory">
      <bean class="org.apache.activemq.ActiveMQConnectionFactory">
         <property name = "orderQueue" value = "tcp://localhost:61000" />
      </bean>
   </property>
</bean>
```
Here, the Camel application will start listening to a queue called **orderQueue**. The queue itself is set up in the activeMQ messaging server running on the local host and listing to port 61000. Once this is done, your application can send or receive message to this queue from any of the endpoints defined in your application.

Finally, it is time now to put everything together in a project to get a deeper understanding of how Camel applications are created.


[Previous Page](../apache_camel/apache_camel_components.md) [Next Page](../apache_camel/apache_camel_project.md) 
