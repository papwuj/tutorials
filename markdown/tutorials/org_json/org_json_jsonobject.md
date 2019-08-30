# org.json - JSONObject
JSONObject class is a unordered collection of key-value pairs. It provides methods to access values by key and to put values. Following types are supported −

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
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("Name", "Robert");
      jsonObject.put("ID", 1);
      jsonObject.put("Fees", new Double(1000.21));
      jsonObject.put("Active", new Boolean(true));
      jsonObject.put("Other Details", JSONObject.NULL);

      JSONArray list = new JSONArray();
      list.put("foo");
      list.put(new Integer(100));
      jsonObject.put("list",list);
      System.out.println(jsonObject);
   }
}
```
## Output
```
{"Active":true,"Other Details":null,"ID":1,"Fees":1000.21,"list":["foo",100],"Name":"Robert"}
```

[Previous Page](../org_json/org_json_jsonml.md) [Next Page](../org_json/org_json_jsonstringer.md) 
