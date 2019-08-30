# Commons Collections - Filtering Objects
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Filtering a list using filter() method
filter() method of CollectionUtils can be used to filter a list to remove objects which do not satisfy condition provided by predicate passed.

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.filter()** method −

```
public static <T> boolean filter(Iterable<T> collection,
   Predicate<? super T> predicate)
```
## Parameters
   * **collection** − The collection to get the input from, may not be null.
   * **predicate** − The predicate to use as a filter, may be null.

## Return Value
True if the collection is modified by this call, false otherwise.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.filter() method. We'll filter a list of integer to get even numbers only.

```
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.Predicate;

public class CollectionUtilsTester {
   public static void main(String[] args) {

      List<Integer> integerList = new ArrayList<Integer>();
      integerList.addAll(Arrays.asList(1,2,3,4,5,6,7,8));

      System.out.println("Original List: " + integerList);
      CollectionUtils.filter(integerList, new Predicate<Integer>() {
         
         @Override
         public boolean evaluate(Integer input) {
            if(input.intValue() % 2 == 0) {
               return true;
            }
            return false;
         }
      });
      
      System.out.println("Filtered List (Even numbers): " + integerList);
   }
}
```
## Output
It will print the following result.

```
Original List: [1, 2, 3, 4, 5, 6, 7, 8]
Filtered List (Even numbers): [2, 4, 6, 8]
```
## Filtering a list using filterInverse() method
filterInverse() method of CollectionUtils can be used to filter a list to remove objects which satisfy condition provided by predicate passed.

## Declaration
Following is the declaration for **org.apache.commons.collections4.CollectionUtils.filterInverse()** method

```
public static <T> boolean filterInverse(Iterable<T> collection,
   Predicate<? super T> predicate)
```
## Parameters
   * **collection** − The collection to get the input from, may not be null.
   * **predicate** − The predicate to use as a filter, may be null.

## Return Value
True if the collection is modified by this call, false otherwise.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.filterInverse() method. We'll filter a list of integer to get odd numbers only.

```
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.Predicate;

public class CollectionUtilsTester {
   public static void main(String[] args) {

      List<Integer> integerList = new ArrayList<Integer>();
      integerList.addAll(Arrays.asList(1,2,3,4,5,6,7,8));

      System.out.println("Original List: " + integerList);
      CollectionUtils.filterInverse(integerList, new Predicate<Integer>() {
         
         @Override
         public boolean evaluate(Integer input) {
            if(input.intValue() % 2 == 0) {
               return true;
            }
            return false;
         }
      });
      
      System.out.println("Filtered List (Odd numbers): " + integerList);
   }
}
```
## Output
It will print the following result.

```
Original List: [1, 2, 3, 4, 5, 6, 7, 8]
Filtered List (Odd numbers): [1, 3, 5, 7]
```

[Previous Page](../commons_collections/commons_collections_transforming_objects.md) [Next Page](../commons_collections/commons_collections_safe_checks.md) 
