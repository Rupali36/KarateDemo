Feature: Fetching User detail

Scenario: testing DELETE call
Given url 'https://reqres.in/api/users/2'
When method DELETE
Then status 204


Scenario: Gorest Delete User
Given url 'https://gorest.co.in/public/v2/users'
When method DELETE
Then status 204