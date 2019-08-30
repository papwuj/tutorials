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


[Previous Page](../rxjava/rxjava_environment_setup.md) [Next Page](../rxjava/rxjava_creating_observables.md) 
