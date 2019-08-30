# org.json - JSONArray
A JSONArray is an ordered sequence of values. It provides methods to access values by index and to put values. Following types are supported −

   * Boolean
   * JSONArray
   * JSONObject
   * Number
   * String
   * JSONObject.NULL object

## Example
```
import org.json.JSONArray;
import org.json.JSONObject;

public class JSONDemo {
   public static void main(String[] args) { 
      JSONArray list = new JSONArray();

      list.put("foo");
      list.put(new Integer(100));
      list.put(new Double(1000.21));
      list.put(new Boolean(true));
      list.put(JSONObject.NULL);

      System.out.println("JSONArray: ");
      System.out.println(list);
   }
}
```
## Output
```
JSONArray: 
["foo",100,1000.21,true,null]
```

[Previous Page](../org_json/org_json_http.md) [Next Page](../org_json/org_json_jsonml.md) 
