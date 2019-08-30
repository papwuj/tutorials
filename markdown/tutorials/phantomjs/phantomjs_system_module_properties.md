# PhantomJS - System Module Properties
In this chapter, we will discuss regarding the various System Module Properties of PhantomJS.

## args
The system module of PhantomJS has different properties, which help to pass arguments, get to know the file that is executed, etc.

The args property basically returns the arguments passed at the command line. You can also pass the page-URL that you want to read. If you want to store the screen-capture pdf-file or upload file, the details can be passed to the command line and can be read using the **args** property.

Let us find the length and the way to fetch each argument passed to the command line.

### Syntax
Its syntax is as follows −

```
var system = require('system'); 
system.args;
```
### Example
Take a look at the following example to understand how this property works.

```
var system = require('system');
console.log(system.args.length);

if (system.args.length>0) {
   console.log(JSON.stringify(system.args));
}
phantom.exit();
```
The above program generates the following **output**.

**Command** − phantomsjs args.js **http://localhost/tasks/request.html**

```
2
["args.js","http://localhost/tasks/request.html"]
```
The first value is the name of the file and next value is the URL passed. You can pass more arguments in the command line and fetch the same using **system.args**.

## env
The **env** property returns the details of the system.

### Syntax
Its syntax is as follows −

```
var system = require('system'); 
system.env;
```
### Example
```
var system = require('system'); 
console.log(JSON.stringify(system.env)); 
phantom.exit();
```
The above program generates the following output.

```
{"=::":"::\\","=C:":"C:\\phantomjs\\bin","=ExitCode":"00000000","ALLUSERSPROFILE":
"C:\\ProgramData","APPDATA":"C:\\Users\\UserName\\AppData\\Roaming","COMPUTERNAME":
"X","ComSpec":"C:\\Windows\\system32\\cmd.exe","CommonProgramFiles":
"C:\\Program Files (x86)\\Common Files","CommonProgramFiles(x86)":
"C:\\Program Files (x86)\\Common Files","CommonProgramW6432":
"C:\\Program Files\\Common Files","FP_NO_HOST_CHECK":"NO","HOMEDRIVE":"C:",
"HOMEPATH":"\\Users\\UserName","LOCALAPPDATA":
"C:\\Users\\UserName\\AppData\\Local","LOGONSERVER":"\\\\MicrosoftAccount",
"NUMBER_OF_PROCESSORS":"2","OS":"Windows_NT","PATHEXT":".COM;.EXE;.BAT;.CMD;.VBS ;
.VBE;.JS;.JSE;.WSF;.WSH;.MSC","PROCESSOR_ARCHITECTURE":"x86","PROCESSOR_ARCHITEW64 32":
"AMD64","PROCESSOR_IDENTIFIER":"Intel64 Family 6 Model 58Stepping9,GenuineIntel",
"PROCESSOR_LEVEL":"6","PROCESSOR_REVISION":"3a09","PROMPT":
"$P$G","PSModulePath":"C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\
Modules\\" ,"PUBLIC":"C:\\Users\\Public","Path":
"C:\\Program Files\\Dell\\DW WLAN Card;
c:\\Program Files (x86)\\Intel\\iCLS Client\\;c:\\Program Files\\Intel\\iCLSClient\\;
C:\\Windows\\system32;C:\\Windows;C:\\Windows\\System32\ \Wbem;
C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\;
C:\\Program Files\\Intel\\Intel(R) Management Engine Components\\DAL;
C:\\Program Files\\Intel\\Intel(R) Management Engine Components\\IPT;
C:\\Program Files (x86)\\Intel\\Intel(R) Management Engine Components\\DAL;
C:\\Program Files (x86)\\Intel\\Intel(R) 
ManagementEngineComponents\\IPT;c:\\ProgramFiles\\WIDCOMM\\BluetoothSoftware\\;
c:\\ProgramFiles\\WIDCOMM\\BluetoothSoftware\\syswow64;
C:\\ProgramFiles(x86)\\WindowsLive\\Shared;C:\\ProgramFiles\\nodejs\\;
C:\\ProgramFiles\\Git\\cmd;C:\\ProgramFiles\\ OpenVPN\\bin;
C:\\ProgramFiles(x86)\\Skype\\Phone\\;C:\\Users\\UserName\\AppData\\Roaming
\\npm","ProgramData":
"C:\\ProgramData","ProgramFiles":"C:\\ProgramFiles(x86)", 
"ProgramFiles(x86)":"C:\\ProgramFiles(x86)","ProgramW6432":
"C:\\ProgramFiles","SESSIONNAME":"Console","SystemDrive":
"C:","SystemRoot":"C:\\Windows","TEMP":"C:\\Users\ \Username~1\\AppData\\Local\\Temp",
"TMP":"C:\\Users\\Username~1\\AppData\\Local\\Temp",
"USERDOMAIN":"USER","USERDOMAIN_ROAMINGPROFILE":"USER","USERNAME":"X Y","USERPROFILE":
"C:\\Users\\X Y","windir":"C:\\Windows"}
```
## OS
It returns the details of the operating system used. It returns an object with architecture, name of the OS, and version.

### Syntax
Its syntax is as follows −

```
var system = require('system');
system.os;
```
### Example
```
var system = require('system');
console.log(JSON.stringify(system.os));
phantom.exit();
```
The above program generates the following output.

```
{"architecture":"32bit","name":"windows","version":"8.1"}
```
## pid
This property returns the process ID.

### Syntax
Its syntax is as follows −

```
var system = require('system');
system.pid;
```
### Example
Let us look at an example of the **pid** property.

```
var system = require('system');
console.log(system.pid);
phantom.exit();
```
The above program generates the following output.

```
2160
```
## platform
This property returns the platform we are working on.

### Syntax
Its syntax is as follows −

```
var system = require('system');
system.platform;
```
### Example
```
var system = require('system');
console.log(system.platform);
phantom.exit();
```
The above program generates the following output.

```
Phantomjs
```

[Previous Page](../phantomjs/phantomjs_file_system_module_methods.md) [Next Page](../phantomjs/phantomjs_web_server_module_properties.md) 
