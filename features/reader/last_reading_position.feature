Feature: Last reading position
  As a Blinkbox books app user
  I want to verify my last reading position
  So that I can resume reading where I left

  Background:
    Given the My Library screen is displayed
    When I open the first book for reading
    And turn 15 pages forward

  @sanity-all
  Scenario: Verify last reading position exiting the book and opening back
    Given I have read the book to certain position
    And I exit the book
    When I open the book again
    Then I should see last reading position

  Scenario: Verify last reading position from My bookmarks page
    Given I have bookmarked a page
    And I continue reading turning 4 pages forward
    And I visit the "Your Bookmarks and Highlights" page from the Reader option menu
    And I choose not to sign in
    And I tap on bookmark link
    And I am on bookmarked page
    When I tap on go back to last reading position link
    Then I should see correct last reading position

  Scenario: Verify last reading position via table of contents
    Given I continue reading turning 4 pages forward
    And I visit the "Table of contents" page from the Reader option menu
    And I select a chapter link
    And I am on selected chapter
    When I tap on go back to last reading position link
    Then I should see correct last reading position
