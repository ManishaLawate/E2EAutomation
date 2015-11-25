Feature: BPM_Login

	Scenario: As a User I can log into foxtel cms
		Given User navigates to "http://foxtel-cms.local/"
		And wait for 30 sec
		And I enter username as "admin"
		And I enter password as "admin"
		Then I click on signin button
		And wait for 20 sec
		Then I should get logged in
		Then I should see page title as "BPM Content | FoxtelCMS"
		Then I click on the BigPond Content tab

