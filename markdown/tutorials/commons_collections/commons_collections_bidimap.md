# Commons Collections - BidiMap Interface
New Interfaces are added to supports bidirectional Map. Using bidirectional map, a key can be lookup using value and value can be lookup using key easily.

## Interface Declaration
Following is the declaration for

 

**org.apache.commons.collections4.BidiMap<K,V> interface −**

```
public interface BidiMap<K,V>
   extends IterableMap<K,V>
```
## Methods
## Methods Inherited
This interface inherits methods from the following interfaces −

   * org.apache.commons.collections4.Get
   * org.apache.commons.collections4.IterableGet
   * org.apache.commons.collections4.Put
   * java.util.Map

## Example of BidiMap Interface


```
import org.apache.commons.collections4.BidiMap;
import org.apache.commons.collections4.bidimap.TreeBidiMap;

public class BidiMapTester {
   public static void main(String[] args) {
      BidiMap<String, String> bidi = new TreeBidiMap<>();

      bidi.put("One", "1");
      bidi.put("Two", "2");
      bidi.put("Three", "3");
      
      System.out.println(bidi.get("One")); 
      System.out.println(bidi.getKey("1"));
      System.out.println("Original Map: " + bidi);
      
      bidi.removeValue("1"); 
      System.out.println("Modified Map: " + bidi);
      BidiMap<String, String> inversedMap = bidi.inverseBidiMap();  
      System.out.println("Inversed Map: " + inversedMap);
   }
}
```
## Output
It will print the following result.

```
1
One
Original Map: {One=1, Three=3, Two=2}
Modified Map: {Three=3, Two=2}
Inversed Map: {2=Two, 3=Three}
```

[Previous Page](../commons_collections/commons_collections_bag.md) [Next Page](../commons_collections/commons_collections_mapiterator.md) 
