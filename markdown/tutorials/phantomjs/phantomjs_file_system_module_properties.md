# PhantomJS - File System Module Properties
The File System Module has many APIs to deal with files and directories. You can create/write and delete a file/directory. To start using the file system module you must require a reference to the **fs module**.

```
var fs = require('fs');
```
There are two properties available for file system module: **Separator** and **Working Directory**. Let us understand them in detail.

## Separator
It tells you the separator used for the file paths.

   * For windows:**\**
   * For Linux: **/**

### Syntax
Its syntax is as follows −

```
fs.seperator
```
### Example
```
var fs = require('fs');
console.log(fs.seperator);
phantom.exit();
```
The above program generates the following **output**.

```
undefined
```
## workingDirectory
The working directory is the directory in which PhantomJS executes.

### Syntax
Its syntax is as follows −

```
var fs = require('fs');
fs.workingDirectory;
```
### Example
```
var fs = require('fs');
console.log(fs.workingDirectory);
phantom.exit();
```
The above program generates the following **output**.

```
C:/phantomjs/bin
```

[Previous Page](../phantomjs/phantomjs_webpage_child_process_module.md) [Next Page](../phantomjs/phantomjs_file_system_module_methods.md) 
