# Apache Camel - Architecture
The Camel architecture consists three components − Integration Engine and Router, Processors, and Components. This is illustrated in the following figure −

![Camel Architecture](../apache_camel/images/camel_architecture.jpg)

The Camel core itself is very small and contains 13 essential components. The rest 80+ components are outside the core. This helps in maintaining a low dependency on where it is deployed and promotes extensions in future. The **Components** module provides an **Endpoint** interface to the external world. The Endpoints are specified by URIs, such as **file:/order** and **jms:orderQueue** that you have seen in the last chapter.

The **Processors** module is used for manipulating and mediating messages between Endpoints. The EIPs that I mentioned earlier are implemented in this module. It currently supports 40+ patterns as documented in the [EIP book](https://www.informit.com/store/enterprise-integration-patterns-designing-building-9780321200686)  and other useful processing units.

The **Processors** and **Endpoints** are wired together in **Integration Engine and Router** module using DSLs. While wiring these, you may use filters to filter messages based on user-defined criteria. As mentioned earlier, you have several options in writing these rules. You may use Java, Scala, Groovy, or even XML for this.

Now, we come to the most important component of Camel, which may be considered as the core − the **CamelContext**.


[Previous Page](../apache_camel/apache_camel_features.md) [Next Page](../apache_camel/apache_camel_camelcontext.md) 
