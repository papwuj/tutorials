# org.json - CDL
CDL class provides static methods to convert a comma delimited text into a JSONArray, and vice versa.

Following methods are covered in the example.

   * **rowToJSONArray(String)** − Converts a comma delimited text to JSONArray Object.
   * **rowToString(JSONArray)** − Converts a JSONArray to comma delimited text.
   * **toJSONArray(String)** − Converts a multi-line comma delimited text to Object of JSONArray objects.
   * **toJSONArray(JSONArray, String)** − Converts a JSONArray Object and comma delimited text to JSONArray Object.

## Example
```
import org.json.CDL;
import org.json.JSONArray;
import org.json.JSONTokener;

public class JSONDemo {
   public static void main(String[] args) {
      String csvData = "INDIA, UK, USA";

      //Case 1: CSV to JSON Array 
      JSONArray jsonArray = CDL.rowToJSONArray(new JSONTokener(csvData));        
      System.out.println(jsonArray);

      //Case 2: JSONArray to CSV        
      System.out.println(CDL.rowToString(jsonArray));

      //Case 3: CSV to JSONArray of Objects
      csvData = "empId, name, age \n" +
         "1, Mark, 22 \n" +
         "2, Robert, 35 \n" +
         "3, Julia, 18";
      System.out.println(CDL.toJSONArray(csvData));

      //Case 4: CSV without header        
      jsonArray = new JSONArray();
      jsonArray.put("empId");
      jsonArray.put("name");
      jsonArray.put("age");
      csvData = "1, Mark, 22 \n" + "2, Robert, 35 \n" + "3, Julia, 18";
      System.out.println(CDL.toJSONArray(jsonArray,csvData));
   }
}
```
## Output
```
["INDIA","UK","USA"]
INDIA,UK,USA

[{"name":"Mark","empId":"1","age":"22"},
   {"name":"Robert","empId":"2","age":"35"},
   {"name":"Julia","empId":"3","age":"18"}]
[{"name":"Mark","empId":"1","age":"22"},
   {"name":"Robert","empId":"2","age":"35"},
   {"name":"Julia","empId":"3","age":"18"}]
```

[Previous Page](../org_json/org_json_environment.md) [Next Page](../org_json/org_json_cookie.md) 
