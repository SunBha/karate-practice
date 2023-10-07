Feature: Check returned users by API
    Background:
        * url 'https://gorest.co.in'
        * header Authorization = 'Bearer IqdYcHkQRTk6XKNZIdExzOQelTXBmqrbzNN_'
    Scenario: List all users having name John
        Given path 'public-api/users'
        And param status = 'active'
        When method get
        Then status 200

        # Then match $.result[*].last_name == ["Prohaska"]
        # Then match $._meta.totalCount == '1'
        * def count = response._meta.totalCount
        Then print response._meta.rateLimit.limit
        Then print 'The total count is:::', count
        Then match count == 1024