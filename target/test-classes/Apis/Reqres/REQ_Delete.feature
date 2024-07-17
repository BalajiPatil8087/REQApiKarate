Feature: Reqres Delete Feature

  @execute
  Scenario: Delete User Details
    Given url baseURL
    And path 'users/2'
    When method DELETE
    Then status 204

   
   
   #Logback is a popular logging framework in the Java ecosystem, 
   #and Karate uses it to manage and customize the output of logs during test execution
   
   #Karate framewok is powerful tool in API automation
   #Karate allows you to write API tests in a simple, readable, and expressive syntax using Gherkin language. 
   #Seamless Integration with BDD
   #Support for Complex Scenarios
   #Built-in Assertions
   #JSON and XML Handling