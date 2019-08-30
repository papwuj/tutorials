# org.json - HTTP
HTTP class provides static methods to convert web browser's header text into a JSONObject, and vice versa.

Following methods are covered in the example.

   * **toJSONObject(String)** − Converts a header text to JSONObject Object.
   * **toString(JSONObject)** − Converts a JSONObject to header text.

## Example
```
import org.json.HTTP;
import org.json.JSONObject;

public class JSONDemo {
   public static void main(String[] args) { 
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("Method", "POST");
      jsonObject.put("Request-URI", "http://www.tutorialspoint.com/");
      jsonObject.put("HTTP-Version", "HTTP/1.1");
        
      //Case 1: Converts JSONObject of Header to String
      String headerText = HTTP.toString(jsonObject);
      System.out.println(headerText); 
        
      headerText = "POST \"http://www.tutorialspoint.com/\" HTTP/1.1";
      //Case 2: Converts Header String to JSONObject
      System.out.println(HTTP.toJSONObject(headerText));
   }
}
```
## Output
```
POST "http://www.tutorialspoint.com/" HTTP/1.1

{"Request-URI":"http://www.tutorialspoint.com/","Method":"POST","HTTP-Version":"HTTP/1.1"}
```

[Previous Page](../org_json/org_json_cookielist.md) [Next Page](../org_json/org_json_jsonarray.md) 
