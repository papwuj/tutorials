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


[Previous Page](../rxjava/rxjava_how_observable_works.md) [Next Page](../rxjava/rxjava_single_observable.md) 
