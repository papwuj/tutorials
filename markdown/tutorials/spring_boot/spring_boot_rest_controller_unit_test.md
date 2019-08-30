# Spring Boot - Rest Controller Unit Test
Spring Boot provides an easy way to write a Unit Test for Rest Controller file. With the help of SpringJUnit4ClassRunner and MockMvc, we can create a web application context to write Unit Test for Rest Controller file.

Unit Tests should be written under the **src/test/java** directory and classpath resources for writing a test should be placed under the **src/test/resources** directory.

For Writing a Unit Test, we need to add the Spring Boot Starter Test dependency in your build configuration file as shown below.

```
<dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-test</artifactId>
   <scope>test</scope>
</dependency>
```
Gradle users can add the following dependency in your build.gradle file.

```
testCompile('org.springframework.boot:spring-boot-starter-test')
```
Before writing a Test case, we should first build RESTful web services. For further information on building RESTful web services, please refer to the chapter on the same given in this tutorial.

## Writing a Unit Test for REST Controller
In this section, let us see how to write a Unit Test for the REST Controller.

First, we need to create Abstract class file used to create web application context by using MockMvc and define the mapToJson() and mapFromJson() methods to convert the Java object into JSON string and convert the JSON string into Java object.

```
package com.tutorialspoint.demo;

import java.io.IOException;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest(classes = DemoApplication.class)
@WebAppConfiguration
public abstract class AbstractTest {
   protected MockMvc mvc;
   @Autowired
   WebApplicationContext webApplicationContext;

   protected void setUp() {
      mvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
   }
   protected String mapToJson(Object obj) throws JsonProcessingException {
      ObjectMapper objectMapper = new ObjectMapper();
      return objectMapper.writeValueAsString(obj);
   }
   protected <T> T mapFromJson(String json, Class<T> clazz)
      throws JsonParseException, JsonMappingException, IOException {
      
      ObjectMapper objectMapper = new ObjectMapper();
      return objectMapper.readValue(json, clazz);
   }
}
```
Next, write a class file that extends the AbstractTest class and write a Unit Test for each method such GET, POST, PUT and DELETE.

The code for GET API Test case is given below. This API is to view the list of products.

```
@Test
public void getProductsList() throws Exception {
   String uri = "/products";
   MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
      .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();
   
   int status = mvcResult.getResponse().getStatus();
   assertEquals(200, status);
   String content = mvcResult.getResponse().getContentAsString();
   Product[] productlist = super.mapFromJson(content, Product[].class);
   assertTrue(productlist.length > 0);
}
```
The code for POST API test case is given below. This API is to create a product.

```
@Test
public void createProduct() throws Exception {
   String uri = "/products";
   Product product = new Product();
   product.setId("3");
   product.setName("Ginger");
   
   String inputJson = super.mapToJson(product);
   MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
      .contentType(MediaType.APPLICATION_JSON_VALUE).content(inputJson)).andReturn();
   
   int status = mvcResult.getResponse().getStatus();
   assertEquals(201, status);
   String content = mvcResult.getResponse().getContentAsString();
   assertEquals(content, "Product is created successfully");
}
```
The code for PUT API Test case is given below. This API is to update the existing product.

```
@Test
public void updateProduct() throws Exception {
   String uri = "/products/2";
   Product product = new Product();
   product.setName("Lemon");
   
   String inputJson = super.mapToJson(product);
   MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.put(uri)
      .contentType(MediaType.APPLICATION_JSON_VALUE).content(inputJson)).andReturn();
   
   int status = mvcResult.getResponse().getStatus();
   assertEquals(200, status);
   String content = mvcResult.getResponse().getContentAsString();
   assertEquals(content, "Product is updated successsfully");
}
```
The code for Delete API Test case is given below. This API will delete the existing product.

```
@Test
public void deleteProduct() throws Exception {
   String uri = "/products/2";
   MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri)).andReturn();
   int status = mvcResult.getResponse().getStatus();
   assertEquals(200, status);
   String content = mvcResult.getResponse().getContentAsString();
   assertEquals(content, "Product is deleted successsfully");
}
```
The full Controller Test class file is given below −

```
package com.tutorialspoint.demo;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Before;
import org.junit.Test;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.tutorialspoint.demo.model.Product;

public class ProductServiceControllerTest extends AbstractTest {
   @Override
   @Before
   public void setUp() {
      super.setUp();
   }
   @Test
   public void getProductsList() throws Exception {
      String uri = "/products";
      MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.get(uri)
         .accept(MediaType.APPLICATION_JSON_VALUE)).andReturn();
      
      int status = mvcResult.getResponse().getStatus();
      assertEquals(200, status);
      String content = mvcResult.getResponse().getContentAsString();
      Product[] productlist = super.mapFromJson(content, Product[].class);
      assertTrue(productlist.length > 0);
   }
   @Test
   public void createProduct() throws Exception {
      String uri = "/products";
      Product product = new Product();
      product.setId("3");
      product.setName("Ginger");
      String inputJson = super.mapToJson(product);
      MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.post(uri)
         .contentType(MediaType.APPLICATION_JSON_VALUE)
         .content(inputJson)).andReturn();
      
      int status = mvcResult.getResponse().getStatus();
      assertEquals(201, status);
      String content = mvcResult.getResponse().getContentAsString();
      assertEquals(content, "Product is created successfully");
   }
   @Test
   public void updateProduct() throws Exception {
      String uri = "/products/2";
      Product product = new Product();
      product.setName("Lemon");
      String inputJson = super.mapToJson(product);
      MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.put(uri)
         .contentType(MediaType.APPLICATION_JSON_VALUE)
         .content(inputJson)).andReturn();
      
      int status = mvcResult.getResponse().getStatus();
      assertEquals(200, status);
      String content = mvcResult.getResponse().getContentAsString();
      assertEquals(content, "Product is updated successsfully");
   }
   @Test
   public void deleteProduct() throws Exception {
      String uri = "/products/2";
      MvcResult mvcResult = mvc.perform(MockMvcRequestBuilders.delete(uri)).andReturn();
      int status = mvcResult.getResponse().getStatus();
      assertEquals(200, status);
      String content = mvcResult.getResponse().getContentAsString();
      assertEquals(content, "Product is deleted successsfully");
   }
}
```
You can create an executable JAR file, and run the Spring Boot application by using the Maven or Gradle commands given below −

For Maven, you can use the command given below −

```
mvn clean install
```
Now, you can see the test results in console window.

![Test Results in Console Window](../spring_boot/images/test_results_in_console_window.jpg)

For Gradle, you can use the command as shown below −

```
gradle clean build
```
You can see the rest results in console window as shown below.

![Rest Results in Console Window](../spring_boot/images/rest_results_in_console_window.jpg)


[Previous Page](../spring_boot/spring_boot_unit_test_cases.md) [Next Page](../spring_boot/spring_boot_database_handling.md) 
