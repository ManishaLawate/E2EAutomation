require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Given(/^User navigates to "([^"]*)"$/) do |link|
  step %[I navigate to "#{link}"]
  #connection_reset
end

And(/^wait for 30 sec$/) do
  step %[I wait for 30 sec]
end

And(/^I enter username as "([^"]*)"$/) do |username|
  step %[I enter "#{username}" into input field having id "edit-name"]
end

And(/^I enter password as "([^"]*)"$/) do |password|
  step %[I enter "#{password}" into input field having id "edit-pass"]
end
 
Then(/^I click on signin button$/) do
  step %[I click on element having id "edit-submit"]
end

And(/^wait for 20 sec$/) do
  step %[I wait for 20 sec]
end

Then(/^I should get logged in$/) do
  step %[element having xpath ".//*[@id='admin-menu-account']/li[2]/a" should have text as "admin"]
end

Then(/^I click on the BigPond Content tab$/) do
	step %[I click on element having xpath ".//*[@id='branding']/ul/li[6]/a"]
end