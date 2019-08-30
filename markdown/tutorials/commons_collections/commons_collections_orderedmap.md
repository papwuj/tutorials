# OrderedMap Interface
OrderedMap is a new interface for maps to retain the order in which elements are added. LinkedMap and ListOrderedMap are two available implementations. This interfaces supports iterator that of Map and allows iteration in both direction either forwards or backwards in a Map. Following example illustrates the same.

## Example of MapIterator Interface


```
import org.apache.commons.collections4.OrderedMap;
import org.apache.commons.collections4.map.LinkedMap;

public class OrderedMapTester {
   public static void main(String[] args) {
      OrderedMap<String, String> map = new LinkedMap<String, String>();
      map.put("One", "1");
      map.put("Two", "2");
      map.put("Three", "3");
      
      System.out.println(map.firstKey());
      System.out.println(map.nextKey("One"));
      System.out.println(map.nextKey("Two"));  
   }
}
```
## Output
It will print the following result.

```
One
Two
Three
```

[Previous Page](../commons_collections/commons_collections_mapiterator.md) [Next Page](../commons_collections/commons_collections_ignore_null.md) 
