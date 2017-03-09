Given(/^I visit the index page$/) do
  visit root_path
end

Given(/^I click "([^"]*)"$/) do |arg1|
  click_link_or_button arg1
end

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |title, content|
  fill_in title, with: content
end

Then(/^I click Create$/) do
  click_link_or_button 'Create'
end

Given(/^I visit the sign up page$/) do
  visit new_user_registration
end
