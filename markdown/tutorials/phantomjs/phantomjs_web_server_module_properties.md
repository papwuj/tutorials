# PhantomJS - Web Server Module Properties
PhantomJS uses an embedded web server called **mongoose**. Right now, PhantomJS cannot connect with any other production webserver. With respect to connection, it can deal with 10 connections at a time and more than 10 requests will be waiting in a queue.

To start a webserver, we need to use the following syntax −

```
var webserver = require (‘webserver’);
```
Let us understand the **Port** property, which is used to listen to the requests that are sent to the webserver.

## port
The Port property for a webserver is used to listen to the request that are sent to it.

### Syntax
Its syntax is as follows −

```
var server = require('webserver').create();
var listening = server.listen(port, function (request, response) {});
```
### Example
Let us take an example to understand how the **port** property works.

```
var webserver = require('webserver'); 
var server = webserver.create(); 
var service = server.listen(8080,function(request,response){  
}); 
if(service) console.log("server started - http://localhost:" + server.port);
```
The above program generates the following output.

```
server started - http://localhost:8080
```

[Previous Page](../phantomjs/phantomjs_system_module_properties.md) [Next Page](../phantomjs/phantomjs_web_server_module_methods.md) 
