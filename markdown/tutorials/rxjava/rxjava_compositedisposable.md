# RxJava - Using CompositeDisposable
The CompositeDisposable class represents a container which can hold multiple disposable and offers O(1) complexity of adding and removing disposables.

## Class Declaration
Following is the declaration for **io.reactivex.disposables.CompositeDisposable** class −

```
public final class CompositeDisposable
extends Object
implements Disposable, io.reactivex.internal.disposables.DisposableContainer
```
## CompositeDisposable Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Maybe;
import io.reactivex.Single;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.observers.DisposableMaybeObserver;
import io.reactivex.observers.DisposableSingleObserver;
import io.reactivex.schedulers.Schedulers;

import java.util.concurrent.TimeUnit;

public class ObservableTester  {
   public static void main(String[] args)  throws InterruptedException {    
      CompositeDisposable compositeDisposable = new CompositeDisposable();

      //Create an Single observer 
      Disposable disposableSingle = Single.just("Hello World")
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

      //Create an observer
      Disposable disposableMayBe = Maybe.just("Hi")
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

      compositeDisposable.add(disposableSingle);
      compositeDisposable.add(disposableMayBe);

      //start observing
      compositeDisposable.dispose();
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
Hello
Hi
```

[Previous Page](../rxjava/rxjava_completable_observable.md) [Next Page](../rxjava/rxjava_creating_operators.md) 
