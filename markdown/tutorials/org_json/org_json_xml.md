# org.json - XML
XML class provides static methods to convert a XML text into a JSONObject, and vice versa.

Following methods are covered in the example.

   * **toJSONObject(String)** − Converts a XML to JSONArray Object.
   * **toString(JSONObject)** − Gives a XML from a JSONObject Object.

## Example
```
import org.json.JSONObject;
import org.json.XML;

public class JSONDemo {
   public static void main(String[] args) { 
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("Name", "Robert");
      jsonObject.put("ID", 1);
      jsonObject.put("Fees", new Double(1000.21));
      jsonObject.put("Active", new Boolean(true));
      jsonObject.put("Details", JSONObject.NULL);

      //Convert a JSONObject to XML
      String xmlText = XML.toString(jsonObject);
      System.out.println(xmlText);

      //Convert an XML to JSONObject
      System.out.println(XML.toJSONObject(xmlText));
   }
}
```
## Output
```
<Active>true</Active><Details>null</Details><ID>1</ID><Fees>1000.21</Fees><Name>Robert</Name>
{"Active":true,"Details":null,"ID":1,"Fees":1000.21,"Name":"Robert"}
```

[Previous Page](../org_json/org_json_property.md) [Next Page](../org_json/org_json_exception_handling.md) 
