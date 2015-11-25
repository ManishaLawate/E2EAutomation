Feature: BPM_ASSET

Scenario: bpm_asset cms comparison
		Given Navigate to summary page
		And Select the Trailer SD asset on it
		Then I click on element having xpath ".//*[@id='branding']/ul/li[2]/a"
		Then compare trailer asset value
		
		