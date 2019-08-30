# RxJava - PublishSubject
PublishSubject emits items to currently subscribed Observers and terminal events to current or late Observers.

## Class Declaration
Following is the declaration for **io.reactivex.subjects.PublishSubject<T>** class −

```
public final class PublishSubject<T>
extends Subject<T>
```
## PublishSubject Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.subjects.PublishSubject;
public class ObservableTester  {
   public static void main(String[] args) {   
      final StringBuilder result1 = new StringBuilder();
      final StringBuilder result2 = new StringBuilder();         

      PublishSubject<String> subject = PublishSubject.create(); 
      subject.subscribe(value -> result1.append(value) ); 
      subject.onNext("a"); 
      subject.onNext("b"); 
      subject.onNext("c"); 
      subject.subscribe(value -> result2.append(value)); 
      subject.onNext("d"); 
      subject.onComplete();

      //Output will be abcd 
      System.out.println(result1);
      //Output will be d only
      //as subscribed after c item emitted.
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
d
```

[Previous Page](../rxjava/rxjava_subjects.md) [Next Page](../rxjava/rxjava_behaviorsubject.md) 
