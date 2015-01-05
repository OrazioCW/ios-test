Feature: Sign in into blinkbox books

  Background: Deregister devices for an existing user
    Given a valid user account ready for use on a new device

  @smoke
  Scenario: Existing user successfully signs in via the User Library page
    Given the My Library screen is displayed
    When I navigate to the Sign in page
    And I submit valid sign in details
    Then the my library page should be displayed
    And I should see the "Sign Out" option in the settings menu

  Scenario: Existing user successfully signs in via the Welcome page
    Given the Welcome screen is displayed
    When I sign in
    Then the my library page should be displayed
    And I should see the "Sign Out" option in the settings menu