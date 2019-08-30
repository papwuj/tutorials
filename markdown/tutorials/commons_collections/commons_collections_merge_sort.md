# Apache Commons Collections - Merge & Sort
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Merging two sorted lists
collate() method of CollectionUtils can be used to merge two already sorted lists.

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.collate()** method

```
public static <O extends Comparable<? super O>> List<O> 
   collate(Iterable<? extends O> a, Iterable<? extends O> b)
```
## Parameters
   * **a** − The first collection, must not be null.
   * **b** − The second collection, must not be null.

## Return Value
A new sorted List, containing the elements of Collection a and b.

## Exception
   * **NullPointerException** − If either collection is null.

## Example
The following example shows the usage of 

org.apache.commons.collections4.CollectionUtils.collate() method.

We'll merge two sorted lists and then print the merged and sorted list.

```
import java.util.Arrays;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;

public class CollectionUtilsTester {
   public static void main(String[] args) {
      List<String> sortedList1 = Arrays.asList("A","C","E");
      List<String> sortedList2 = Arrays.asList("B","D","F");
      List<String> mergedList = CollectionUtils.collate(sortedList1, sortedList2);
      System.out.println(mergedList); 
   }
}
```
## Output
It will print the following result.

```
[A, B, C, D, E, F]
```

[Previous Page](../commons_collections/commons_collections_ignore_null.md) [Next Page](../commons_collections/commons_collections_transforming_objects.md) 
