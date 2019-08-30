# RxJava - Conditional Operators
Following are the operators which evaluates one or multiple Observables or items emitted.

## Conditional Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using defaultIfEmpty operator to operate on an Observable
public class ObservableTester  {
   public static void main(String[] args) {    
      final StringBuilder result = new StringBuilder();
      Observable.empty()
      .defaultIfEmpty("No Data")
      .subscribe(s -> result.append(s));
      System.out.println(result);
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result1 = new StringBuilder();
      Observable.fromArray(letters)
      .firstElement()
      .defaultIfEmpty("No data")   
      .subscribe(s -> result1.append(s));
      System.out.println(result1);
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
No Data
a
```

[Previous Page](../rxjava/rxjava_utility_operators.md) [Next Page](../rxjava/rxjava_mathematical_operators.md) 
