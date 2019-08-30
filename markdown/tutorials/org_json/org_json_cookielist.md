# org.json - CookieList
CookieList class provides static methods to convert Cookie List to JSONObject, and vice versa. Cookie List is a sequence of name/value pairs.

Following methods are covered in the example.

   * **toJSONObject(String)** − Converts a cookie list text to JSONObject Object.
   * **toString(JSONObject)** − Converts a JSONObject to cookie list text.

## Example
```
import org.json.Cookie;
import org.json.CookieList;
import org.json.JSONObject;

public class JSONDemo {
   public static void main(String[] args) {
      String cookie = "username = Mark Den; expires = Thu, 15 Jun 2020 12:00:00 UTC; path = /";

      //Case 1: Converts Cookie String to JSONObject
      JSONObject cookieJSONObject = Cookie.toJSONObject(cookie);

      JSONObject cookielistJSONObject = new JSONObject();       
      cookielistJSONObject.put(cookieJSONObject.getString("name"), 
         cookieJSONObject.getString("value"));       

      String cookieList = CookieList.toString(cookielistJSONObject);        
      System.out.println(cookieList); 
      System.out.println(CookieList.toJSONObject(cookieList));
   }
}
```
## Output
```
username=Mark Den
{"username":"Mark Den"}
```

[Previous Page](../org_json/org_json_cookie.md) [Next Page](../org_json/org_json_http.md) 
