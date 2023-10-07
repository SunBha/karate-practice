Feature: Generate the token

    Background:
        * url 'https://restful-booker.herokuapp.com'
        * header Content-Type = 'application/json'

    Scenario: To get the token value
        Given path 'auth'
        And request { "username":"admin", "password":"password123" }
        When method post
        Then status 200
        Then print 'The token is:::', response.token
