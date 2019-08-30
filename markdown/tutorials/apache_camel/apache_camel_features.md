# Apache Camel - Features
Having seen an overview of Apache Camel, let us now delve into its features to see what it offers. We already know Apache Camel is an open source Java framework that essentially provides an implementation of various EIPs. Camel makes the integration easier by providing connectivity to a very large variety of transports and APIs. For example, you can easily route JMS to JSON, JSON to JMS, HTTP to JMS, FTP to JMS, even HTTP to HTTP, and connectivity to Microservices. You simply need to provide appropriate endpoints at both ends. Camel is extensible and thus in future more endpoints can be added easily to the framework.

To wire EIPs and transports together, you use Domain Specific Languages (DSLs) such as Java, Scala, and Groovy. A typical Java routing rule may look like −

```
from ("file:/order").to("jms:orderQueue");
```
This routing rule loads the files from the **order** directory, creates a JMS message with the contents of the file and sends that message to a queue called **orderQueue**.

Here are some of the most important features of Camel that you would find useful in developing Camel applications −

   * Camel supports pluggable [data](https://camel.apache.org/data-format.html)  formats and type converters for such message transformations, so new formats and converters can be added in future. Currently, it supports several popular formats and converters; to name a few - CSV, EDI, JAXB, JSON, XmlBeans, XStream, Flatpack, Zip.
   * Camel supports pluggable [languages](https://camel.apache.org/languages.html)  to write predicates in DSL. Some of the supported languages include JavaScript, Groovy, Python, PHP, Ruby, SQL, XPath, XQuery.
   * Camel supports the POJO model so that you can plug in Javabeans at various points.
   * Camel eases testing of such large distributed and asynchronous systems by using messaging.

Let us now understand the architecture of Camel and see how the various features are implemented.


[Previous Page](../apache_camel/apache_camel_overview.md) [Next Page](../apache_camel/apache_camel_architecture.md) 
