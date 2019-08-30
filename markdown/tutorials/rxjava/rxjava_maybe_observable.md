# RxJava - MayBe Observable
The MayBe class represents deferred response. MayBe observable can emit either a single successful value or no value.

## Class Declaration
Following is the declaration for **io.reactivex.Single<T>** class −

```
public abstract class Maybe<T>
   extends Object
      implements MaybeSource<T>
```
## Protocol
Following is the sequential protocol that MayBe Observable operates −

```
onSubscribe (onSuccess | onError | OnComplete)?
```
## MayBe Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import java.util.concurrent.TimeUnit;

import io.reactivex.Maybe;
import io.reactivex.disposables.Disposable;
import io.reactivex.observers.DisposableMaybeObserver;
import io.reactivex.schedulers.Schedulers;

public class ObservableTester {
   public static void main(String[] args) throws InterruptedException {
      //Create an observer
      Disposable disposable = Maybe.just("Hello World")
         .delay(2, TimeUnit.SECONDS, Schedulers.io())
         .subscribeWith(new DisposableMaybeObserver<String>() {
         @Override
         public void onError(Throwable e) { 
            e.printStackTrace();
         }

         @Override
         public void onSuccess(String value) {
            System.out.println(value);
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
Hello World
```

[Previous Page](../rxjava/rxjava_single_observable.md) [Next Page](../rxjava/rxjava_completable_observable.md) 
