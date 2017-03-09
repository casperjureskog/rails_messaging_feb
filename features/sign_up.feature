Feature: As a visitor.
  So that I can use the service with an account.
  I would like to be able to go to sign up page
  and fill in form and sign up for an account.

Scenario:
  Given I visit the index page
  And I click "Sign up"
  And I fill in "user_name" with "name"
  And I fill in "Email" with "email@email.com"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I click Create
  Then I should see "Welcome! You have signed up successfully."

Scenario:
  Given I visit the index page
  And I click "Sign up"
  And I fill in "Email" with "invalidemail"
  And I click Create
  Then I should see "Email is invalid"
