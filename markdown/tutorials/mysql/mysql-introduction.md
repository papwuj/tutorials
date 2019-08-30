# MySQL - Introduction
## What is a Database?
A database is a separate application that stores a collection of data. Each database has one or more distinct APIs for creating, accessing, managing, searching and replicating the data it holds.

Other kinds of data stores can also be used, such as files on the file system or large hash tables in memory but data fetching and writing would not be so fast and easy with those type of systems.

Nowadays, we use relational database management systems (RDBMS) to store and manage huge volume of data. This is called relational database because all the data is stored into different tables and relations are established using primary keys or other keys known as **Foreign Keys**.

A **Relational DataBase Management System (RDBMS)** is a software that −

   * Enables you to implement a database with tables, columns and indexes.
   * Guarantees the Referential Integrity between rows of various tables.
   * Updates the indexes automatically.
   * Interprets an SQL query and combines information from various tables.

## RDBMS Terminology
Before we proceed to explain the MySQL database system, let us revise a few definitions related to the database.

   * **Database** − A database is a collection of tables, with related data.
   * **Table** − A table is a matrix with data. A table in a database looks like a simple spreadsheet.
   * **Column** − One column (data element) contains data of one and the same kind, for example the column postcode.
   * **Row** − A row (= tuple, entry or record) is a group of related data, for example the data of one subscription.
   * **Redundancy** − Storing data twice, redundantly to make the system faster.
   * **Primary Key** − A primary key is unique. A key value can not occur twice in one table. With a key, you can only find one row.
   * **Foreign Key** − A foreign key is the linking pin between two tables.
   * **Compound Key** − A compound key (composite key) is a key that consists of multiple columns, because one column is not sufficiently unique.
   * **Index** − An index in a database resembles an index at the back of a book.
   * **Referential Integrity** − Referential Integrity makes sure that a foreign key value always points to an existing row.

## MySQL Database
MySQL is a fast, easy-to-use RDBMS being used for many small and big businesses. MySQL is developed, marketed and supported by MySQL AB, which is a Swedish company. MySQL is becoming so popular because of many good reasons −

   * MySQL is released under an open-source license. So you have nothing to pay to use it.
   * MySQL is a very powerful program in its own right. It handles a large subset of the functionality of the most expensive and powerful database packages.
   * MySQL uses a standard form of the well-known SQL data language.
   * MySQL works on many operating systems and with many languages including PHP, PERL, C, C++, JAVA, etc.
   * MySQL works very quickly and works well even with large data sets.
   * MySQL is very friendly to PHP, the most appreciated language for web development.
   * MySQL supports large databases, up to 50 million rows or more in a table. The default file size limit for a table is 4GB, but you can increase this (if your operating system can handle it) to a theoretical limit of 8 million terabytes (TB).
   * MySQL is customizable. The open-source GPL license allows programmers to modify the MySQL software to fit their own specific environments.

## Before You Begin
Before you begin this tutorial, you should have a basic knowledge of the information covered in our PHP and HTML tutorials.

This tutorial focuses heavily on using MySQL in a PHP environment. Many examples given in this tutorial will be useful for PHP Programmers.

We recommend you check our [PHP Tutorial](/php/index.htm)  for your reference.


[Previous Page](../mysql/index.md) [Next Page](../mysql/mysql-installation.md) 
