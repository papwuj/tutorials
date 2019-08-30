# Angular 2 - Error Handling
Angular 2 applications have the option of error handling. This is done by including the ReactJS catch library and then using the catch function.

Let’s see the code required for error handling. This code can be added on top of the chapter for CRUD operations using http.

In the product.service.ts file, enter the following code −

```
import { Injectable } from '@angular/core'; 
import { Http , Response } from '@angular/http'; 
import { Observable } from 'rxjs/Observable'; 

import 'rxjs/add/operator/map'; 
import 'rxjs/add/operator/do'; 
import 'rxjs/add/operator/catch'; 
import { IProduct } from './product';  

@Injectable() 
export class ProductService { 
   private _producturl = 'app/products.json'; 
   constructor(private _http: Http){}  

   getproducts(): Observable<IProduct[]> { 
      return this._http.get(this._producturl) 
      .map((response: Response) => <IProduct[]> response.json()) 
      .do(data => console.log(JSON.stringify(data))) 
      .catch(this.handleError); 
   }  
   
   private handleError(error: Response) { 
      console.error(error); 
      return Observable.throw(error.json().error()); 
   } 
}
```


   * The catch function contains a link to the Error Handler function.
   * In the error handler function, we send the error to the console. We also throw the error back to the main program so that the execution can continue.

Now, whenever you get an error it will be redirected to the error console of the browser.


[Previous Page](../angular2/angular2_crud_operations_using_http.md) [Next Page](../angular2/angular2_routing.md) 
