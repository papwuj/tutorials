# RxJava - ReplaySubject
ReplaySubject replays events/items to current and late Observers.

## Class Declaration
Following is the declaration for **io.reactivex.subjects.ReplaySubject<T>** class −

```
public final class ReplaySubject<T>
extends Subject<T>
```
## ReplaySubject Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.subjects.ReplaySubject;
public class ObservableTester  {
   public static void main(String[] args) {   
      final StringBuilder result1 = new StringBuilder();
      final StringBuilder result2 = new StringBuilder();         

      ReplaySubject<String> subject = ReplaySubject.create(); 
      subject.subscribe(value -> result1.append(value) ); 
      subject.onNext("a"); 
      subject.onNext("b"); 
      subject.onNext("c"); 
      subject.subscribe(value -> result2.append(value)); 
      subject.onNext("d"); 
      subject.onComplete();

      //Output will be abcd
      System.out.println(result1);
      //Output will be abcd being ReplaySubject
      //as ReplaySubject emits all the items
      System.out.println(result2);
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
abcd
abcd
```

[Previous Page](../rxjava/rxjava_behaviorsubject.md) [Next Page](../rxjava/rxjava_asyncsubject.md) 
