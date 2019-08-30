# Apache Camel - Introduction
Consider a situation where a large online grocery store in your town such as the Bigbasket in India invites you to design an IT solution for them. The stable and scalable solution will help them overcome the software maintenance problems they are facing today. This online store has been running its business for the last decade. The store accepts online orders for different categories of products from their customers and distributes those to the respective suppliers. For example, suppose you order some soaps, oil and milk; these three items will be distributed to the three respective suppliers. The three suppliers will then send their supplies to a common distribution point from where the entire order will be fulfilled by the delivery center. Now, let us look at the problem they are facing today.

When this store started its business, it was accepting orders in a comma-separated plain text file. Over a period of time, the store switched to message-driven order placement. Later, some software developer suggested an XML based order placement. Eventually, the store even adapted a web service interface. Now, here comes the real problem. The orders now come in different formats. Obviously, every time the company upgraded the order acceptance format, it did not want to break the previously deployed interface so as not to cause confusions in the customer’s mind.

At the same time, as the business kept on growing, the store periodically added new suppliers to its repertoire. Each such supplier had its own protocol for accepting orders. Once again, we face the integration issue; our application architecture must be scalable to accommodate new suppliers with their unique order placement mechanism.

The entire situation is shown in the following figure −

![Application Architecture](../apache_camel/images/application_architecture.jpg)

Now, let us see how Apache Camel can come to your rescue to provide an elegant, maintainable, scalable solution architecture for the described scenario.

Before we proceed with the solution, we need to make a small assumption. For all the discussions in this tutorial, we will assume that the online orders are placed in XML format. A typical format for the order file that we will be using throughout our discussions is shown here −

```
<?xml version = "1.0" encoding = "UTF-8"?>
<OrderID Order = "001">
   <order product = "soaps">
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
   </order>
   
   <order product = "Oil">
      <items>
         <item>
            <Brand>Saffola</Brand>
            <Type>Gold</Type>
            <Quantity>2</Quantity>
            <Price>649</Price>
         </item>
         <item>
            <Brand>Fortune</Brand>
            <Type>Sunlite</Type>
            <Quantity>1</Quantity>
            <Price>525</Price>
         </item>
      </items>
   </order>
   
   <order product = "Milk">
      <items>
         <item>
            <Product>Milk</Product>
            <Brand>Amul</Brand>
            <Type>Pure</Type>
            <Quantity>2</Quantity>
            <Price>60</Price>
         </item>
      </items>
   </order>
</OrderID>
```
We will be using the above XML template to illustrate the Camel examples in this tutorial.


[Previous Page](../apache_camel/index.md) [Next Page](../apache_camel/apache_camel_overview.md) 
