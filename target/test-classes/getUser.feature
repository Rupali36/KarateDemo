Feature: fetching User Details

Scenario: testing the get call for User Details
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200 

Scenario:  Get List User
Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200

Scenario: Get single User not found
Given url 'https://reqres.in/api/users/23'
When method GET 
Then status 404

Scenario: Get List resources
Given url 'https://reqres.in/api/unknown'
When method GET 
Then status 200

Scenario: Get single resource 
Given url 'https://reqres.in/api/unknown/2'
When method GET
Then status 200

Scenario: Get Single resource not found
Given url 'https://reqres.in/api/unknown/23'
When method GET
Then status 404

Scenario: Get delayed response
Given url 'https://reqres.in/api/users?delay=3'
When method GET
Then status 200


Scenario: Gorest Get method
Given url 'https://gorest.co.in/public/v2/users'
When method GET
Then status 200