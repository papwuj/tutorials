# RxJava - NewThread Scheduler
Schedulers.newThread() method creates and returns a Scheduler that creates a new Thread for each unit of work.

## Schedulers.newThread() Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import java.util.Random;

import io.reactivex.Observable;
import io.reactivex.schedulers.Schedulers;

public class ObservableTester  {
   public static void main(String[] args) throws InterruptedException {
      Observable.just("A", "AB", "ABC")
         .flatMap(v -> getLengthWithDelay(v)
         .doOnNext(s -> System.out.println("Processing Thread " 
            + Thread.currentThread().getName()))
         .subscribeOn(Schedulers.newThread()))
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
Processing Thread RxNewThreadScheduler-1
Receiver Thread RxNewThreadScheduler-1, Item length 1
Processing Thread RxNewThreadScheduler-2
Receiver Thread RxNewThreadScheduler-2, Item length 2
Processing Thread RxNewThreadScheduler-3
Receiver Thread RxNewThreadScheduler-3, Item length 3
```

[Previous Page](../rxjava/rxjava_trampoline_scheduler.md) [Next Page](../rxjava/rxjava_computation_scheduler.md) 
