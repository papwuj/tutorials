# PhantomJS - Web Server Module Methods
In this chapter, we will discuss regarding the various methods of the Web Server Module of PhantomJS.

## close
The **close** method is used to close the webserver.

### Syntax
Its syntax is as follows −

```
var server = require('webserver').create();
server.close();
```
### Example
The following example shows how you can use the **close** method.

```
var webserver = require('webserver');
var server = webserver.create();
var service = server.listen(8080,function(request,response){
});

if(service) console.log("server started - http://localhost:" + server.port);
console.log(server.port);
server.close();
console.log(server.port);
```
The above program generates the following **output**.

```
server started - http://localhost:8080 
8080
```
Here, we have consoled **server.port** after closing the server. Hence, it will not respond, as the webserver is already closed.

## listen
The **server.listen** method takes the port and callback function with two arguments, which are – **Request Object** and **Response Object**.

The **Request Object** contains the following properties −

   * **Method** − This defines the method GET /POST.
   * **URL** − This displays the requested URL.
   * **httpVersion** − This displays the actual http version.
   * **Headers** − This displays all the headers with key value pairs.
   * **Post** − Request body applicable only for the post method.
   * **postRaw** − If the Content-Type header is set to 'application/x-www-formurlencoded', the original content of the post will be stored in this extra property (postRaw) and then that post will be automatically updated with a URL-decoded version of the data.

The **Response Object** contains the following properties −

   * **Headers** − Has all the HTTP headers as key-value pairs. It should be set before calling write for the first time.
   * **SetHeader** − This sets a specific header.
   * **Header (name)** − It returns the value of the given header.
   * **StatusCode** − It sets the returned HTTP status code.
   * **SetEncoding (encoding)** − This is used to convert data given to write(). By default, data will be converted to UTF-8. Indicate "binary" if data is a binary string. Not required if data is a Buffer (e.g. from page.renderBuffer).
   * **Write (data)** − It sends data for the response body. Can be called multiple times.
   * **WriteHead (statusCode, headers)** − It sends a response header to the request. The status code is a 3-digit HTTP status code (e.g. 404). The last arguments and headers are the response headers.
   * **Close** − It closes the http connection.
   * **CloseGracefully** − It is similar to close(), but it makes sure the response headers have been sent first.

### Syntax
Its syntax is as follows −

```
var server = require('webserver').create(); 
var listening = server.listen(8080, function (request, response) {}
```
### Example
Let us take an example to understand how the **listen** method works.

```
var page = require('webpage').create(); 
var server = require('webserver').create(); 
var port = 8080; 
var listening = server.listen(8080, function (request, response) { 
   console.log("GOT HTTP REQUEST"); 
   console.log(JSON.stringify(request, null, 4)); 
   
   // we set the headers here 
   response.statusCode = 200; 
   response.headers = {"Cache": "no-cache", "Content-Type": "text/html"};  
 
   // the headers above will now be sent implictly 
   // now we write the body 
   response.write("<html><head><title>Welcone to Phantomjs</title></head>"); 
   response.write("<body><p>Hello World</p></body></html>"); 
   response.close(); 
}); 

if (!listening) { 
   console.log("could not create web server listening on port " + port); 
   phantom.exit(); 
} 

var url = "http://localhost:" + port + "/foo/response.php"; 
console.log("sending request to :" +url); 
page.open(url, function (status) { 
   if (status !== 'success') { 
      console.log('page not opening'); 
   } else { 
      console.log("Getting response from the server:"); 
      console.log(page.content); 
   } 
   
   phantom.exit(); 
});
```
The above program generates the following **output**.

```
sending request to :http://localhost:8080/foo/response.php 
GOT HTTP REQUEST { 
   "headers": {
      "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8", 
      "Accept-Encoding": "gzip, deflate", 
      "Accept-Language": "en-IN,*", 
      "Connection": "Keep-Alive", 
      "Host": "localhost:8080", 
      "User-Agent": "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/538.1 
         (KHTML, like Gecko) PhantomJS/2.1.1 Safari/538.1" 
   }, 
   "httpVersion": "1.1", 
   "method": "GET", 
   "url": "/foo/response.php" 
} 
Getting response from the server: 
<html><head><title>Welcone to Phantomjs</title></head><body><p>Hello World</p></body>
</html>
```

[Previous Page](../phantomjs/phantomjs_web_server_module_properties.md) [Next Page](../phantomjs/phantomjs_command_line_interface.md) 
