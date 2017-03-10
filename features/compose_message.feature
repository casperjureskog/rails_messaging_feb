Feature: As a visitor.
  So that I can remove my message.


Background:
Given the following users exist
| name  | email           | password     |
| felix | felix@telia.com | fisk1234     |

Scenario: As I login
  Given I am on the index page
  And I click "Login"
  And I should see "Log in"
  And I fill in "Email" with "felix@telia.com"
  And I fill in "Password" with "fisk1234"
  And I click "Log in"
  Given I am logged in as "felix"
  And I click "Inbox"
  And I click "Compose"
  And I select "felix" from "Recipients"
  And I fill in "Subject" with "subject"
  And I fill in "Type your message here" with "Message"
  And I click "Send Message"
  Then I should see "Your message was successfully sent!"
  And I click "Sent"
  And I should see "felix"
  And I click "View"
  And I click "Move to trash"
  Then I click "Trash"
  And I should see "felix"
