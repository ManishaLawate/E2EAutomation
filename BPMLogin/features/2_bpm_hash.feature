Feature: BPM_HASH

Scenario: hash xml cms comparison
		Given check the values from hash
		And apply filter for programme content type
		And wait for 10 sec
		Then I click on review link and select programme
		Then I click on element having xpath ".//*[@id='branding']/ul/li[4]/a" 
		#Then element having xpath "([^\.//*[@id='branding']/ul/li[4]/a]*)" should have text as "EDIT"
		#Then I compare the programme fields in cms
		Then check the programme type 
		Then check the genre type
		#Then I click on element having xpath ".//*[@id='edit-field-image-poster-und-0-remove-button']" 
		#Then I click on element having xpath ".//*[@id='edit-field-image-landscape-und-0-remove-button']" 
		#Then I select "Fixed" option by value from radio button group having id "edit-field-qa-state-und-fixed"
		#Then I enter "fixed log" into input field having id "edit-field-log-message-und-0-value"
		#Then I select "approved" option by value from radio button group having id "edit-field-publication-state-und-approved"
		And wait for few sec
		#Then I click on element having id "edit-submit"
		Then I wait for 25 sec
		#Then program published

#Scenario:QA state to publish the programme
#		Given change the QA state 
#		And change the publication state
#		Then change the publishing options 

