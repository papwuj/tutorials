# org.json - Cookie
Cookie class provides static methods to convert web browser's cookie text into a JSONObject, and vice versa.

Following methods are covered in the example.

   * **toJSONObject(String)** − Converts a cookie text to JSONObject Object.
   * **toString(JSONObject)** − Converts a JSONObject to cookie text.

## Example
```
import org.json.Cookie;
import org.json.JSONObject;

public class JSONDemo {
   public static void main(String[] args) {
      String cookie = "username = Mark Den; expires = Thu, 15 Jun 2020 12:00:00 UTC; path = /";

      //Case 1: Converts Cookie String to JSONObject
      JSONObject jsonObject = Cookie.toJSONObject(cookie);
      System.out.println(jsonObject);

      //Case 2: Converts JSONObject to Cookie String
      System.out.println(Cookie.toString(jsonObject));        
   }
}
```
## Output
```
{"path":"/","expires":"Thu, 15 Jun 2020 12:00:00 UTC","name":"username","value":"Mark Den"}
username=Mark Den;expires=Thu, 15 Jun 2020 12:00:00 UTC;path=/
```

[Previous Page](../org_json/org_json_cdl.md) [Next Page](../org_json/org_json_cookielist.md) 
