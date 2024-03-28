Feature: Fetching user detail

Scenario: Testing POST call
Given url 'https://reqres.in/api/users'
When request {"name":"morpheus","job": "leader"}
When method POST 
Then status 201
And print 'Response is :', response
And match $.name=='morpheus'

Scenario: Post regester successful
Given url 'https://reqres.in/api/register'
When request { "email": "eve.holt@reqres.in","password": "pistol"}
When method POST
Then status 200
And print 'Response is :',response

Scenario: Post register unsuccessful
Given url 'https://reqres.in/api/register'
When request { "email": "sydney@fife"}
When method POST
Then status 400
And print 'Response is :',response

Scenario: Post login successful
Given url 'https://reqres.in/api/login'
When request {"email": "eve.holt@reqres.in","password": "cityslicka"}
When method POST
Then status 200
And print 'Response is :',response

Scenario: Post login Unsuccesful
Given url 'https://reqres.in/api/login'
When request {"email": "peter@klaven"}
When method POST 
Then status 400
And print 'Response is :',response

Scenario: Gorest post method
Given url 'https://gorest.co.in/public/v2/users'
When request {"id":2854,"name":"Nanda Gandhi", "email":"ganhi@zieme-barrows.com","gender":"male","status":"active"}
When method POST
Then status 201
And print 'Response is :',response