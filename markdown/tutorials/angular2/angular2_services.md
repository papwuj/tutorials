# Angular 2 - Services
A service is used when a common functionality needs to be provided to various modules. For example, we could have a database functionality that could be reused among various modules. And hence you could create a service that could have the database functionality.

![Modules](../angular2/images/modules.jpg)

The following key steps need to be carried out when creating a service.

**Step 1** − Create a separate class which has the injectable decorator. The injectable decorator allows the functionality of this class to be injected and used in any Angular JS module.

```
@Injectable() 
   export class classname {  
}
```
**Step 2** − Next in your appComponent module or the module in which you want to use the service, you need to define it as a provider in the @Component decorator.

```
@Component ({  
   providers : [classname] 
})
```
Let�s look at an example on how to achieve this. Following are the steps involved.

**Step 1** − Create a **ts** file for the service called app.service.ts.

![Demo ts](../angular2/images/demo_ts.jpg)

**Step 2** − Place the following code in the file created above.

```
import { 
   Injectable 
} from '@angular/core';  

@Injectable()
export class appService {  
   getApp(): string { 
      return "Hello world"; 
   } 
}
```
Following points need to be noted about the above program.

   * The Injectable decorator is imported from the angular/core module.
   * We are creating a class called appService that is decorated with the Injectable decorator.
   * We are creating a simple function called getApp, which returns a simple string called �Hello world�.

**Step 3** − In the app.component.ts file, place the following code.

```
import { 
   Component 
} from '@angular/core';  

import { 
   appService 
} from './app.service';  

@Component ({ 
   selector: 'demo-app', 
   template: '<div>{{value}}</div>', 
   providers: [appService] 
}) 

export class AppComponent { 
   value: string = ""; 
   constructor(private _appService: appService) { }  

   ngOnInit(): void { 
      this.value = this._appService.getApp(); 
   } 
}
```
Following points need to be noted about the above program.

   * First, we import our appService module in the appComponent module.
   * Then, we register the service as a provider in this module.
   * In the constructor, we define a variable called _appService of the type appService so that it can be called anywhere in the appComponent module.
   * As an example, in the ngOnInit lifecyclehook, we called the getApp function of the service and assign the output to the value property of the AppComponent class.

Once you save all the code changes and refresh the browser, you will get the following output.

![Services](../angular2/images/services.jpg)


[Previous Page](../angular2/angular2_nested_containers.md) [Next Page](../angular2/angular2_questions_answers.md) 
