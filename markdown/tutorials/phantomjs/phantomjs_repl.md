# PhantomJS - REPL
**REPL** stands for **Read Eval Print Loop**. In PhantomJS, REPL is an interactive mode to test the JavaScript code. You can do the same thing, which is done in Google Chrome Inspector or Firebug to execute some piece of code directly on the console. REPL returns you the same platform to execute the scripts.

The typed command is sent to the interpreter for immediate interpretation (EVAL) and to provide feedback (PRINT). Enter **PhantomJS** in the command line and it will take you to the interactive mode, where you can execute your code directly.

## Syntax
Its syntax is as follows −

```
Phantomjs
```
## Example
The following example demonstrates how REPL works in PhantomJS.

```
phantomjs> console.log("Welcome to phantomjs");
Welcome to phantomjs
Undefined

phantomjs> window.navigator {
   "appCodeName": "Mozilla",
   "appName": "Netscape",
   "appVersion": "5.0 (Windows NT 6.2; WOW64) AppleWebKit/538.1 (KHTML, like Gecko)
      PhantomJS/2.1.1 Safari/538.1",
   "cookieEnabled": true,
   "language": "en-IN",

   "mimeTypes": {
      "length": 0
   },
   "onLine": false,
   "platform": "Win32",

   "plugins": {
      "length": 0
   },
   "product": "Gecko
   "productSub": "20030107",
   "userAgent": "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/538.1 (KHTML, like Gecko)
      PhantomJS/2.1.1 Safari/538.1",
   "vendor": "Apple Computer, Inc.",
   "vendorSub": ""
}

phantomjs>
To find the version
phantomjs> phantom.version {
   "major": 2,
   "minor": 1,
   "patch": 1
}
phantomjs>
```
Each command is executed and the result is displayed. Use CTRL+C, CTRL+D or **phantom.exit()** to come out of the interactive mode.

Use the **up/down** arrow keys to listen to the previously typed commands.

There is another feature called **autocompletion**, which helps to remember the command. Just type "phantom" and hit the "Tab" button to get a list of available commands you can execute.

## Output
The above program generates the following output.

```
phantomjs> phantom.→| 
phantomjs> phantom.cookies→| 
phantomjs> phantom.exit→| 
phantomjs> phantom.version→|
```

[Previous Page](../phantomjs/phantomjs_testing.md) [Next Page](../phantomjs/phantomjs_examples.md) 
