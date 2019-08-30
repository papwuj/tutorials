# org.json - JSONException Handling
Utility classes of org.json throws JSONException in case of invalid JSON. Following example shows how to handle JSONException.

## Example
```
import org.json.JSONException;
import org.json.XML;

public class JSONDemo {
   public static void main(String[] args) {
      try{
         //XML tag name should not have space.
         String xmlText = "<Other Details>null</Other Details>";
         System.out.println(xmlText);

         //Convert an XML to JSONObject
         System.out.println(XML.toJSONObject(xmlText));
      } catch(JSONException e){   
         System.out.println(e.getMessage());
      }
   }
}
```
## Output
```
position: 24
Unexpected token RIGHT BRACE(}) at position 24.
```

[Previous Page](../org_json/org_json_xml.md) [Next Page](../org_json/org_json_quick_guide.md) 
