Feature: Get user on reqres

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method get
    Then status 200
    

  Scenario: Get a list of user
    * def jsonResponse = read("../json/list_of_user.json")
    Given url "https://reqres.in/api/users?page=1"
    When method get
    Then status 200
    And match $ == jsonResponse