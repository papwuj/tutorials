# Apache Commons Collections - Union
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Checking union
union() method of CollectionUtils can be used to get the union of two collections.

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.union()** method

```
public static <O> Collection<O> union(Iterable<? extends O> a,
   Iterable<? extends O> b)
```
## Parameters
   * **a** − The first collection, must not be null.
   * **b** − The second collection, must not be null.

## Return Value
The union of the two collections.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.union() method. We'll get the union of two lists.

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
      System.out.println("Union of List 1 and List 2: " 
         + CollectionUtils.union(list1, list2));
   }
}
```
## Output
It will print the following result.

```
List 1: [A, A, A, C, B, B]
List 2: [A, A, B, B]
Union of List 1 and List 2: [A, A, A, B, B, C]
```

[Previous Page](../commons_collections/commons_collections_subtraction.md) [Next Page](../commons_collections/commons_collections_quick_guide.md) 
