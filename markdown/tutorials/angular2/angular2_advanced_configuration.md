# Angular 2 - Advanced Configuration
In this chapter, we will look at the other configuration files which are part of Angular 2 project.

## tsconfig.json
This file is used to give the options about TypeScript used for the Angular JS project.

```
{ 
   "compilerOptions": {
      "target": "es5",
      "module": "commonjs",
      "moduleResolution": "node",
      "sourceMap": true,
      "emitDecoratorMetadata": true,
      "experimentalDecorators": true,
      "lib": [ "es2015", "dom" ],
      "noImplicitAny": true,
      "suppressImplicitAnyIndexErrors": true
   }
}
```
Following are some key points to note about the above code.

   * The target for the compilation is es5 and that is because most browsers can only understand ES5 typescript.
   * The sourceMap option is used to generate Map files, which are useful when debugging. Hence, during development it is good to keep this option as true.
   * The "emitDecoratorMetadata": true and "experimentalDecorators": true is required for Angular JS decorators. If not in place, Angular JS application will not compile.

## package.json
This file contains information about Angular 2 project. Following are the typical settings in the file.

```
{
   "name": "angular-quickstart",
   "version": "1.0.0",
   "description": "QuickStart package.json from the documentation,
      supplemented with testing support",
   
   "scripts": {
      "build": "tsc -p src/",
      "build:watch": "tsc -p src/ -w",
      "build:e2e": "tsc -p e2e/",
      "serve": "lite-server -c=bs-config.json",
      "serve:e2e": "lite-server -c=bs-config.e2e.json",
      "prestart": "npm run build",
      "start": "concurrently \"npm run build:watch\" \"npm run serve\"",
      "pree2e": "npm run build:e2e",
      "e2e": "concurrently \"npm run serve:e2e\" \"npm run protractor\" 
         --killothers --success first",
      "preprotractor": "webdriver-manager update",
      "protractor": "protractor protractor.config.js",
      "pretest": "npm run build",
      "test": "concurrently \"npm run build:watch\" \"karma start karma.conf.js\"",
      "pretest:once": "npm run build",
      "test:once": "karma start karma.conf.js --single-run",
      "lint": "tslint ./src/**/*.ts -t verbose"
   },

   "keywords": [],
   "author": "",
   "license": "MIT",
   "dependencies": {
      "@angular/common": "~2.4.0",
      "@angular/compiler": "~2.4.0",
      "@angular/core": "~2.4.0",
      "@angular/forms": "~2.4.0",
      "@angular/http": "~2.4.0",
      "@angular/platform-browser": "~2.4.0",
      "@angular/platform-browser-dynamic": "~2.4.0",
      "@angular/router": "~3.4.0",
      "angular-in-memory-web-api": "~0.2.4",
      "systemjs": "0.19.40",
      "core-js": "^2.4.1",
      "rxjs": "5.0.1",
      "zone.js": "^0.7.4"
   },

   "devDependencies": {
      "concurrently": "^3.2.0",
      "lite-server": "^2.2.2",
      "typescript": "~2.0.10",
      "canonical-path": "0.0.2",
      "tslint": "^3.15.1",
      "lodash": "^4.16.4",
      "jasmine-core": "~2.4.1",
      "karma": "^1.3.0",
      "karma-chrome-launcher": "^2.0.0",
      "karma-cli": "^1.0.1",
      "karma-jasmine": "^1.0.2",
      "karma-jasmine-html-reporter": "^0.2.2",
      "protractor": "~4.0.14",
      "rimraf": "^2.5.4",
      "@types/node": "^6.0.46",
      "@types/jasmine": "2.5.36"
   },
   "repository": {}
}
```
Some key points to note about the above code −

   * There are two types of dependencies, first is the dependencies and then there are dev dependencies. The dev ones are required during the development process and the others are needed to run the application.
   * The "build:watch": "tsc -p src/ -w" command is used to compile the typescript in the background by looking for changes in the typescript files.

## systemjs.config.json
This file contains the system files required for Angular JS application. This loads all the necessary script files without the need to add a script tag to the html pages. The typical files will have the following code.

```
/** 
 * System configuration for Angular samples 
 * Adjust as necessary for your application needs. 
*/ 
(function (global) { 
   System.config ({ 
      paths: { 
         // paths serve as alias 
         'npm:': 'node_modules/' 
      }, 
      
      // map tells the System loader where to look for things 
      map: { 
         // our app is within the app folder 
         app: 'app',  
         
         // angular bundles 
         '@angular/core': 'npm:@angular/core/bundles/core.umd.js', 
         '@angular/common': 'npm:@angular/common/bundles/common.umd.js', 
         '@angular/compiler': 'npm:@angular/compiler/bundles/compiler.umd.js', 
         '@angular/platform-browser': 'npm:@angular/platformbrowser/bundles/platform-browser.umd.js', 
         '@angular/platform-browser-dynamic': 
            'npm:@angular/platform-browserdynamic/bundles/platform-browser-dynamic.umd.js', 
         '@angular/http': 'npm:@angular/http/bundles/http.umd.js', 
         '@angular/router': 'npm:@angular/router/bundles/router.umd.js', 
         '@angular/forms': 'npm:@angular/forms/bundles/forms.umd.js',  
         
         // other libraries 
         'rxjs':  'npm:rxjs', 
         'angular-in-memory-web-api': 
            'npm:angular-in-memory-web-api/bundles/inmemory-web-api.umd.js' 
      }, 
     
      // packages tells the System loader how to load when no filename 
         and/or no extension 
      packages: { 
         app: { 
            defaultExtension: 'js' 
         }, 
         
         rxjs: { 
            defaultExtension: 'js' 
         } 
      } 
   
   }); 
})(this);
```
Some key points to note about the above code −

   * 'npm:': 'node_modules/' tells the location in our project where all the npm modules are located.
   * The mapping of app: 'app' tells the folder where all our applications files are loaded.


[Previous Page](../angular2/angular2_dependency_injection.md) [Next Page](../angular2/angular2_third_party_controls.md) 
