# RxJava - Utility Operators
Following are the operators which are often useful with Observables.

## Utility Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using subscribe operator to subscribe to an Observable
public class ObservableTester  {
   public static void main(String[] args) {    
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable = Observable.fromArray(letters);
      observable.subscribe( letter -> result.append(letter));
      System.out.println(result);
   }
}
```
### Verify the Result
Compile the class using **javac** compiler as follows −

```
C:\RxJava>javac ObservableTester.java
```
Now run the ObservableTester as follows −

```
C:\RxJava>java ObservableTester
```
It should produce the following output −

```
abcdefg
```

[Previous Page](../rxjava/rxjava_combining_operators.md) [Next Page](../rxjava/rxjava_conditional_operators.md) 
