# Angular 2 - Metadata
Metadata is used to decorate a class so that it can configure the expected behavior of the class. Following are the different parts for metadata.

**Annotations** − These are decorators at the class level. This is an array and an example having both the @Component and @Routes decorator.

Following is a sample code, which is present in the app.component.ts file.

```
@Component ({ 
   selector: 'my-app', 
   templateUrl: 'app/app.component.html' 
})
```
The component decorator is used to declare the class in the app.component.ts file as a component.

   * **Design:paramtypes** − These are only used for the constructors and applied only to Typescript.
   * **propMetadata** − This is the metadata which is applied to the properties of the class.

Following is an example code.

```
export class AppComponent {
   @Environment(‘test’)
   appTitle: string = 'Welcome';
}
```
Here, the @Environment is the metadata applied to the property appTitle and the value given is ‘test’.

**Parameters** − This is set by the decorators at the constructor level.

Following is an example code.

```
export class AppComponent {
   constructor(@Environment(‘test’ private appTitle:string) { }
}
```
In the above example, metadata is applied to the parameters of the constructor.


[Previous Page](../angular2/angular2_directives.md) [Next Page](../angular2/angular2_data_binding.md) 
