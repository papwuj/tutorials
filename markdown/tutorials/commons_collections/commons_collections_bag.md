# Apache Commons Collections - Bag Interface
New Interfaces are added to supports bags. A Bag defines a collection which counts the number of times an object appears in the collection. For example, if a Bag contains {a, a, b, c} then getCount("a") will return 2 while uniqueSet() returns the unique values.

## Interface Declaration
Following is the declaration for org.apache.commons.collections4.Bag&lt;E&gt; interface −

```
public interface Bag<E>
   extends Collection<E>
```
## Methods
## Methods Inherited
This interface inherits methods from the following interface −

   * java.util.Collection

## Example of Bag Interface


```
import org.apache.commons.collections4.Bag;
import org.apache.commons.collections4.bag.HashBag;

public class BagTester {
   public static void main(String[] args) {
      Bag<String> bag = new HashBag<>();

      //add "a" two times to the bag.
      bag.add("a" , 2);
      
      //add "b" one time to the bag.
      bag.add("b");
      
      //add "c" one time to the bag.
      bag.add("c");
      
      //add "d" three times to the bag.
      bag.add("d",3);
      
      //get the count of "d" present in bag.
      System.out.println("d is present " + bag.getCount("d") + " times.");
      System.out.println("bag: " +bag);
      
      //get the set of unique values from the bag
      System.out.println("Unique Set: " +bag.uniqueSet());
      
      //remove 2 occurrences of "d" from the bag
      bag.remove("d",2);
      System.out.println("2 occurences of d removed from bag: " +bag);
      System.out.println("d is present " + bag.getCount("d") + " times.");
      System.out.println("bag: " +bag);
      System.out.println("Unique Set: " +bag.uniqueSet());
   }
}
```
## Output
It will print the following result.

```
d is present 3 times.
bag: [2:a,1:b,1:c,3:d]
Unique Set: [a, b, c, d]
2 occurences of d removed from bag: [2:a,1:b,1:c,1:d]
d is present 1 times.
bag: [2:a,1:b,1:c,1:d]
Unique Set: [a, b, c, d]
```

[Previous Page](../commons_collections/commons_collections_environment.md) [Next Page](../commons_collections/commons_collections_bidimap.md) 
