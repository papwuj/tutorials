# Apache Commons Collections - Subtraction
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Checking Substraction
subtract() method of CollectionUtils can be used to get the new collection by subtracting objects of one collection from other.

## Declaration
Following is the declaration for 

**org.apache.commons.collections4.CollectionUtils.subtract()** method −

```
public static <O> Collection<O> subtract(Iterable<? extends O> a,
   Iterable<? extends O> b)
```
## Parameters
   * **a** − The collection to subtract from, must not be null.
   * **b** − The collection to subtract, must not be null.

## Return Value
A new collection with the results.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.subtract() method. We'll get the subtraction of two lists.

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
      System.out.println("List 1 - List 2: " 
         + CollectionUtils.subtract(list1, list2));
   }
}
```
## Output
It will print the following result.

```
List 1: [A, A, A, C, B, B]
List 2: [A, A, B, B]
List 1 - List 2: [A, C]
```

[Previous Page](../commons_collections/commons_collections_intersection.md) [Next Page](../commons_collections/commons_collections_union.md) 
