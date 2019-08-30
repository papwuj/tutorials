# Apache Commons Collections - Ignore Null
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Check for Not Null Elements
addIgnoreNull() method of CollectionUtils can be used to ensure that only non-null values are getting added to the collection.

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.addIgnoreNull()** 

```
public static <T> boolean addIgnoreNull(Collection<T> collection, T object)
```
## Parameters
   * **collection** − The collection to add to, must not be null.
   * **object** − The object to add, if null it will not be added.

## Return Value
True if the collection changed.

## Exception
   * **NullPointerException** − If the collection is null.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.addIgnoreNull() method. We're trying to add a null value and a sample non-null value.

```
import java.util.LinkedList;
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;

public class CollectionUtilsTester {
   public static void main(String[] args) {
      List<String> list = new LinkedList<String>();

      CollectionUtils.addIgnoreNull(list, null);
      CollectionUtils.addIgnoreNull(list, "a");

      System.out.println(list);

      if(list.contains(null)) {
         System.out.println("Null value is present");
      } else {
         System.out.println("Null value is not present");
      }
   }
}
```
## Output
It will print the following result.

```
[a]
Null value is not present
```

[Previous Page](../commons_collections/commons_collections_orderedmap.md) [Next Page](../commons_collections/commons_collections_merge_sort.md) 
