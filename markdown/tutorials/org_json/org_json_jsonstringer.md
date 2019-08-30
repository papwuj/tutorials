# org.json - JSONStringer
JSONStringer is a utility class to build a JSON Text quickly which confirms to JSON Syntax rules. Each instance of JSONStringer can produce one JSON text.

## Example
```
import org.json.JSONStringer;

public class JSONDemo {
   public static void main(String[] args) { 
      String jsonText = new JSONStringer()
         .object()
         .key("Name")
         .value("Robert")                            
         .endObject()                       
         .toString();
      System.out.println(jsonText);

      jsonText = new JSONStringer()
         .array()
         .value("Robert")      
         .value("Julia")      
         .value("Dan")
         .endArray()                       
         .toString();
      System.out.println(jsonText);

      jsonText = new JSONStringer()
         .array()
         .value("Robert")      
         .value("Julia")      
         .value("Dan")
         .object()
         .key("Name")
         .value("Robert")                            
         .endObject()  
         .endArray()             
         .toString();
      System.out.println(jsonText);
   }
}
```
## Output
```
{"Name":"Robert"}
["Robert","Julia","Dan"]
["Robert","Julia","Dan",{"Name":"Robert"}]
```

[Previous Page](../org_json/org_json_jsonobject.md) [Next Page](../org_json/org_json_property.md) 
