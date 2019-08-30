# Commons Collections - Safe Empty Checks
CollectionUtils class of Apache Commons Collections library provides various utility methods for common operations covering wide range of use cases. It helps avoid writing boilerplate code. This library is very useful prior to jdk 8 as similar functionalities are now provided in Java 8's Stream API.

## Checking non-empty list
isNotEmpty() method of CollectionUtils can be used to check if a list is not empty without worrying about null list. So null check is not required to be placed everywhere before checking the size of the list.

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.isNotEmpty()** method

```
public static boolean isNotEmpty(Collection<?> coll)
```
## Parameters
   * **coll** − The collection to check, may be null.

## Return Value
True if non-null and non-empty.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.isNotEmpty() method. We'll check a list is empty or not.

```
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;

public class CollectionUtilsTester {
   public static void main(String[] args) {
      List<String> list = getList();
      System.out.println("Non-Empty List Check: " + checkNotEmpty1(list));
      System.out.println("Non-Empty List Check: " + checkNotEmpty1(list));
   }

   static List<String> getList() {
      return null;
   } 
   
   static boolean checkNotEmpty1(List<String> list) {
      return !(list == null || list.isEmpty());
   }

   static boolean checkNotEmpty2(List<String> list) {
      return CollectionUtils.isNotEmpty(list);
   } 
}
```
## Output
It will print the following result.

```
Non-Empty List Check: false
Non-Empty List Check: false
```
## Checking empty list
isEmpty() method of CollectionUtils can be used to check if a list is empty without worrying about null list. So null check is not required to be placed everywhere before checking the size of the list.

## Declaration
Following is the declaration for

**org.apache.commons.collections4.CollectionUtils.isEmpty()** method −

```
public static boolean isEmpty(Collection<?> coll)
```
## Parameters
   * **coll** − The collection to check, may be null.

## Return Value
True if empty or null.

## Example
The following example shows the usage of org.apache.commons.collections4.CollectionUtils.isEmpty() method. We'll check a list is empty or not.

```
import java.util.List;

import org.apache.commons.collections4.CollectionUtils;

public class CollectionUtilsTester {
   public static void main(String[] args) {
      List<String> list = getList();
      System.out.println("Empty List Check: " + checkEmpty1(list));
      System.out.println("Empty List Check: " + checkEmpty1(list));
   }

   static List<String> getList() {
      return null;
   } 
   
   static boolean checkEmpty1(List<String> list) {
      return (list == null || list.isEmpty());
   }
   
   static boolean checkEmpty2(List<String> list) {
      return CollectionUtils.isEmpty(list);
   } 
}
```
## Output
It will print the following result.

```
Empty List Check: true
Empty List Check: true
```

[Previous Page](../commons_collections/commons_collections_filtering_objects.md) [Next Page](../commons_collections/commons_collections_inclusion.md) 
