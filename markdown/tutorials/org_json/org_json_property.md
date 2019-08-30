# org.json - Property
Property class provides static methods to convert properties text into a JSONObject, and vice versa.

Following methods are covered in the example.

   * **toJSONObject(Properties)** − Converts a properties data to JSONObject Object.
   * **toProperties(JSONObject)** − Converts a JSONObject to properties object.

## Example
```
import java.util.Properties;
import org.json.JSONObject;
import org.json.Property;

public class JSONDemo {
   public static void main(String[] args) {
      Properties properties = new Properties();
      properties.put("title", "This is a title text");
      properties.put("subtitle", "This is a subtitle text");

      System.out.println("Properties to JSON");
      JSONObject jsonObject = Property.toJSONObject(properties);
      System.out.println(jsonObject);

      System.out.println("JSON to properties");
      System.out.println(Property.toProperties(jsonObject));
   }
}
```
## Output
```
Properties to JSON
{"subtitle":"This is a subtitle text","title":"This is a title text"}
JSON to properties
{subtitle = This is a subtitle text, title = This is a title text}
```

[Previous Page](../org_json/org_json_jsonstringer.md) [Next Page](../org_json/org_json_xml.md) 
