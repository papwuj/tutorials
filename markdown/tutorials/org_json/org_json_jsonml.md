# org.json - JSONML
JSONML class provides static methods to convert a XML text into a JSONArray, and vice versa.

Following methods are covered in the example.

   * **toJSONArray(String)** − Converts a XML to JSONArray Object.
   * **toJSONObject(String)** − Converts a XML to JSONObject Object.
   * **toString(JSONArray)** − Gives a XML from a JSONArray Object.
   * **toString(JSONObject)** − Gives a XML from a JSONObject Object.

## Example
```
import org.json.JSONArray;
import org.json.JSONML;
import org.json.JSONObject;

public class JSONDemo {
   public static void main(String[] args) {
      JSONArray list = new JSONArray();
      list.put("name");
      list.put("Robert");     

      System.out.println("XML from a JSONArray: ");
      String xml = JSONML.toString(list);
      System.out.println(xml);

      System.out.println("JSONArray from a XML: ");
      list = JSONML.toJSONArray(xml);
      System.out.println(list);

      System.out.println("JSONObject from a XML: ");
      JSONObject object = JSONML.toJSONObject(xml);
      System.out.println(object);

      System.out.println("XML from a JSONObject: ");
      xml = JSONML.toString(object);
      System.out.println(xml);
   }
}
```
## Output
```
XML from a JSONArray: 
<name>Robert</name>
JSONArray from a XML: 
["name","Robert"]
JSONObject from a XML: 
{"childNodes":["Robert"],"tagName":"name"}
XML from a JSONObject: 
<name>Robert</name>
```

[Previous Page](../org_json/org_json_jsonarray.md) [Next Page](../org_json/org_json_jsonobject.md) 
