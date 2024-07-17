Feature: Post details Request

  @execute
  Scenario: Create a new user
    Given url baseURL
    And path '/users'
    And request
      """
      {
      "name": "morpheus",
      "job": "leader"
      }
      """
    When method POST
    Then status 201

  @execute
  Scenario: REGISTER - SUCCESSFUL
    Given url baseURL
    And path '/register'
    And request
      """
      {
      "email": "eve.holt@reqres.in",
      "password": "pistol"
      }
      """
    When method POST
    Then status 200

  @execute
  Scenario: REGISTER - UNSUCCESSFUL
    Given url baseURL
    And path '/register'
    And request
      """
      {
      "email": "sydney@fife"
      }
      """
    When method POST
    Then status 400

  

  @execute
  Scenario: LOGIN - SUCCESSFUL
    Given url baseURL
    And path '/login'
    And request
      """
      {
      "email": "eve.holt@reqres.in",
      "password": "cityslicka"
      }
      """
    When method POST
    Then status 200

  @execute
  Scenario: LOGIN - UNSUCCESSFUL
    Given url baseURL
    And path '/login'
    And request
      """
      {
      "email": "peter@klaven"
      }
      """
    When method POST
    Then status 400
