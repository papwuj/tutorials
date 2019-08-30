# RxJava - Connectable Operators
Following are the operators which has more precisely control over subscription.

## Connectable Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
import io.reactivex.observables.ConnectableObservable;
//Using connect operator on a ConnectableObservable
public class ObservableTester {
   public static void main(String[] args) {
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      ConnectableObservable<String> connectable = Observable.fromArray(letters).publish();      
      connectable.subscribe(letter -> result.append(letter));
      System.out.println(result.length());
      connectable.connect();
      System.out.println(result.length());
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
0
7
abcdefg
```

[Previous Page](../rxjava/rxjava_mathematical_operators.md) [Next Page](../rxjava/rxjava_subjects.md) 
