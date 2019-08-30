# Apache Camel - Endpoints
We have learnt about how the endpoints look like in our integration code. The expressions that we have used so far such as **file:/order, jms:orderQueue, direct:distributeOrderDSL** are the endpoints. As you see, they follow the URI specification formats. While evaluating this URI, the **CamelContext** creates the **Endpoint** instance; you need not worry about instantiating **Endpoint** implementation in your DSL.

Taking our earlier examples, you specify endpoints in Java DSL as here −

```
from ("file:/order").to("jms:orderQueue");
```
And in Spring as here −

```
<route>
   <from uri = "file:/order"/>
   <to uri = "jms:orderQueue"/>
</route>
```
In both the cases, the endpoint is a constant string. In certain cases, you may like to build this string at runtime. You can do so by using Java **String** formatter methods. Camel provides another simpler approach to create these URI strings at runtime. For this purpose, Camel provides **fromF** and **toF** methods that accept the arguments with the user-specified parameters. The following statement illustrates the use of **toF** method −

```
from("direct:distributeOrderDSL”).toF("file://%s?fileName=%s", path, name);
```
Because of these methods, the need for using the Java built-in **String** formatter methods is obviated.

Camel uses [Simple](https://camel.apache.org/simple.html)  language by default to compute the endpoint expression. The **Simple** language was designed primarily to evaluate **Expressions** and **Predicates**without bothering much about the intricacies of **XPath**. For evaluating predicates, you can combine another language such as **xpath** with the default **Simple** language. This is done by using the plus sign to separate the other language. The code snippet here shows how to concatenate **xpath** string to the expression written in **Simple**.

```
from("direct:start")
.toD("jms:${orderQueue}+language:xpath:/order/@id");
```
In **Spring**, you can achieve the same as here −

```
<route>
   <from uri = "direct:start"/>
   <toD uri = "jms:${orderQueue}+language:xpath:/order/@id"/>
</route>
```
You may concatenate as many languages as you want, each separated with a plus sign from the previous one. The list of supported languages can be found [here](https://camel.apache.org/languages.html) .


[Previous Page](../apache_camel/apache_camel_camelcontext.md) [Next Page](../apache_camel/apache_camel_components.md) 
