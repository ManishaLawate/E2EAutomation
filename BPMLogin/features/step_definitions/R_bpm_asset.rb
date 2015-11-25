require 'selenium-cucumber'

Given(/^Navigate to summary page$/) do
  step %[I click on element having xpath ".//*[@id='branding']/ul/li[1]/a"]
end

And (/^Select the Trailer SD asset on it$/) do
	step %[I click on element having xpath ".//*[@id='block-system-main']/div/div/div/div/div[11]/div/div/div/table[1]/tbody/tr/td[1]/a"]
end

Then(/^compare trailer asset value$/) do
	get_hash_asset
end


def get_hash_asset

end

