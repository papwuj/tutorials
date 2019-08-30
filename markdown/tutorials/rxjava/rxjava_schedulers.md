# RxJava - Schedulers
Schedulers are used in multi-threading environment to work with Observable operators. 

As per the [Reactive](http://reactivex.io/documentation/scheduler.html) ,Scheduler are used to schedule how chain of operators will apply to different threads.

By default, an Observable and the chain of operators that you apply to it will do its work, and will notify its observers, on the same thread on which its Subscribe method is called. The SubscribeOn operator changes this behavior by specifying a different Scheduler on which the Observable should operate. The ObserveOn operator specifies a different Scheduler that the Observable will use to send notifications to its observers.

There are following types of Schedulers available in RxJava −


[Previous Page](../rxjava/rxjava_asyncsubject.md) [Next Page](../rxjava/rxjava_trampoline_scheduler.md) 
