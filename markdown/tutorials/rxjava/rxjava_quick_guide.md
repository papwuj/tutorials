# RxJava - Quick Guide
# RxJava - Overview
RxJava is a Java based extension of ReactiveX. It provides implementation or ReactiveX project in Java. Following are the key characteristics of RxJava.

   * Extends the observer pattern.
   * Support sequences of data/events.
   * Provides operators to compose sequences together declaratively.
   * Handles threading, synchronization, thread-safety and concurrent data structures internally.

## What is ReactiveX?
ReactiveX is a project which aims to provide reactive programming concept to various programming languages. Reactive Programming refers to the scenario where program reacts as and when data appears. It is a event based programming concept and events can propagate to registers observers.

As per the **Reactive**, they have combined the best of Observer pattern, Iterator pattern and functional pattern.

The Observer pattern done right. ReactiveX is a combination of the best ideas from the Observer pattern, the Iterator pattern, and functional programming.

## Functional Programming
Functional programming revolves around building the software using pure functions. A pure function do not depends upon previous state and always returns the same result for the same parameters passed. Pure functions helps avoiding problems associated with shared objects, mutable data and side effects often prevalent in multi-threading environments.

## Reactive Programming
Reactive programming refers to event driven programming where data streams comes in asynchronous fashion and get processed when they are arrived.

## Functional Reactive Programming
RxJava implements both the concepts together, where data of streams changes over time and consumer function reacts accordingly.

## The Reactive Manifesto
[Reactive Manifesto](https://www.reactivemanifesto.org/)  is an on-line document stating the high standard of application software systems. As per the manifesto, following are the key attributes of a reactive software −

   * **Responsive** − Should always respond in a timely fashion.
   * **Message Driven** − Should use asynchronous message-passing between components so that they maintain loose coupling.
   * **Elastic** − Should stay responsive even under high load.
   * **Resilient** − Should stay responsive even if any component(s) fail.

## Key components of RxJava
RxJava have two key components: Observables and Observer.

   * **Observable** − It represents an object similar to Stream which can emit zero or more data, can send error message, whose speed can be controlled while emitting a set of data, can send finite as well as infinite data.
   * **Observer** − It subscribes to Observable's data of sequence and reacts per item of the observables. Observers are notified whenever Observable emits a data. An Observer handles data one by one.

An observer is never notified if items are not present or a callback is not returned for a previous item.

# RxJava - Environment Setup
## Local Environment Setup
RxJava is a library for Java, so the very first requirement is to have JDK installed in your machine.

### System Requirement
## Step 1 - Verify Java Installation in Your Machine
First of all, open the console and execute a java command based on the operating system you are working on.

Let's verify the output for all the operating systems −

If you do not have Java installed on your system, then download the Java Software Development Kit (SDK) from the following link [https://www.oracle.com](https://www.oracle.com/technetwork/java/javase/downloads/index.html) . We are assuming Java 1.8.0_101 as the installed version for this tutorial.

## Step 2 - Set JAVA Environment
Set the **JAVA_HOME** environment variable to point to the base directory location where Java is installed on your machine. For example.

Append Java compiler location to the System Path.

Verify Java installation using the command **java -version** as explained above.

## Step 3 - Download RxJava2 Archive
Download the latest version of RxJava jar file from [RxJava @ MVNRepository](https://mvnrepository.com/artifact/io.reactivex.rxjava2/rxjava)  and its dependency [Reactive Streams @ MVNRepository](https://mvnrepository.com/artifact/org.reactivestreams/reactive-streams)  . At the time of writing this tutorial, we have downloaded rxjava-2.2.4.jar, reactive-streams-1.0.2.jar and copied it into C:\&gt;RxJava folder.

## Step 4 - Set RxJava Environment
Set the **RX_JAVA** environment variable to point to the base directory location where RxJava jar is stored on your machine. Let’s assuming we've stored rxjava-2.2.4.jar and reactive-streams-1.0.2.jar in the RxJava folder.

## Step 5 - Set CLASSPATH Variable
Set the **CLASSPATH** environment variable to point to the RxJava jar location.

## Step 6 - Test RxJava Setup
Create a class TestRx.java as shown below −

```
import io.reactivex.Flowable;
public class TestRx {
   public static void main(String[] args) {
      Flowable.just("Hello World!")
         .subscribe(System.out::println);
   }
}
```
## Step 7 - Verify the Result
Compile the classes using **javac** compiler as follows −

```
C:\RxJava>javac Tester.java
```
Verify the output.

```
Hello World!
```
# RxJava - How Observable works
**Observables** represents the sources of data where as **Observers (Subscribers)** listen to them. In nutshell, an Observable emits items and a Subscriber then consumes these items.

## Observable
   * Observable provides data once subscriber starts listening.
   * Observable can emit any number of items.
   * Observable can emit only signal of completion as well with no item.
   * Observable can terminate successfully.
   * Observable may never terminate. e.g. a button can be clicked any number of times.
   * Observable may throw error at any point of time.

## Subscriber
   * Observable can have multiple subscribers.
   * When an Observable emits an item, each subscriber onNext() method gets invoked.
   * When an Observable finished emitting items, each subscriber onComplete() method gets invoked.
   * If an Observable emits error, each subscriber onError() method gets invoked.

# RxJava - Creating Observables
Following are the base classes to create observables.

   * **Flowable** − 0..N flows, Emits 0 or n items. Supports Reactive-Streams and back-pressure.
   * **Observable** − 0..N flows ,but no back-pressure.
   * **Single** − 1 item or error. Can be treated as a reactive version of method call.
   * **Completable** − No item emitted. Used as a signal for completion or error. Can be treated as a reactive version of Runnable.
   * **MayBe** − Either No item or 1 item emitted. Can be treated as a reactive version of Optional.

Following are the convenient methods to create observables in Observable class.

   * **just(T item)** − Returns an Observable that signals the given (constant reference) item and then completes.
   * **fromIterable(Iterable source)** − Converts an Iterable sequence into an ObservableSource that emits the items in the sequence.
   * **fromArray(T... items)** − Converts an Array into an ObservableSource that emits the items in the Array.
   * **fromCallable(Callable supplier)** − Returns an Observable that, when an observer subscribes to it, invokes a function you specify and then emits the value returned from that function.
   * **fromFuture(Future future)** − Converts a Future into an ObservableSource.
   * **interval(long initialDelay, long period, TimeUnit unit)** − Returns an Observable that emits a 0L after the initialDelay and ever increasing numbers after each period of time thereafter.

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
# RxJava - Creating Operators
Following are the operators which are used to create an Observable.

## Creating Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using fromArray operator to create an Observable
public class ObservableTester  {
   public static void main(String[] args) { 
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable = Observable.fromArray(letters);
      observable
         .map(String::toUpperCase)
         .subscribe( letter -> result.append(letter));
      System.out.println(result);
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
ABCDEFG
```
# RxJava - Transforming Operators
Following are the operators which are used to transform an item emitted from an Observable.

## Transforming Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using map operator to transform an Observable
public class ObservableTester  { 
   public static void main(String[] args) {    
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable = Observable.fromArray(letters);
      observable
         .map(String::toUpperCase)
         .subscribe( letter -> result.append(letter));
      System.out.println(result);
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
ABCDEFG
```
# RxJava - Filtering Operators
Following are the operators which are used to selectively emit item(s) from an Observable.

## Filtering Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using take operator to filter an Observable
public class ObservableTester  {
   public static void main(String[] args) {    
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable = Observable.fromArray(letters);
      observable
         .take(2)
         .subscribe( letter -> result.append(letter));
      System.out.println(result);
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
ab
```
# RxJava - Combining Operators
Following are the operators which are used to create a single Observable from multiple Observables.

## Combining Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using combineLatest operator to combine Observables
public class ObservableTester {
   public static void main(String[] args) {    
      Integer[] numbers = { 1, 2, 3, 4, 5, 6};
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable1 = Observable.fromArray(letters);
      Observable<Integer> observable2 = Observable.fromArray(numbers);
      Observable.combineLatest(observable1, observable2, (a,b) -> a + b)
         .subscribe( letter -> result.append(letter));
      System.out.println(result);
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
g1g2g3g4g5g6
```
# RxJava - Utility Operators
Following are the operators which are often useful with Observables.

## Utility Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using subscribe operator to subscribe to an Observable
public class ObservableTester  {
   public static void main(String[] args) {    
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable = Observable.fromArray(letters);
      observable.subscribe( letter -> result.append(letter));
      System.out.println(result);
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
abcdefg
```
# RxJava - Conditional Operators
Following are the operators which evaluates one or multiple Observables or items emitted.

## Conditional Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using defaultIfEmpty operator to operate on an Observable
public class ObservableTester  {
   public static void main(String[] args) {    
      final StringBuilder result = new StringBuilder();
      Observable.empty()
      .defaultIfEmpty("No Data")
      .subscribe(s -> result.append(s));
      System.out.println(result);
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result1 = new StringBuilder();
      Observable.fromArray(letters)
      .firstElement()
      .defaultIfEmpty("No data")   
      .subscribe(s -> result1.append(s));
      System.out.println(result1);
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
No Data
a
```
# RxJava - Mathematical Operators
Following are the operators which operates on entire items emitted by an Observable.

## Mathematical Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
//Using concat operator to operate on multiple Observables
public class ObservableTester  {
   public static void main(String[] args)  throws InterruptedException {    
      Integer[] numbers = { 1, 2, 3, 4, 5, 6};
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      Observable<String> observable1 = Observable.fromArray(letters);
      Observable<Integer> observable2 = Observable.fromArray(numbers);
      Observable.concat(observable1, observable2)
         .subscribe( letter -> result.append(letter));
      System.out.println(result);
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
abcdefg123456
```
# RxJava - Connectable Operators
Following are the operators which has more precisely control over subscription.

## Connectable Operator Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
import io.reactivex.observables.ConnectableObservable;
//Using connect operator on a ConnectableObservable
public class ObservableTester {
   public static void main(String[] args) {
      String[] letters = {"a", "b", "c", "d", "e", "f", "g"};
      final StringBuilder result = new StringBuilder();
      ConnectableObservable<String> connectable = Observable.fromArray(letters).publish();      
      connectable.subscribe(letter -> result.append(letter));
      System.out.println(result.length());
      connectable.connect();
      System.out.println(result.length());
      System.out.println(result);
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
0
7
abcdefg
```
# RxJava - Subjects
As per the [Reactive](http://reactivex.io/documentation/subject.html) , a Subject can act as both Observable as well as Observer.

There are four types of Subjects −

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
# RxJava - Schedulers
Schedulers are used in multi-threading environment to work with Observable operators. 

As per the [Reactive](http://reactivex.io/documentation/scheduler.html) ,Scheduler are used to schedule how chain of operators will apply to different threads.

By default, an Observable and the chain of operators that you apply to it will do its work, and will notify its observers, on the same thread on which its Subscribe method is called. The SubscribeOn operator changes this behavior by specifying a different Scheduler on which the Observable should operate. The ObserveOn operator specifies a different Scheduler that the Observable will use to send notifications to its observers.

There are following types of Schedulers available in RxJava −

# RxJava - Trampoline Scheduler
Schedulers.trampoline() method creates and returns a Scheduler that queues work on the current thread to be executed after the current work completes.

## Schedulers.trampoline() Example
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
         .subscribeOn(Schedulers.trampoline()))
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
Processing Thread main
Receiver Thread main, Item length 1
Processing Thread main
Receiver Thread main, Item length 2
Processing Thread main
Receiver Thread main, Item length 3
```
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
# RxJava - Computation Scheduler
Schedulers.computation() method creates and returns a Scheduler intended for computational work. Count of threads to be scheduled depends upon the CPUs present in the system. One thread is allowed per CPU. Best for event-loops or callback operations.

## Schedulers.computation() Example
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
         .subscribeOn(Schedulers.computation()))
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
Processing Thread RxComputationThreadPool-1
Receiver Thread RxComputationThreadPool-1, Item length 1
Processing Thread RxComputationThreadPool-2
Receiver Thread RxComputationThreadPool-2, Item length 2
Processing Thread RxComputationThreadPool-3
Receiver Thread RxComputationThreadPool-3, Item length 3
```
# RxJava - IO Scheduler
Schedulers.io() method creates and returns a Scheduler intended for IO-bound work. Thread pool may extend as needed. Best for I/O intensive operations.

## Schedulers.io() Example
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
         .subscribeOn(Schedulers.io()))
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
Processing Thread RxCachedThreadScheduler-1
Receiver Thread RxCachedThreadScheduler-1, Item length 1
Processing Thread RxCachedThreadScheduler-1
Receiver Thread RxCachedThreadScheduler-1, Item length 2
Processing Thread RxCachedThreadScheduler-1
Receiver Thread RxCachedThreadScheduler-1, Item length 3
```
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
# RxJava - Buffering
Buffering operator allows to gather items emitted by an Observable into a list or bundles and emit those bundles instead of items. In the example below, we've created an Observable to emit 9 items and using buffering, 3 items will be emitted together.

## Buffering Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;

import java.util.List;
import java.util.concurrent.TimeUnit;

public class ObservableTester {
   public static void main(String[] args) throws InterruptedException {
      Observable<Integer> observable = Observable.just(1, 2, 3, 4,
         5, 6, 7, 8, 9);

      observable.subscribeOn(Schedulers.io())
         .delay(2, TimeUnit.SECONDS, Schedulers.io())
         .buffer(3)
         .subscribe(new Observer<List<Integer>>() {
            @Override
            public void onSubscribe(Disposable d) {
               System.out.println("Subscribed");
            }
            @Override
            public void onNext(List<Integer> integers) {
               System.out.println("onNext: ");
               for (Integer value : integers) {
                  System.out.println(value);
               }
            }
            @Override
            public void onError(Throwable e) {
               System.out.println("Error");
            }

            @Override
            public void onComplete() {
               System.out.println("Done! ");
            }
         });
      Thread.sleep(3000);
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
Subscribed
onNext: 
1
2
3
onNext: 
4
5
6
onNext: 
7
8
9
Done!
```
# RxJava - Windowing
Windowing operator works similar to buffer operator but it allows to gather items emitted by an Observable into another observable instead of collection and emit those Observables instead of collections. In the example below, we've created an Observable to emit 9 items and using window operator, 3 Observable will be emitted together.

## Windowing Example
Create the following Java program using any editor of your choice in, say, C:\&gt; RxJava.

### ObservableTester.java
```
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;

import java.util.concurrent.TimeUnit;

public class ObservableTester {
   public static void main(String[] args) throws InterruptedException {
      Observable<Integer> observable = Observable.just(1, 2, 3, 4,
         5, 6, 7, 8, 9);

      observable.subscribeOn(Schedulers.io())
         .delay(2, TimeUnit.SECONDS, Schedulers.io())
         .window(3)
         .subscribe(new Observer<Observable<Integer>>() {
            @Override
            public void onSubscribe(Disposable d) {
               System.out.println("Subscribed");
            }
            @Override
            public void onNext(Observable<Integer> integers) {
               System.out.println("onNext: ");
               integers.subscribe(value -> System.out.println(value));
            }
            @Override
            public void onError(Throwable e) {
               System.out.println("Error");
            }

            @Override
            public void onComplete() {
               System.out.println("Done! ");
            }
         });
      Thread.sleep(3000);
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
Subscribed
onNext: 
1
2
3
onNext: 
4
5
6
onNext: 
7
8
9
Done!
```

[Previous Page](../rxjava/rxjava_windowing.md) [Next Page](../rxjava/rxjava_useful_resources.md) 
