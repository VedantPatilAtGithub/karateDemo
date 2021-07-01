Feature: Functional testing of reqres api
  Scenario: Get all users details

    * def expectedOutput = read('payload.json')

    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And match response == expectedOutput
    And match response.data[0].id == 7