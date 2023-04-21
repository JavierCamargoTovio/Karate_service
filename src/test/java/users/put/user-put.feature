Feature: Put user on reqres

  Scenario: Put a user
    Given url "https://reqres.in" + "/api/users/" + "3"
    And request { "name": "Sofia", "job": "pilot" }
    When method put
    Then status 200
    And match $.name == 'Sofia'