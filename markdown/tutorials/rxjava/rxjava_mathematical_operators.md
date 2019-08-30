# RxJava - Mathematical Operators
Following are the operators which operates on entire items emitted by an Observable.

## Mathematical Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using concat operator to operate on multiple Observables
public class ObservableTester  {
   public static void main(String[] args)  throws InterruptedException {    
      Integer[] numbers = { 1, 2, 3, 4, 5, 6};
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable1 = Observable.fromArray(letters);
      Observable<Integer> observable2 = Observable.fromArray(numbers);
      Observable.concat(observable1, observable2)
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
abcdefg123456
```

[Previous Page](../rxjava/rxjava_conditional_operators.md) [Next Page](../rxjava/rxjava_connectable_operators.md) 
