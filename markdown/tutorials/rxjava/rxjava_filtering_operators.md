# RxJava - Filtering Operators
Following are the operators which are used to selectively emit item(s) from an Observable.

## Filtering Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using take operator to filter an Observable
public class ObservableTester  {
   public static void main(String[] args) {    
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable = Observable.fromArray(letters);
      observable
         .take(2)
         .subscribe( letter -> result.append(letter));
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
ab
```

[Previous Page](../rxjava/rxjava_transforming_operators.md) [Next Page](../rxjava/rxjava_combining_operators.md) 
