# RxJava - AsyncSubject
AsyncSubject emits the only last value followed by a completion event or the received error to Observers.

## Class Declaration
Following is the declaration for **io.reactivex.subjects.AsyncSubject<T>** class −

```
public final class  AsyncSubject<T>
extends Subject<T>
```
## AsyncSubject Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.subjects. AsyncSubject;
public class ObservableTester  {
   public static void main(String[] args) {   
      final StringBuilder result1 = new StringBuilder();
      final StringBuilder result2 = new StringBuilder();         

      AsyncSubject<String> subject =  AsyncSubject.create(); 
      subject.subscribe(value -> result1.append(value) ); 
      subject.onNext("a"); 
      subject.onNext("b"); 
      subject.onNext("c"); 
      subject.subscribe(value -> result2.append(value)); 
      subject.onNext("d"); 
      subject.onComplete();

      //Output will be d being the last item emitted
      System.out.println(result1);
      //Output will be d being the last item emitted     
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
d
d
```

[Previous Page](../rxjava/rxjava_replaysubject.md) [Next Page](../rxjava/rxjava_schedulers.md) 
