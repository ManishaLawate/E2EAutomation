Feature: BPM_LOGIN

	Scenario: valid_bpm_login
		Given Admin opens bpm cms
		And wait for 10 sec
		And I enter username as "admin"
		And I enter password as "admin"
		Then I click on signin button
		And wait for 20 sec
		Then I should get logged in
		Then The page title should be shown as BPM Content
		Then I click on the BigPond Content tab

	#Scenario: Screenshot	
	#	Then I take screenshot

	#Scenario: Close Browser
	#	Then I close browser