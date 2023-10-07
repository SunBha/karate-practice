Feature: Create new user

    Background:
        * url 'https://gorest.co.in'
        * header Content-Type = 'application/json'
        * header Authorization = 'Bearer IqdYcHkQRTk6XKNZIdExzOQelTXBmqrbzNN_'

    Scenario: To create new user
        Given url 'public-api/users'
        And request { "first_name":"SAM1","last_name":"DAS1","gender":"male","email":"sam2@roberts.com","status":"active" }
        When method post
        Then status 200
        Then print 'The user id is:::', response.result.id
