# RxJava - Combining Operators
Following are the operators which are used to create a single Observable from multiple Observables.

## Combining Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using combineLatest operator to combine Observables
public class ObservableTester {
   public static void main(String[] args) {    
      Integer[] numbers = { 1, 2, 3, 4, 5, 6};
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable1 = Observable.fromArray(letters);
      Observable<Integer> observable2 = Observable.fromArray(numbers);
      Observable.combineLatest(observable1, observable2, (a,b) -> a + b)
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
g1g2g3g4g5g6
```

[Previous Page](../rxjava/rxjava_filtering_operators.md) [Next Page](../rxjava/rxjava_utility_operators.md) 
