
Feature: As a visitor
  I would like to logout from Craft Academy Mailboxer.

  Background:
    Given the following users exist
      | name  | email           | password     |
      | felix | felix@telia.com | fisk1234     |

  Scenario: As I viewing the index page
    Given I am on the index page
    Then I click "Login"
    Then I should see "Log in"
    When I fill in "Email" with "felix@telia.com"
    And I fill in "Password" with "fisk1234"
    Then I click "Log in"
    Then I should see "Signed in successfully."
    Given I click "Logout"
    Then I should see "Signed out successfully."