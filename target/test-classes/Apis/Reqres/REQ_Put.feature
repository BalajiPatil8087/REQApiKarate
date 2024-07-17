Feature: Reqres Put Feature

  @execute
  Scenario: Update detail of a user.
    Given url baseURL
    And path 'users/2'
    And request
      """
      {
      "name": "morpheus",
      "job": "zion resident"
      }
      """
    When method PUT
    Then status 200
