Feature: Get users List from ReqRes

  @execute
  Scenario: Get list of users
    Given url baseURL
    And path '/users?page=2'
    When method GET
    Then status 200

  @execute
  Scenario: Get specific user details by id
    Given url baseURL
    And path 'users/2'
    When method GET
    Then status 200

  @execute
  Scenario: Get SINGLE USER NOT FOUND
    Given url baseURL
    And path 'users/23'
    When method GET
    Then status 404

  @execute
  Scenario: Get LIST RESOURCE
    Given url baseURL
    And path '/unknown'
    When method GET
    Then status 200

  @execute
  Scenario: Get SINGLE RESOURCE
    Given url baseURL
    And path '/unknown/2'
    When method GET
    Then status 200
