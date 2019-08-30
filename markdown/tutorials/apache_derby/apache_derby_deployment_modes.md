# Apache Derby - Deployment Modes
You can deploy apache derby in two modes, namely embedded mode and server mode.

## Embedded mode
You can run derby in embedded mode using Java application (using embedded driver). If you deploy Derby in embedded mode, the database engine will run in the same JVM as the Java application. It starts and stops with the application. You can access the database only with this application.

![Embedded Mode](../apache_derby/images/embedded_mode.jpg)

## Server mode
In the server mode, derby will be run in the JVM of an application server where you can send a request to the server to access it. Unlike in embedded mode, multiple applications (java) can send a request to the server and access the database.

![Server Mode](../apache_derby/images/server_mode.jpg)


[Previous Page](../apache_derby/apache_derby_introduction.md) [Next Page](../apache_derby/apache_derby_environment_setup.md) 
