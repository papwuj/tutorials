# Servlets Tutorial
[PDF Version](../servlets/servlets_pdf_version.md)
[Quick Guide](../servlets/servlets-quick-guide.md)
[Resources](../servlets/servlets-useful-resources.md)
[Discussion](../servlets/servlets-discussion.md)

Servlets provide a component-based, platform-independent method for building Webbased applications, without the performance limitations of CGI programs. Servlets have access to the entire family of Java APIs, including the JDBC API to access enterprise databases. This tutorial will teach you how to use Java Servlets to develop your web based applications in simple and easy steps.

## Why to Learn Servlet?
Using Servlets, you can collect input from users through web page forms, present records from a database or another source, and create web pages dynamically.

Java Servlets often serve the same purpose as programs implemented using the Common Gateway Interface (CGI). But Servlets offer several advantages in comparison with the CGI.

   * Performance is significantly better.
   * Servlets execute within the address space of a Web server. It is not necessary to create a separate process to handle each client request.
   * Servlets are platform-independent because they are written in Java.
   * Java security manager on the server enforces a set of restrictions to protect the resources on a server machine. So servlets are trusted.
   * The full functionality of the Java class libraries is available to a servlet. It can communicate with applets, databases, or other software via the sockets and RMI mechanisms that you have seen already.

## Hello World using Servlet.
Just to give you a little excitement about Servlet, I'm going to give you a small conventional Servlet Hello World program, You can try it using Demo link.

```
// Import required java libraries
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

// Extend HttpServlet class
public class HelloWorld extends HttpServlet {
 
   private String message;

   public void init() throws ServletException {
      // Do required initialization
      message = "Hello World";
   }

   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      // Set response content type
      response.setContentType("text/html");

      // Actual logic goes here.
      PrintWriter out = response.getWriter();
      out.println("<h1>" + message + "</h1>");
   }

   public void destroy() {
      // do nothing.
   }
}
```
## Applications of Servlet
   * Read the explicit data sent by the clients (browsers). This includes an HTML form on a Web page or it could also come from an applet or a custom HTTP client program.
   * Read the implicit HTTP request data sent by the clients (browsers). This includes cookies, media types and compression schemes the browser understands, and so forth.
   * Process the data and generate the results. This process may require talking to a database, executing an RMI or CORBA call, invoking a Web service, or computing the response directly.
   * Send the explicit data (i.e., the document) to the clients (browsers). This document can be sent in a variety of formats, including text (HTML or XML), binary (GIF images), Excel, etc.
   * Send the implicit HTTP response to the clients (browsers). This includes telling the browsers or other clients what type of document is being returned (e.g., HTML), setting cookies and caching parameters, and other such tasks.

## Audience
This tutorial is designed for Java programmers with a need to understand the Java Servlets framework and its APIs. After completing this tutorial you will find yourself at a moderate level of expertise in using Java Servlets from where you can take yourself to next levels.

## Prerequisites
We assume you have good understanding of the Java programming language. It will be great if you have a basic understanding of web application and how internet works.


[Previous Page](../servlets/index.md) [Next Page](../servlets/servlets_overview.md) 
