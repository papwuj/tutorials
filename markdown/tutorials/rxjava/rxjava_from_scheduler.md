# RxJava - From Scheduler
Schedulers.from(Executor) method converts an Executor into a new Scheduler instance.

## Schedulers.from(Executor) Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import java.util.Random;
import java.util.concurrent.Executors;

import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;

public class ObservableTester  {
   public static void main(String[] args) throws InterruptedException {
      Observable.just("A", "AB", "ABC")
         .flatMap(v -> getLengthWithDelay(v)
         .doOnNext(s -> System.out.println("Processing Thread " 
            + Thread.currentThread().getName()))
         .subscribeOn(Schedulers.from(Executors.newFixedThreadPool(3))))
         .subscribe(length -> System.out.println("Receiver Thread " 
            + Thread.currentThread().getName() 
            + ", Item length " + length));

         Thread.sleep(10000);
   }
   protected static Observable<Integer> getLengthWithDelay(String v) {
      Random random = new Random();
      try {
         Thread.sleep(random.nextInt(3) * 1000);
         return Observable.just(v.length());
      } catch (InterruptedException e) {
         e.printStackTrace();
      }
      return null;
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
Processing Thread pool-1-thread-1
Processing Thread pool-3-thread-1
Receiver Thread pool-1-thread-1, Item length 1
Processing Thread pool-4-thread-1
Receiver Thread pool-4-thread-1, Item length 3
Receiver Thread pool-3-thread-1, Item length 2
```

[Previous Page](../rxjava/rxjava_io_scheduler.md) [Next Page](../rxjava/rxjava_buffering.md) 
