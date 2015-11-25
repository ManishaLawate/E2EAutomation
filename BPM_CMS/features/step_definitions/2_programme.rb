require 'Selenium-webdriver'

Given(/^check the values from hash$/) do
	get_hash
	puts "Hash elements:#{$bpm_element.keys}"
end

And(/^Select programme content type$/) do
	#step %[I  "#{content_type}" by value from dropdown having xpath ".//*[@id='edit-type']/option[3]"]
	#step %[I select "Programme" option by text from dropdown having name "Programme"]
	step %[I click on element having xpath ".//*[@id='edit-type']/option[3]"] #Programme
	select_program_filter
end

And(/^wait for few sec$/) do
	step %[I wait for 20 sec]
end

