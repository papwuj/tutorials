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


[Previous Page](../rxjava/index.md) [Next Page](../rxjava/rxjava_environment_setup.md) 
