# RxJava - Single Observable
The Single class represents the single value response. Single observable can only emit either a single successful value or an error. It does not emit onComplete event.

## Class Declaration
Following is the declaration for **io.reactivex.Single<T>** class −

```
public abstract class Single<T>
   extends Object
      implements SingleSource<T>
```
## Protocol
Following is the sequential protocol that Single Observable operates −

```
onSubscribe (onSuccess | onError)?
```
## Single Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import java.util.concurrent.TimeUnit;

import io.reactivex.Single;
import io.reactivex.disposables.Disposable;
import io.reactivex.observers.DisposableSingleObserver;
import io.reactivex.schedulers.Schedulers;

public class ObservableTester  {
   public static void main(String[] args)  throws InterruptedException {
      //Create the observable
      Single<String> testSingle = Single.just("Hello World");

      //Create an observer
      Disposable disposable = testSingle
         .delay(2, TimeUnit.SECONDS, Schedulers.io())
         .subscribeWith(
         new DisposableSingleObserver<String>() {

         @Override
         public void onError(Throwable e) { 
            e.printStackTrace();
         }

         @Override
         public void onSuccess(String value) {
            System.out.println(value);
         }
      }); 
      Thread.sleep(3000);
      //start observing
      disposable.dispose();
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
Hello World
```

[Previous Page](../rxjava/rxjava_creating_observables.md) [Next Page](../rxjava/rxjava_maybe_observable.md) 
