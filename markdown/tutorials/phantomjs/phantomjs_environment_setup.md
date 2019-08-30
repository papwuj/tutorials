# PhantomJS - Environment Setup
PhantomJS is a free software and is distributed under the **BSD License**. It is easy to install and it offers multiple features to execute the scripts. PhantomJS can be easily run on multiple platforms such as Windows, Linux, and Mac.

For downloading PhantomJS, you can go to – [http://phantomjs.org/](http://phantomjs.org/)  and then click on the download option.

## For Windows
The download page shows you the options for download for different OS. Download the zip file, unpack it and you will get an executable **phantom.exe**. Set the PATH environment variable to the path of phantom.exe file. Open a new command prompt and type **phantomjs –v**. It should give you the current version of PhantomJS that is running.

## For MAC OS X
Download the PhantomJS zip file meant for MAC OS and extract the content. Once the content is downloaded, move the PhantomJS to – **/usr/local/bin/**. Execute PhantomJS command i.e. phantomjs –v at the terminal and it should give you the version description of PhantomJS.

## Linux 64 bit
Download the PhantomJS zip file meant for Linux 64 bit and extract the content. Once the content is downloaded, move PhantomJS folder to **/usr/local/share/** and **create a symlink** −

```
sudo mv $PHANTOM_JS /usr/local/share 
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin.
```
Execute phantomjs –v at the terminal and it should give the version of PhantomJS.

## Linux 32 bit
Download the PhantomJS zip file meant for Linux 32 bit and extract the content. Once the content is downloaded, move the PhantomJS folder to **/usr/local/share/** and create a symlink −

```
sudo mv $PHANTOM_JS /usr/local/share 
sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin.
```
Execute phantomjs –v at the terminal and it should give the version of PhantomJS.

The PhantomJS source code can also be taken from the git repository by clicking on the following link – [https://github.com/ariya/phantomjs/](https://github.com/ariya/phantomjs/) 

To run scripts in PhantomJS, the command is as follows −

```
phantomjs jsfile arg1 arg2…
```

[Previous Page](../phantomjs/phantomjs_overview.md) [Next Page](../phantomjs/phantomjs_object.md) 
