Feature: UI automation

    Background: Check UI automation
        # * configure driver = { type: 'chrome', showDriverLog: true }
        * configure driver = { type: 'chromedriver', showDriverLog: true }

    Scenario: Search on UI

        # Given driver 'https://events.asana.com/accounts/login/'
        # And input('#id_login','ss@ss.com')
        # And input('#id_password','123456789')
        # When submit()
        # Then print 'hello'

        Given driver 'https://github.com/login'
        And input('#login_field', 'dummy')
        And input('#password', 'world')
        When submit().click("input[name=commit]")
        Then match html('#js-flash-container') contains 'Incorrect username or password.'

# Given driver 'https://google.com'
# And waitForUrl('google.com')
# And driver.maximize()
# Then match driver.title == 'Google'