# org.json - Quick Guide
# org.json - Overview
**org.json or JSON-Java** is a simple Java based toolkit for JSON. You can use org.json to encode or decode JSON data.

## Features
   * **Specification Compliant** − JSON.simple is fully compliant with JSON Specification - RFC4627.
   * **Lightweight** − It have very few classes and provides the necessary functionalities like encode/decode and escaping json.
   * **XML Conversion** − It provides conversion capability from JSON to XML and vice-versa.
   * **HTTP Headers** − Supports HTTP Header conversion to JSON and vice versa.
   * **Cookie** − Provides support for Cookie conversion to JSON and vice versa.
   * **CDL** − Provides support to convert comma separated list to JSON and vice versa.
   * **No dependency** − No external library dependency. Can be independently included.
   * **Java 1.6-1.8 compatible** − Source code and the binary are Java 1.6-1.8 compatible

# org.json - Environment Setup
## Local Environment Setup
JSON.simple is a library for Java, so the very first requirement is to have JDK installed in your machine.

### System Requirement
## Step 1: Verify Java Installation in Your Machine
First of all, open the console and execute a java command based on the operating system you are working on.

Let's verify the output for all the operating systems −

If you do not have Java installed on your system, then download the Java Software Development Kit (SDK) from the following link [www.oracle.com](https://www.oracle.com/technetwork/java/javase/downloads/index.html) . We are assuming Java 1.8.0_101 as the installed version for this tutorial.

## Step 2: Set JAVA Environment
Set the **JAVA_HOME** environment variable to point to the base directory location where Java is installed on your machine. For example.

Append Java compiler location to the System Path.

Verify Java installation using the command **java -version** as explained above.

## Step 3: Download org.json Archive
Download the latest version of org.json jar file from [org.json @ MVNRepository](https://mvnrepository.com/artifact/org.json/json) . At the time of writing this tutorial, we have downloaded json-20180813, and copied it into C:\&gt;JSON folder.

## Step 4: Set JSON_JAVA Environment
Set the **JSON_JAVA** environment variable to point to the base directory location where org.json jar is stored on your machine. Let's assuming we've stored json-20180813.jar in the JSON folder.

## Step 5: Set CLASSPATH Variable
Set the **CLASSPATH** environment variable to point to the JSON.simple jar location.

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
# org.json - JSONArray
A JSONArray is an ordered sequence of values. It provides methods to access values by index and to put values. Following types are supported −

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
      JSONArray list = new JSONArray();

      list.put("foo");
      list.put(new Integer(100));
      list.put(new Double(1000.21));
      list.put(new Boolean(true));
      list.put(JSONObject.NULL);

      System.out.println("JSONArray: ");
      System.out.println(list);
   }
}
```
## Output
```
JSONArray: 
["foo",100,1000.21,true,null]
```
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

[Previous Page](../org_json/org_json_exception_handling.md) [Next Page](../org_json/org_json_useful_resources.md) 
