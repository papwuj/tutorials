# Commons Collections - Transforming Objects
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Transforming a list
collect() method of CollectionUtils can be used to transform a list of one type of objects to list of different type of objects.

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.collect()** method

```
public static <I,O> Collection<O> collect(Iterable<I> inputCollection, 
   Transformer<? super I,? extends O> transformer)
```
## Parameters
   * **inputCollection** − The collection to get the input from, may not be null.
   * **Transformer** − The transformer to use, may be null.

## Return Value
The transformed result (new list).

## Exception
   * **NullPointerException** − If the input collection is null.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.collect() method. We'll transform a list of string to list of integer by parsing the integer value from String.

```
import java.util.Arrays;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.Transformer;

public class CollectionUtilsTester {
   public static void main(String[] args) {
      List<String> stringList = Arrays.asList("1","2","3");

      List<Integer> integerList = (List<Integer>) CollectionUtils.collect(stringList, 
         new Transformer<String, Integer>() {
         
         @Override
         public Integer transform(String input) {
            return Integer.parseInt(input);
         }
      });

      System.out.println(integerList);
   }
}
```
## Output
It will print the following result.

```
[1, 2, 3]
```

[Previous Page](../commons_collections/commons_collections_merge_sort.md) [Next Page](../commons_collections/commons_collections_filtering_objects.md) 
