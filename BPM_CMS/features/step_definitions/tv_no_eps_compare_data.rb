def tv_no_eps_compare_values

	programme_title = $driver.find_element(:xpath,".//*[@id='edit-title']")
	if programme_title.attribute("value")!= "#{$bpm_element["#{$pid[0]}"][:Title]}"
		raise "Programme title entered in CMS is not same as mentioned in XML"
	else
		puts " Programme title entered in CMS is same as mentioned in XML"
	end

	programme_id = $driver.find_element(:xpath,".//*[@id='edit-field-programme-id-und-0-value']")
	if programme_id.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:programmeId]}"
		raise "Programme id entered in CMS is not same as mentioned in XML"
	else
		puts "Programme id entered in CMS is same as mentioned in XML"		
	end

	provider_id = $driver.find_element(:xpath,".//*[@id='edit-field-provider-id-und-0-value']")
	if provider_id.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:providerId]}"
		raise "Provider_id entered in CMS is not same as mentioned in XML"
	else
		puts "Provider_id entered in CMS is same as mentioned in XML"
	end
	
	group_id = $driver.find_element(:xpath,".//*[@id='edit-field-group-id-und-0-value']")
	if group_id.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:groupId]}"
		raise "Group_id entered in CMS is not same as mentioned in XML"
	else
		puts "Group_id entered in CMS is same as mentioned in XML"
	end
	
	season_id = $driver.find_element(:xpath, ".//*[@id='edit-field-programme-season-id-und-0-target-id']")
	seasonstr = season_id.text
	sid = seasonstr.split(" ")
	season_state=season_id.displayed?
	unless season_state == true
		puts "Season Id field is not displayed"
	else 	
		 if sid[0] != "#{$bpm_element["#{$pid[0]}"][:groupId]}"
			puts "Season_id entered in CMS is not same as mentioned in XML" 
		else
			puts "Season_id entered in CMS is same as mentioned in XML"
		end
	end
    
	#season_title =  Wait.until{$driver.find_element(:xpath,".//*[@id='season-title-value']")}
	#season_title_state = season_title.displayed?
	#expected_st = "#{$bpm_element["#{$pid[0]}"]["#{:Title}" + " "+"Season"+" "+"#{:SeasonNumber}"]}"
	#unless season_title_state == true
		#puts "Season title field is not displayed"
	#else
		#if season_title.text != expected_st
			#puts "#{expected_st}"
			#puts "Season_title entered in CMS is not same as mentioned in XML"
		#else 
			#puts "Season_title entered in CMS is same as mentioned in XML"
		#end
	#end	

	#season_number =  Wait.until{$driver.find_element(:xpath,".//*[@id='season-number-value']")}
	#season_number_state = season_number.displayed?
	#unless season_number_state == true
	#	puts "Season title field is not displayed"
	#else
	#	if season_number.text != "#{$bpm_element["#{$pid[0]}"][:SeasonNumber]}"
	#		puts "Season_number entered in CMS is not same as mentioned in XML"
	#	else 
	#		puts "Season_number entered in CMS is same as mentioned in XML"
	#	end
	#end

	imdbid = $driver.find_element(:xpath,".//*[@id='edit-field-imdb-id-und-0-value']")
	imdb_no = imdbid.send_keys("4932500")
	puts "Imdbid entered in CMS is #{imdb_no}"
	$bpm_element["#{$pid[0]}"][:imdbid] = "#{imdb_no}"

	review_source_country = $driver.find_element(:xpath,".//*[@id='edit-field-rt-country-und-au']").selected?
	if review_source_country != "false"
		puts "Australia is selected"
	else 
		puts "United States is selected"
	end

	synopsis_source = $driver.find_element(:xpath,".//*[@id='edit-field-programme-synopsis-source-und-rottentomatoes']").selected?
	if synopsis_source != "false"
		puts "Rotten Tomatoes synopsis source is selected"
	else 
		puts "BigPond data is selected"
	end

	long_synopsis = $driver.find_element(:xpath,".//*[@id='edit-field-synopsis-und-0-value']")
	if long_synopsis.text!= "#{$bpm_element["#{$pid[0]}"][:LongSynopsis]}"
		raise "long_synopsis entered in CMS is not same as mentioned in XML"
	else 
		puts "long_synopsis in CMS is same as mentioned in XML"
	end

	short_synopsis = $driver.find_element(:xpath,".//*[@id='edit-field-short-synopsis-und-0-value']")
	if short_synopsis.text != "#{$bpm_element["#{$pid[0]}"][:ShortSynopsis]}"
		raise"short_synopsis entered in CMS is not same as mentioned in XML"
	else 
		puts "short_synopsis in CMS is same as mentioned in XML"
	end

	color = $driver.find_element(:xpath,".//*[@id='edit-field-color-und-0-value']")
	if color.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:Colour]}"
		raise "Color entered in CMS is not same as mentioned in XML"
	else 
		puts "Color entered in CMS is same as mentioned in XML"
	end

	prod_year = $driver.find_element(:xpath,".//*[@id='edit-field-year-und-0-value-date']") 
	if prod_year.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:Year]}"
		raise"prod_year entered in CMS is not same as mentioned in XML"
	else 
		puts "prod_year in CMS is same as mentioned in XML"
	end

	prog_country = $driver.find_element(:xpath,".//*[@id='edit-field-programme-country-und-0-value']")
	if prog_country.text != "#{$bpm_element["#{$pid[0]}"][:Country]}"
		puts "prog_country entered in CMS is not same as mentioned in XML"
	else 
		puts "prog_country in CMS is same as mentioned in XML"
	end

	maturity = $driver.find_element(:xpath,".//*[@id='edit-field-maturity-rating-und']")
	puts "#{maturity.attribute("value")}"
	if maturity.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:MaturityRating]}"
		raise"MaturityRating entered in CMS is not same as mentioned in XML"
	else 
		puts "MaturityRating in CMS is same as mentioned in XML"
	end

	prg_bp_editorial = $driver.find_element(:xpath,".//*[@id='edit-field-programme-presto-editorial-und-0-value']")
	programme_bp_editorial = prg_bp_editorial.send_keys("This is test!!")
	$bpm_element["#{$pid[0]}"][:Programme_bigpond_editorial] = "#{programme_bp_editorial}"

	actor = $driver.find_element(:xpath,".//*[@id='edit-field-actors-und-0-value']")
	#actorstr = actor.text
	#actor = actor.split(",")
	if actor.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:Actor]}"
		raise "Actor entered in CMS is not same as mentioned in XML"
	else 
		puts "Actor in CMS is same as mentioned in XML"
	end

	#writer = $driver.find_element(:xpath,".//*[@id='edit-field-writers-und-0-value']")
	#if writer.attribute("value") != "#{$bpm_element["#{$pid[0]}"][":Writer"]}"
		#raise "Writer entered in CMS is not same as mentioned in XML"
	#else 
		#puts "Writer in CMS is same as mentioned in XML"
	#end

	director = $driver.find_element(:xpath,".//*[@id='edit-field-directors-und-0-value']")
	if director.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:Director]}"
		puts "Director name entered in CMS is not same as mentioned in XML"
	else 
		puts "Director name entered in CMS is same as mentioned in XML"
	end
end	