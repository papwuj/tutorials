# Angular 2 - Navigation
In Angular 2, it is also possible to carry out manual navigation. Following are the steps.

**Step 1** − Add the following code to the Inventory.component.ts file.

```
import { Component } from '@angular/core'; 
import { Router }  from '@angular/router';  

@Component ({  
   selector: 'my-app',  
   template: 'Inventory 
   <a class = "button" (click) = "onBack()">Back to Products</a>' 
})  

export class AppInventory {  
   constructor(private _router: Router){} 

   onBack(): void { 
      this._router.navigate(['/Product']); 
   } 
}
```
The following points need to be noted about the above program −

   * Declare an html tag which has an onBack function tagged to the click event. Thus, when a user clicks this, they will be directed back to the Products page.
   * In the onBack function, use the router.navigate to navigate to the required page.

**Step 2** − Now, save all the code and run the application using npm. Go to the browser, you will see the following output.

![Application Using npm](../angular2/images/application_using_npm.jpg)

**Step 3** − Click the Inventory link.

![Inventory Link](../angular2/images/inventory_link.jpg)

**Step 4** − Click the ‘Back to products’ link, you will get the following output which takes you back to the Products page.

![Back to Products](../angular2/images/back_to_products.jpg)


[Previous Page](../angular2/angular2_routing.md) [Next Page](../angular2/angular2_forms.md) 
