Feature: Delete user on reqres

  Scenario: Delete a user
    * call read("../post/user-post-snippets.feature@@create")
    Given url "https://reqres.in" + "/api/users/" + contactId
    When method delete
    Then status 204