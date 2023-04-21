Feature: Post user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * def var = { "name": "#(name)", "job": "#(job)" }


  Scenario Outline: Post a user
    Given request var
    When method post
    Then status 201
    Examples:
      | name  | job     |
      | Juan  | leader  |
      | Alice | doctor  |
      | Eva   | teacher |

  Scenario: Post a user without job
    Given request { "name": "Eva" }
    When method post
    Then status 201