Feature: Fetching User detail

Scenario: Update User using PUT
Given url 'https://reqres.in/api/users/2'
When request { "name": "morpheus", "job": "zion resident"}
When method PUT
Then status 200
And print 'Response is :',response

Scenario: Update using PATCH
Given url 'https://reqres.in/api/users/2'
When request { "name": "morpheus","job": "zion resident"}
When method PATCH
Then status 200
And print 'Response is :', response

Scenario: testing PUT call
Given url 'https://reqres.in/api/users/2'
When request {"name":"morpheus","job": "Dev"}
When method PUT
Then status 200
And print 'Response is :', response
