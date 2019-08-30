# RxJava - BehaviorSubject
BehaviorSubject emits the most recent item it has observed and then all subsequent observed items to each subscribed Observer.

## Class Declaration
Following is the declaration for **io.reactivex.subjects.BehaviorSubject<T>** class −

```
public final class BehaviorSubject<T>
extends Subject<T>
```
## BehaviorSubject Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.subjects.BehaviorSubject;
public class ObservableTester  {
   public static void main(String[] args) {   
      final StringBuilder result1 = new StringBuilder();
      final StringBuilder result2 = new StringBuilder();         
      BehaviorSubject<String> subject =  BehaviorSubject.create(); 
      subject.subscribe(value -> result1.append(value) ); 
      subject.onNext("a"); 
      subject.onNext("b"); 
      subject.onNext("c"); 
      subject.subscribe(value -> result2.append(value)); 
      subject.onNext("d"); 
      subject.onComplete();
      //Output will be abcd
      System.out.println(result1);
      //Output will be cd being BehaviorSubject 
      //(c is last item emitted before subscribe)
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
cd
```

[Previous Page](../rxjava/rxjava_publishsubject.md) [Next Page](../rxjava/rxjava_replaysubject.md) 
