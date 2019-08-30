# RxJava - Completable Observable
The Completable class represents deferred response. Completable observable can either indicate a successful completion or error.

## Class Declaration
Following is the declaration for **io.reactivex.Completable** class −

```
public abstract class Completable
extends Object
implements CompletableSource
```
## Protocol
Following is the sequential protocol that Completable Observable operates −

```
onSubscribe (onError | onComplete)?
```
## Completable Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import java.util.concurrent.TimeUnit;

import io.reactivex.Completable;
import io.reactivex.disposables.Disposable;
import io.reactivex.observers.DisposableCompletableObserver;
import io.reactivex.schedulers.Schedulers;

public class ObservableTester {
   public static void main(String[] args) throws InterruptedException {

      //Create an observer
      Disposable disposable = Completable.complete()
         .delay(2, TimeUnit.SECONDS, Schedulers.io())
         .subscribeWith(new DisposableCompletableObserver() {
         @Override
         public void onError(Throwable e) { 
            e.printStackTrace();
         }
         @Override
         public void onStart() {
            System.out.println("Started!");
         }
         @Override
         public void onComplete() {
            System.out.println("Done!");
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
Started!
Done!
```

[Previous Page](../rxjava/rxjava_maybe_observable.md) [Next Page](../rxjava/rxjava_compositedisposable.md) 
