# Apache Commons Collections - Intersection
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Checking intersection
intersection() method of CollectionUtils can be used to get the common objects between two collections(intersection).

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.intersection()** method

```
public static <O> Collection<O> intersection(Iterable<? extends O> a,
   Iterable<? extends O> b)
```
## Parameters
   * **a** − The first (sub) collection, must not be null.
   * **b** − The second (super) collection, must not be null.

## Return Value
The intersection of the two collections.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.intersection() method. We'll get the intersection of two lists.

```
import java.util.Arrays;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;

public class CollectionUtilsTester {
   public static void main(String[] args) {
      //checking inclusion
      List<String> list1 = Arrays.asList("A","A","A","C","B","B");
      List<String> list2 = Arrays.asList("A","A","B","B");

      System.out.println("List 1: " + list1);
      System.out.println("List 2: " + list2);
      System.out.println("Commons Objects of List 1 and List 2: " 
         + CollectionUtils.intersection(list1, list2));
   }
}
```
## Output
It will print the following result.

```
List 1: [A, A, A, C, B, B]
List 2: [A, A, B, B]
Commons Objects of List 1 and List 2: [A, A, B, B]
```

[Previous Page](../commons_collections/commons_collections_inclusion.md) [Next Page](../commons_collections/commons_collections_subtraction.md) 
