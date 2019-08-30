# Apache Derby - Introduction
Apache Derby is a **R**elational **D**atabase **M**anagement **S**ystem which is fully based on (written/implemented in) Java programming language. It is an open source database developed by Apache Software Foundation.

Oracle released the equivalent of Apache Derby with the name JavaDB.

## Features of Apache Derby
Following are the notable features of Derby database −

   * **Platform independent** − Derby uses on-disc database format where the databases in it are stored in a file in the disc within the directory with the same name as the database.
   * **No modifying data** − Because of this, you can move derby databases to other machines without modifying the data.
   * **Transactional support** − Derby provides complete support for transactions ensuring data integrity.
   * **Including databases** − You can include pre-build/existing databases into your current derby applications.
   * **Less space** − Derby database has a small footprint, i.e., it occupies less space and it is easy to use and deploy it.
   * **Embed with Java Application** − Derby provides an embedded database engine which can be embedded in to Java applications and it will be run in the same JVM as the application. Simply loading the driver starts the database and it stops with the applications.

## Limitations of Apache Derby
Following are the limitations of Apache Derby −

   * Derby does not support indexes for datatypes such as BLOB and LONGVARCHAR.
   * If Derby does not have enough disc space, it will shut down immediately.

## Data storage
While storing data, Apache Derby follows a concept known as **conglomerate**. In this, data of a table will be stored in a separate file. In the same way, each index of a table is also stored in a separate file. Thus, there will be a separate file for every table or index in the database.

## Apache Derby Library/Components
Apache Derby distribution provides various components. In the lib folder of the apache distribution you have downloaded, you can observe jar files representing various components.


[Previous Page](../apache_derby/index.md) [Next Page](../apache_derby/apache_derby_deployment_modes.md) 
