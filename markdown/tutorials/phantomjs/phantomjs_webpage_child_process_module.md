# Webpage Child Process Module
The Phantomjs Child process module helps to interact with the sub-processes and talk to them using **stdin /stdout/stderr**. The child processes can be used for tasks like **printing, sending mail** or to **invoke programs** written in another language. To create a child process module, you need references.

For example −

```
var process = require("child_process");
```
## Spawn Method
With the spawn child process, you can subscribe to its **stdout** and **stderr** streams to get data real-time.

### Syntax
Its syntax is as follows −

```
var spawn = require('child_process').spawn;
```
### Example
Let us look at an example of the spawn method.

```
var process = require("child_process")
var spawn = process.spawn
var child = spawn("cmd", ['/c', 'dir']);

child.stdout.on("data", function (data) {
   console.log("spawnSTDOUT---VALUE:", JSON.stringify(data))
})
child.stderr.on("data", function (data) {
   console.log("spawnSTDERR:", JSON.stringify(data))
})
child.on("exit", function (code) {
   console.log("spawnEXIT:", code)
})
```
### Output
The above program generates the following output.

```
spawnSTDOUT---VALUE: " Volume in drive C is OS\r\n"
spawnSTDOUT---VALUE: " Volume Serial Number is 7682-9C1B\r\n\r\n Directory of C:
\\phantomjs\\bin\r\n\r\n"
spawnSTDOUT---VALUE: "20-05-2017  10:01
<DIR>          .\r\n20-05-2017  10:01
<DIR>          ..\r\n13-05-2017  20:48   12 a,txt.txt\r\n07-05-2017  08:51
63 a.js\r\n06-05-2017  16:32           120,232 a.pdf\r\n13-05-2017  20:49 
spawnEXIT: 0
```

[Previous Page](../phantomjs/phantomjs_webpage_module_events_callbacks.md) [Next Page](../phantomjs/phantomjs_file_system_module_properties.md) 
