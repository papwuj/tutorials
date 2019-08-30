# Commons Collections - MapIterator Interface
The JDK Map interface is pretty difficult to iterate as Iteration to be done on EntrySet or over the KeySet objects. MapIterator provides simple iteration over Map. Following example illustrates the same.

## Example of MapIterator Interface


```
import org.apache.commons.collections4.IterableMap;
import org.apache.commons.collections4.MapIterator;
import org.apache.commons.collections4.map.HashedMap;

public class MapIteratorTester {
   public static void main(String[] args) {
      IterableMap<String, String> map = new HashedMap<>();

      map.put("1", "One");
      map.put("2", "Two");
      map.put("3", "Three");
      map.put("4", "Four");
      map.put("5", "Five");

      MapIterator<String, String> iterator = map.mapIterator();
      while (iterator.hasNext()) {
         Object key = iterator.next();
         Object value = iterator.getValue();

         System.out.println("key: " + key);
         System.out.println("Value: " + value);

         iterator.setValue(value + "_");
      }
      
      System.out.println(map);
   }
}
```
## Output
It will print the following result.

```
key: 3
Value: Three
key: 5
Value: Five
key: 2
Value: Two
key: 4
Value: Four
key: 1
Value: One
{3=Three_, 5=Five_, 2=Two_, 4=Four_, 1=One_}
```

[Previous Page](../commons_collections/commons_collections_bidimap.md) [Next Page](../commons_collections/commons_collections_orderedmap.md) 
