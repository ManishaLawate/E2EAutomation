require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

=begin
Then(/^I should get logged in$/) do
  verify_login
end

def verify_login
	ele_log = $driver.find_element(:xpath,".//*[@id='admin-menu-account']/li[2]/a")
	if ele_log.text != "admin"
		raise "login failed"
	else
		puts " User logged in successfully."
	end
end
=end

Given(/^Admin opens bpm cms$/) do
  step %[I navigate to "http://foxtel-cms.local/"]
  #connection_reset
end

And(/^wait for 10 sec$/) do
  step %[I wait for 10 sec]
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

Then(/^The page title should be shown as BPM Content$/) do
	step %[element having xpath ".//*[@id='branding']/h1" should have text as "BPM Content"]
end

Then(/^I click on the BigPond Content tab$/) do
	step %[I click on element having xpath ".//*[@id='branding']/ul/li[6]/a"]
end

=begin
def connection_reset
	time_out = $driver.find_element(:xpath,".//*[@id='errorTitleText']")
	try_again = $driver.find_element(:xpath,".//*[@id='errorTryAgain']")
		if time_out.text == "The connection has timed out" 
			puts "Time out error occured, trying again.."
			try_again.click
		else
			puts "No Time out error, continuing.."
		end
end
=end


