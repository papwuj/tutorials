# Cognos - Components and Services
There are various components in Cognos that communicate with each other using BI Bus and are known as Simple Object Access Protocol (SOAP) and supports WSDL. BI Bus in Cognos architecture is not a software component but consists of a set of protocols that allows communication between Cognos Services.

The processes enabled by the BI Bus protocol includes −

   * Messaging and dispatching
   * Log message processing
   * Database connection management
   * Microsoft .NET Framework interactions
   * Port usage
   * Request flow processing
   * Portal Pages

When you install Cognos 8 using the Installation wizard, you specify where to install each of these components −

## Gateways
The Cognos 8 Web server tier contains one or more Cognos 8 gateways. The web communication in Cognos 8 is typically through gateways, which reside on one or more web servers. A gateway is an extension of a web server program that transfers information from the web server to another server. Web communication can also occur directly with a Cognos 8 dispatcher but this option is less common.

Cognos 8 supports several types of Web gateways, including −

   * **CGI** − The default gateway, CGI can be used for all supported Web servers. However, for enhanced performance or throughput, you may choose one of the other supported gateway types.
   * **ISAPI** − This can be used for the Microsoft Internet Information Services (IIS) Web server. It delivers faster performance for IIS.
   * **apache_mod** − You can use an apache_mod gateway with the Apache Web server.
   * **Servlet** − If your Web server infrastructure supports servlets or you are using an application server, you can use a servlet gateway.

## Application Tier Components
This component consists of a dispatcher that is responsible to operate services and route requests. The dispatcher is a multithreaded application that uses one or more threads per request. The configuration changes are routinely communicated to all the running dispatchers. This dispatcher includes Cognos Application Firewall to provide security for Cognos 8.

The dispatcher can route requests to a local service, such as the report service, presentation service, job service, or monitor service. A dispatcher can also route requests to a specific dispatcher to run a given request. These requests can be routed to specific dispatchers based on load-balancing needs, or package or user group requirements.

## Content Manager
Content Manager contains Access Manager, the primary security component of Cognos 8. Access Manager leverages your existing security providers for use with Cognos 8. It provides Cognos 8 with a consistent set of security capabilities and APIs, including user authentication, authorization, and encryption. It also provides support for the Cognos namespace.


[Previous Page](../cognos/cognos_introduction.md) [Next Page](../cognos/cognos_connections.md) 
