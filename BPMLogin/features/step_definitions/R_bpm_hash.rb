require 'Selenium-webdriver'
require 'selenium-cucumber'

Given(/^check the values from hash$/) do
  get_hash
end

And(/^apply filter for programme content type$/) do
	#step %[I select "#{content_type}" option by value from dropdown having xpath ".//*[@id='edit-type']/option[3]"]
	#step %[I select "Programme" option by text from dropdown having name "Programme"]
	step %[I click on element having xpath ".//*[@id='edit-type']/option[3]"] #Programme
	apply_filter
	step %[I click on element having xpath ".//*[@id='edit-submit-view-all-content']"] #Apply
end

And(/^wait for few sec$/) do
  step %[I wait for 20 sec]
end

Then(/^I click on review link and select programme$/) do 
	programme_select
	#step %[I click on element having xpath ".//*[@id='branding']/ul/li[4]/a"]
	#open_link_in_new_tab
end

def programme_select
	prog_name = $driver.find_element(:xpath,".//*[@id='views-form-view-all-content-page-foxtel']/div/table/tbody/tr/td[2]/a")
	if $bpm['Title'] != prog_name.text 
			puts "No results match"
	else
		prog_name.click
	end
end
#Then(/^I compare the programme fields in cms$/) do
	#compare_values
#end

Then(/^check the programme type$/) do
	check_programme_type    # later calls in compare values
end


Then (/^check the genre type$/) do
	verify_genre_type
	end

Then(/^program published$/) do
 step %[element having xpath ".//*[@id='console']/div[2]" should have text as "Programme #{$bpm['Title']} has been updated."]
end

def get_hash
	$bpm = {'Title' => 'E2EAutomationAssetTvEps13910', 
		'programmeId' => '2000013910',
		'providerId' => 'SON',
		'groupID' => '2200013910',	
		'category'=>'TV_EPS',
		'season_id' => '2200013910',      #season_id_node
		'season_title' => 'E2EAutomationAssetTvEps13910 Season 15',
		'season_number' => '15 ',
		'EpisodeNumber'=> '15',
		'EpisodeTitle' => 'E2EAutomationAssetTvEps13910Episode',
		'imdbid' => ' ',
		'Colour' => 'BlackAndWhite',
		'genre'=> 'Entertainment:Bollywood', 
		'LongSynopsis' => 'An experiment in advanced weather technology has turned a desert canyon into fertile farmland, and proven once again that humans and robots can work well together. But a sudden rash of earthquakes and storms threatens to wreck the project. It\'s up to Astro to find out who is behind the evil plan.',
		'ShortSynopsis' => 'An experiment in advanced weather technology has turned a desert canyon into fertile farmland, and proven once again that humans and robots can work well together.',
		'Year' => '2006',
		'Country' => 'JP',
		'Actor' => 'Candi Milo',
		'Writer' => 'Mrunal Kulkarni',
		'Director' => 'Genndy Tartakovsky',
		'assetID' => ''
	} 

	#$bpm.each {|key, value| puts "#{key} is #{value}" }
end

def apply_filter
	name_title = $driver.find_element(:xpath,".//*[@id='edit-title']") 
	name_title.send_keys "#{$bpm['Title']}"	
	puts "function test #{$bpm['Title']}"	
end


def save_link 
	current_link = $driver.current_url
	puts "I am on the #{current_link} link"
end

def concat_String(string1,separator,string2)
string3 = "#{string1}" + "#{separator}"+"#{string2}"
return string3
end

def compare_values

	programme_title = $driver.find_element(:xpath,".//*[@id='edit-title']")
	if programme_title.attribute("value") != "#{$bpm['Title']}"
		raise "Programme title entered is not in CMS is same as mentioned in XML"
	else
		puts " Programme title entered in CMS is same as mentioned in XML"
	end

	programme_id = $driver.find_element(:xpath,".//*[@id='edit-field-programme-id-und-0-value']")
	if programme_id.attribute("value") != "#{$bpm['programmeId']}"
		raise "Programme id entered in CMS is not same as mentioned in XML"
	else
		puts "Programme id entered in CMS is same as mentioned in XML"		
	end

	provider_id = $driver.find_element(:xpath,".//*[@id='edit-field-provider-id-und-0-value']")
	if provider_id.attribute("value") != "#{$bpm['providerId']}"
		raise "Provider_id entered in CMS is not same as mentioned in XML"
	else
		puts "Provider_id entered in CMS is same as mentioned in XML"
	end
	
	group_id = $driver.find_element(:xpath,".//*[@id='edit-field-group-id-und-0-value']")
	if group_id.attribute("value") != "#{$bpm['groupID']}"
		raise "Group_id entered in CMS is not same as mentioned in XML"
	else
		puts "Group_id entered in CMS is same as mentioned in XML"
	end

	season_id = $driver.find_element(:xpath, ".//*[@id='edit-field-programme-season-id-und-0-target-id']")
	if season_id.attribute("value") != "#{$bpm['season_id']}"
		puts "Season_id entered in CMS is not same as mentioned in XML" # raise not used here need to implement the sub string fun
	else
		puts "Season_id entered in CMS is same as mentioned in XML"
	end
    
	season_title = $driver.find_element(:xpath,".//*[@id='season-title-value']")
	if season_title.attribute("value") != "#{$bpm['season_title']}"
		puts "Season_title entered in CMS is not same as mentioned in XML"
	else 
		puts "Season_title entered in CMS is same as mentioned in XML"
	end

	season_number = $driver.find_element(:xpath,".//*[@id='edit-field-season-number-und-0-value']")
	if season_number.attribute("value") != "#{$bpm['SeasonNumber']}"
		raise "Season_number entered in CMS is not same as mentioned in XML"
	else 
		puts "Season_number entered in CMS is same as mentioned in XML"
	end

	episode_number = $driver.find_element(:xpath,".//*[@id='edit-field-episode-number-und-0-value']")
	if episode_number.attribute("value") != "#{$bpm['EpisodeNumber']}"
		raise "Episode_number entered in CMS is not same as mentioned in XML"
	else 
		puts "Episode_number entered in CMS is same as mentioned in XML"
	end

	episode_title = $driver.find_element(:xpath,".//*[@id='edit-field-episode-title-und-0-value']")
	if episode_title.attribute("value") != "#{$bpm['EpisodeTitle']}"
		raise "Episode_title entered in CMS is not same as mentioned in XML"
	else 
		puts "Episode_title entered in CMS is same as mentioned in XML"
	end


	#imdbid = $driver.find_element(:xpath,".//*[@id='edit-field-imdb-id-und-0-value']")
	#if imdbid.attribute("value") != "#{$bpm['imdbid']}"
		#raise "Imdbid entered in CMS is not same as mentioned in XML"
	#else 
		#puts "Imdbid entered in CMS is same as mentioned in XML"
	#end

	color = $driver.find_element(:xpath,".//*[@id='edit-field-color-und-0-value']")
	if color.attribute("value") != "#{$bpm['Colour']}"
		raise "Color entered in CMS is not same as mentioned in XML"
	else 
		puts "Color entered in CMS is same as mentioned in XML"
	end

	review_source_country = $driver.find_element(:xpath,".//*[@id='edit-field-rt-country-und-au']").selected?
	if review_source_country != "#{$bpm['Country']}"
		puts "Australia is selected"
	else 
		puts "United States is selected"
	end

	#synopsis_source = $driver.find_element(:xpath,".//*[@id='edit-field-rt-country-und-au']").selected?
	#if synopsis_source == "#{bpm['synopsis_source']}"
		#puts "Australia is selected"
	#else 
	#	puts "United States is selected"
	#end

	long_synopsis = $driver.find_element(:xpath,".//*[@id='edit-field-synopsis-und-0-value']")
	if long_synopsis.attribute("value") != "#{$bpm['LongSynopsis']}"
		raise "long_synopsis entered in CMS is not same as mentioned in XML"
	else 
		puts "long_synopsis in CMS is same as mentioned in XML"
	end

	short_synopsis = $driver.find_element(:xpath,".//*[@id='edit-field-short-synopsis-und-0-value']")
	if short_synopsis.attribute("value") != "#{$bpm['ShortSynopsis']}"
		raise"short_synopsis entered in CMS is not same as mentioned in XML"
	else 
		puts "short_synopsis in CMS is same as mentioned in XML"
	end

	prod_year = $driver.find_element(:xpath,".//*[@id='edit-field-year-und-0-value-date']")
	if prod_year.attribute("value") != "#{$bpm['Year']}"
		raise"prod_year entered in CMS is not same as mentioned in XML"
	else 
		puts "prod_year in CMS is same as mentioned in XML"
	end

	prog_country = $driver.find_element(:xpath,".//*[@id='edit-field-programme-country-und-0-value']")
	if prog_country.attribute("value") != "#{$bpm['Country']}"
		raise"prog_country entered in CMS is not same as mentioned in XML"
	else 
		puts "prog_country in CMS is same as mentioned in XML"
	end

	actor = $driver.find_element(:xpath,".//*[@id='edit-field-actors-und-0-value']")
	actor.clear
	puts "actor field cleared"
	actor.send_keys("Candi Milo")
	if actor.attribute("value") != "#{$bpm['Actor']}"
		raise "Actor entered in CMS is not same as mentioned in XML"
	else 
		puts "Actor in CMS is same as mentioned in XML"
	end

	#writer = $driver.find_element(:xpath,".//*[@id='edit-field-writers-und-0-value']")
	#if writer.attribute("value") != "#{$bpm['Writer']}"
		#raise "Writer entered in CMS is not same as mentioned in XML"
	#else 
		#puts "Writer in CMS is same as mentioned in XML"
	#end

	director = $driver.find_element(:xpath,".//*[@id='edit-field-directors-und-0-value']")
	if director.attribute("value") != "#{$bpm['Director']}"
		raise "Director name entered in CMS is not same as mentioned in XML"
	else 
		puts "Director name entered in CMS is same as mentioned in XML"
	end
end

def check_programme_type
	if $bpm['category'] == "TV_EPS"
  		prog_type = $driver.find_element(:xpath,".//*[@id='edit-field-programme-type-und-tv-eps']").selected?
  		puts "programme type = TV_EPS: '#{prog_type}'"
  			if prog_type == "false"
  				puts "TV_EPS is not selected!!"
  			else
  				puts "TV_EPS is selected!!"
  				#compare_values
  			end
	elsif $bpm['category'] == "TV_NO_EPS"	
  		prog_type = $driver.find_element(:xpath,".//*[@id='edit-field-programme-type-und-tv-no-eps']").selected?
  		puts "programme type = TV_NO_EPS: '#{prog_type}'"
  			if prog_type == "false"
  				puts "TV_NO_EPS is not selected!!"
  			else
  				compare_values
  				#publish_programme
  			end
  
	else $bpm['category'] == "MOVIE"
  		prog_type = $driver.find_element(:xpath,".//*[@id='edit-field-programme-type-und-movie']").selected?
  			puts "programme type = MOVIE: '#{prog_type}'"
  			if prog_type == "false"
  				puts "MOVIE is not selected!!"
  			else
  				compare_values
  			end
  	end
end
	
=begin
def open_link_in_new_tab
	body = $driver.find_element(:xpath, ".//*[@id='views-form-view-all-content-page-foxtel']/div/table/tbody/tr[1]/td[3]")
	body.send_keys(:control, 't')
	$driver.get('http://foxtel-cms.local/node/1359/')
end

def publish_programme
qa_state = $driver.find_element(:xpath,".//*[@id='edit-field-qa-state-und-fixed']")
	qa_state.click
	puts "qa_state changed to fixed"
	
	log_msg = $driver.find_element(:xpath,".//*[@id='edit-field-qa-state-und-fixed']")
	log_msg.send_keys("fix log")
	puts "log message entered"

	publication_state = $driver.find_element(:xpath,".//*[@id='edit-field-publication-state-und-approved']")
	publication_state.click
	puts "publication_state changed to approved"

	save_prog = $driver.find_element(:xpath,".//*[@id='edit-submit']")
	save_prog.click
	puts "Save the programme changes"
end
=end



def verify_genre_type
	$i=1
	$num=5
	$genre_checkbox = $driver.find_element(:xpath,"(//div[@id='edit-field-genre-und']/div/input)[#{$i}]")
	$genre_type = $driver.find_element(:xpath,"(//div[@id='edit-field-genre-und']/div/input)[#{$i}]").text 
	while $i < $num  do
		$bpm['genre'] == "#{$genre_type}"
		puts "gentered loop:- genre #{$i}"
		puts "gtype = #{$genre_type}"
		puts "gstate = #{$genre_checkbox}"
  			if $genre_checkbox.selected? == "false"
  				puts " Genre type is not selected!!"
  			else
  				puts "Mentioned genre type is selected"
  			end
		 $i +=1
	end
end
