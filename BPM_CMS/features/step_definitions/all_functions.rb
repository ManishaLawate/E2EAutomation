Wait= Selenium::WebDriver::Wait.new(timeout:180)

def get_hash
	$bpm_element = {
		:assetIds=>{":1448358012_T_SD"=>"lmMjczeToWi0fdx-_l8IRsDR9EpmOL_7", 
			":1448358012_HD"=>"lkMjczeTrCMnr__ndi-ctt9A0UI0GXkd",
			 ":1448358011_SD"=>"loMjczeTpL4yYPj7XchWTxQ5s50yn2qc",
			  ":1448358011_T_SD"=>"k3MjczeTrhVU6fIi4kz7GbOazxPEYFxN", 
			  ":1448358011_HD"=>"k5MjczeTrnJ3ss22vKIbETuT_yvaGIUg", 
			  ":1448358012_SD"=>"liMjczeTqqB4yySs5Jl8cO8AuKEzLZCE", 
			  ":1448358013_SD"=>"JzMzczeTr1PIUvK1uhsfybq5u2k86dcj", 
			  ":1448358013_HD"=>"JxMzczeTrPDXXBz9ic4ySQCQuEcvz0TA",
			   ":1448358013_T_SD"=>"J1MzczeTqMznM14cqqzjdM476hotebxr"}, 
			   :programeIds=>["1448358011", "1448358012", "1448358013"],
			    "1448358011"=>{:start_date=>"2006-01-01T00:00:00.000Z",
			     :end_date=>"2025-01-01T00:00:00.000Z", 
			     :offerType=>"PPV-Promotion-699",
			      :deviceId=>["STBmanaged", "STBunmanaged", "CEMediaPlayer", "gameConsole", "tablet", "phone", "pc_mac", "pc_mac_play", "connTV"], 
			      :showID=>"1448358011", :category=>"TV_EPS", :programmeId=>"1448358011", :providerId=>"SON",
			       :groupId=>"1448358012",
			        :Title=>"E2EAutomationAssetTvEps_1448358011", :VideoFormat=>["SD", "HD"],
			         :genre=>"Entertainment:Bollywood", :MaturityRating=>"G", :Subtitle=>"0", :Year=>"2003", :Colour=>"BlackAndWhite",
			          :Languages=>"en", :Country=>"JP", :Director=>"Dadasaheb Phalake", :Actor=>"Prasad Oak", :Writer=>"Subodh Bhave", :SeasonNumber=>"597", :EpisodeNumber=>"10", :ViewingPeriod=>"48", :EpisodeTitle=>"E2EAutomationEpisode_1448358011", :ShortSynopsis=>"An experiment in advanced weather technology has turned farmland ", :LongSynopsis=>"An experiment in advanced weather technology has turned a desert canyon into fertile farmland ", :assetId=>"1448358011", :Duration=>"P0Y0M0DT0H0M0.000S", :AspectRatio=>"4x3", :Sound=>"Stereo", :trailerId=>"1448358011_T", :EmbedCode=>{":1448358011_SD"=>"loMjczeTpL4yYPj7XchWTxQ5s50yn2qc", ":1448358011_T_SD"=>"k3MjczeTrhVU6fIi4kz7GbOazxPEYFxN", ":1448358011_HD"=>"k5MjczeTrnJ3ss22vKIbETuT_yvaGIUg"}}, "1448358012"=>{:start_date=>"2006-01-01T00:00:00.000Z", :end_date=>"2025-01-01T00:00:00.000Z", :deviceId=>["STBmanaged", "STBunmanaged", "CEMediaPlayer", "gameConsole", "tablet", "phone", "pc_mac", "pc_mac_play", "connTV"], :category=>"MOVIE", :programmeId=>"1448358012", :providerId=>"Studio", :Title=>"E2EAutomationAssetMovie_1448358012", :VideoFormat=>["SD", "HD"], :MaturityRating=>"M", :Subtitle=>"0", :Year=>"2005", :Colour=>"BlackAndWhite", :Languages=>"en", :Country=>"US", :Director=>"Mrinalini Singh", :Actor=>"Anupama Bhise", :Writer=>"Manisha Lawate", :ViewingPeriod=>"48", :ShortSynopsis=>"An experiment in advanced weather technology has turned farmland ", :LongSynopsis=>"An experiment in advanced weather technology has turned a desert canyon into fertile farmland ", :assetId=>"1448358012", :Duration=>"P0Y0M0DT0H0M0.000S", :AspectRatio=>"4x3", :Sound=>"Stereo", :trailerId=>"1448358012_T", :EmbedCode=>{":1448358012_T_SD"=>"lmMjczeToWi0fdx-_l8IRsDR9EpmOL_7", ":1448358012_HD"=>"lkMjczeTrCMnr__ndi-ctt9A0UI0GXkd", ":1448358012_SD"=>"liMjczeTqqB4yySs5Jl8cO8AuKEzLZCE"}}, "1448358013"=>{:start_date=>"2006-01-01T00:00:00.000Z", :end_date=>"2025-01-01T00:00:00.000Z", :offerType=>"PPV-Promotion-DoublePack", :deviceId=>["STBmanaged", "STBunmanaged", "CEMediaPlayer", "gameConsole", "tablet", "phone", "pc_mac", "pc_mac_play", "connTV"], :showID=>"1448358013", :category=>"TV_NO_EPS", :programmeId=>"1448358013", :providerId=>"SON1", :Title=>"E2EAutomationAssetTvNoEps_1448358013", :VideoFormat=>["SD", "HD"], :MaturityRating=>"PG", :Subtitle=>"0", :Year=>"2006", :Colour=>"BlackAndWhite", :Languages=>"en", :Country=>"IN", :Director=>"Yash chopra", :Actor=>"Sidharth Jadhav", :Writer=>"Kanitkar Sir", :SeasonNumber=>"411", :ViewingPeriod=>"48", :ShortSynopsis=>"An experiment in advanced weather technology has turned farmland ", :LongSynopsis=>"An experiment in advanced weather technology has turned a desert canyon into fertile farmland ", :assetId=>"1448358013", :Duration=>"P0Y0M0DT0H0M0.000S", :AspectRatio=>"4x3", :Sound=>"Stereo", :trailerId=>"1448358013_T", :EmbedCode=>{":1448358013_SD"=>"JzMzczeTr1PIUvK1uhsfybq5u2k86dcj", ":1448358013_HD"=>"JxMzczeTrPDXXBz9ic4ySQCQuEcvz0TA", ":1448358013_T_SD"=>"J1MzczeTqMznM14cqqzjdM476hotebxr"}}}
				end


	def select_program_filter
	$i=0
	puts "in filter"
	$pid = []
	#$allelements = []

	$bpm_element[:programeIds].each do|element|
		puts "The programme id is #{element}"
		$pid << element
		puts "These are the programs ingested #{$bpm_element[:programeIds]}"
		#apply_device_filter
		apply_filter_programme
		#programme_select	
		offer_select
		navigate_to_program_asset
		puts " #{$bpm_element}"
	end
end

def apply_device_filter
	editorial_tab = Wait.until{$driver.find_element(:xpath,".//*[@id='branding']/ul/li[5]/a")}
	editorial_tab.click
	puts "Editorial_tab selected"

	type_select_supported_device = Wait.until{$driver.find_element(:xpath,".//*[@id='edit-type']/option[10]")}
	type_select_supported_device.click
	$bpm_element["#{$pid[0]}"][:deviceId].each do |key|
		puts "#{key}"
		title_add = Wait.until{$driver.find_element(:xpath,".//*[@id='edit-title']")}
		title_add.send_keys("#{key}")
		apply_btn = Wait.until{$driver.find_element(:xpath,".//*[@id='edit-submit-view-all-content']")}
		apply_btn.click
		sleep 10
		device_select = Wait.until{$driver.find_element(:xpath,".//*[@id='views-form-view-all-content-page-editorial']/div/table/tbody/tr/td[2]/a")}
		device_select.click
		device_id = Wait.until{$driver.find_element(:xpath,".//*[@id='node-170']/div[2]/div[1]/div[2]/div")}
		id_device_cms = device_select.text
		$bpm_element["#{$pid[0]}"][:DeviceId] = "#{id_device_cms}"
		puts "my hash after adding device id: #{$bpm_element}"
	end
end

def apply_filter_programme
	name_title = $driver.find_element(:xpath,".//*[@id='edit-title']") 
	name_title.send_keys "#{$bpm_element["#{$pid[0]}"][:Title]}"
	puts "BPM title: #{$bpm_element["#{$pid[0]}"][:Title]}"	
	apply_button = $driver.find_element(:xpath,".//*[@id='edit-submit-view-all-content']")
	apply_button.click
	sleep 10
	puts "Applied filter.."
	prog_name = $driver.find_element(:xpath,".//*[@id='views-form-view-all-content-page-foxtel']/div/table/tbody/tr/td[2]/a")
	pname = prog_name.text
	puts "pname is =: #{pname}"
	if $bpm_element["#{$pid[0]}"][:Title] != pname
		puts "No results match"
	else
		prog_name.click
		sleep 10
	end
end

def programme_select
	edit_tab = Wait.until{$driver.find_element(:xpath,".//*[@id='branding']/ul/li[4]/a")}
	edit_tab.click
			#sleep 10
			check_programme_type_compare
			sleep 5
			remove_img
  			#sleep 5
  			publish_content
  		end

  		def check_programme_type_compare
  			if $bpm_element["#{$pid[0]}"][:category] == "TV_EPS"
  				prog_type = $driver.find_element(:xpath,".//*[@id='edit-field-programme-type-und-tv-eps']").selected?
  				puts "programme type = TV_EPS: '#{prog_type}'"
  				if prog_type == "false"
  					$bpm_element["#{$pid[0]}"][:Country][:imdbid] = "0103359"
  					puts "TV_EPS is not selected!!"
  				else
  					puts "TV_EPS is selected!!"	
  					tv_eps_compare_values		
  				end

  			elsif $bpm_element["#{$pid[0]}"][:category] == "TV_NO_EPS"	
  				prog_type = $driver.find_element(:xpath,".//*[@id='edit-field-programme-type-und-tv-no-eps']").selected?
  				puts "programme type = TV_NO_EPS: '#{prog_type}'"
  				if prog_type == "false"
  					$bpm_element["#{$pid[0]}"][:Country][:imdbid] = "4932500"
  					puts "TV_NO_EPS is not selected!!"
  				else
  					puts "TV_NO_EPS is selected!!"
  					tv_no_eps_compare_values
  				end

  			else $bpm_element["#{$pid[0]}"][:category] == "MOVIE"
  				prog_type = $driver.find_element(:xpath,".//*[@id='edit-field-programme-type-und-movie']").selected?
  				puts "programme type = MOVIE: '#{prog_type}'"
  				if prog_type == "false"
  					$bpm_element["#{$pid[0]}"][:Country][:imdbid] = "0056142"
  					puts "MOVIE is not selected!!"
  				else
  					puts "MOVIE is selected!!"
  					movie_compare_values
  				end
  			end
  		end

  		def remove_img
  			poster_img = $driver.find_element(:xpath,".//*[@id='edit-field-image-poster-und-0-remove-button']") 
  			poster_img.click
  			puts "Image type: Poster removed"

  			landscape_img = $driver.find_element(:xpath,".//*[@id='edit-field-image-landscape-und-0-remove-button']")
  			landscape_img.click
  			puts "Image type: Landscape removed"
  		end

  		def publish_content
  			qa_state_fixed = $driver.find_element(:xpath,".//*[@id='edit-field-qa-state-und-fixed']")
  			qa_state_fixed.click
  			puts "qa_state changed to fixed"

  			log_msg = $driver.find_element(:xpath,".//*[@id='edit-field-log-message-und-0-value']")
  			log_msg.send_keys("fix log")
  			puts "log message entered"

  			publication_state_approved = $driver.find_element(:xpath,".//*[@id='edit-field-publication-state-und-approved']")
  			publication_state_approved.click
  			puts "publication_state changed to approved"

  			save_content = Wait.until{$driver.find_element(:xpath,".//*[@id='edit-submit']")}
  			save_content.click
  			sleep 100
  			status_content = Wait.until{$driver.find_element(:xpath,".//*[@id='block-system-main']/div/div/div/div[1]/div/div[1]/div/div[3]/div")}
  			puts "status_content "

	#updatetext = $driver.find_element(:xpath,".//*[@id='console']/div[2]")
	#updatestr = updatetext.text
	#if updatestr == "Programme #{$bpm_element["#{$pid[0]}"][:Title]} has been updated."
	#	puts "Programme #{$bpm_element["#{$pid[0]}"][:Title]} has been updated."
	#else
	#	puts "Something went wrong!"
	#end
end

def offer_select
	#$offer_table = 1
	for $offer_table in 1..2
	#while $offer_table < 3 do 
	$summary_tab = Wait.until{$driver.find_element(:xpath,".//*[@id='branding']/ul/li[1]/a")}
	$summary_tab.click
	sleep 10
	offer_vf = Wait.until{$driver.find_element(:xpath,".//*[@id='block-system-main']/div/div/div/div/div[9]/div/div/div/table/tbody/tr[#{$offer_table}]/td[1]/a")}
	offer_vf.click
	sleep 2
	puts "offer clicked"

	current_link = $driver.current_url
	cur = current_link.split("node/")
	puts "The offer node id received is #{cur[1]}"
	if $offer_table == 1
		$bpm_element["#{$pid[0]}"][:offer_sd_nodeid] = "#{cur[1]}"
		puts "offer node id in hash: #{$bpm_element["#{$pid[0]}"][:offer_sd_nodeid]}"
	else
		$bpm_element["#{$pid[0]}"][:offer_hd_nodeid] = "#{cur[1]}"
		puts "offer node id in hash: #{$bpm_element["#{$pid[0]}"][:offer_hd_nodeid]}"
	end
	#for adding node id : $bpm_element["#{$pid[0]}"][:offer_id_sd] = "#{offerasset}"
	offer_edit_tab = Wait.until{$driver.find_element(:xpath,".//*[@id='branding']/ul/li[2]/a")}
	offer_edit_tab.click
	offer_compare_publish
	sleep 20
	associated_program = Wait.until{$driver.find_element(:xpath,".//*[@id='block-system-main']/div/div/div/div[1]/div/div[2]/div/div[5]/div/div/div/div")}
	associated_program.click
	sleep 5
end
	$offer_table +=1
end

def offer_compare_publish
	sleep 5
	offer_compare_data
	sleep 10
	publish_content
	sleep 10
	puts "the hash elements for a programme are #{$bpm_element["#{$pid[0]}"]}" 
end

def offer_compare_data
	videoformat = $driver.find_element(:xpath,".//*[@id='vf-value']")
	vformat = videoformat.text
	puts "video format in edit tab : #{vformat}"
	$bpm_element["#{$pid[0]}"][:offer_id_format] = "null"
	
	if vformat == "SD"
		offersdasset = "#{$bpm_element["#{$pid[0]}"][:assetId]}"+"_"+"#{vformat}"
		puts "offer_id generated: #{offersdasset}"

		offer_sd_id = $driver.find_element(:xpath,".//*[@id='edit-field-offer-id-und-0-value']")
		if offer_sd_id.attribute("value") != offersdasset
			puts "Offer_id entered #{offer_sd_id.attribute("value")} in CMS is not same as mentioned in XML"
		else 
			puts "Offer_id entered #{offer_sd_id.attribute("value")} in CMS is same as mentioned in XML"
			$bpm_element["#{$pid[0]}"][:offer_id_sd] = "#{offersdasset}"
		#puts "Hash after adding sd offer id: #{$bpm_element}"
	end

else
	offerhdasset = "#{$bpm_element["#{$pid[0]}"][:assetId]}"+"_"+"#{vformat}"
	puts "offer_id generated: #{offerhdasset}"

	offer_hd_id = $driver.find_element(:xpath,".//*[@id='edit-field-offer-id-und-0-value']")
	if offer_hd_id.attribute("value") != offerhdasset
		puts "Offer_id entered #{offer_hd_id.attribute("value")} in CMS is not same as mentioned in XML"
	else 
		puts "Offer_id entered #{offer_hd_id.attribute("value")} in CMS is same as mentioned in XML"
		$bpm_element["#{$pid[0]}"][:offer_id_hd] = "#{offerhdasset}"
		#puts "Hash after adding hd offer id: #{$bpm_element}"
	end
end

offer_title = $driver.find_element(:xpath,".//*[@id='edit-title']")
offer_Str = "#{$bpm_element["#{$pid[0]}"][:start_date]}"+"--"+"#{$bpm_element["#{$pid[0]}"][:end_date]}"+"--"+"#{$bpm_element["#{$pid[0]}"][:offerType]}"
puts "CMS : OFFER TITLE: #{offer_title.attribute("value")} and STR_offer #{offer_Str}"

if offer_title.attribute("value") != offer_Str
	puts "Offer title #{offer_title.attribute("value")} entered in CMS is not same as mentioned in XML"
else 
	puts "Offer title #{offer_title.attribute("value")} entered in CMS is same as mentioned in XML"
	$bpm_element["#{$pid[0]}"][:offer_title] = "#{offer_title.attribute("value")}"
	puts "Hash after adding offer title: #{$bpm_element["#{$pid[0]}"][:offer_title]}"
end

prog_off = $driver.find_element(:xpath, ".//*[@id='edit-field-programme-und-0-target-id']")
progstr = prog_off.attribute("value")
progr = progstr.split(" ")	
if progr[0] != "#{$bpm_element["#{$pid[0]}"][:Title]}"
	puts "Programme name #{progstr} associated with offer is not same as mentioned in XML" 
else
	puts "Programme name #{progstr} is associated with offer is same as mentioned in XML"
end

asset_vf = $driver.find_element(:xpath, ".//*[@id='edit-field-asset-und-0-target-id']")
assets_str = asset_vf.attribute("value")
asset_str_split = assets_str.split(" ")
	#if asset_str_split[0] != offerasset
	if asset_str_split[0] != "#{$bpm_element["#{$pid[0]}"][:assetId]}" + "_"+ "#{vformat}"
		puts "The feature asset mentioned in the offer field is not correct" 
	else
		puts "The feature asset mentioned in the offer field is correct"
	end

	asset_t_sd = $driver.find_element(:xpath, ".//*[@id='edit-field-asset-und-1-target-id']")
	asset_t_str = asset_t_sd.attribute("value")
	asset_t_str_split = asset_t_str.split(" ")
	offer_t_asset =  "#{$bpm_element["#{$pid[0]}"][:assetId]}" + "_"+ "T"+"_"+"SD"
	if asset_t_str_split[0] != offer_t_asset
		puts "The Trailer asset mentioned in the offer field is not correct" 
	else
		puts "The Trailer asset mentioned in the offer field is correct"
	end

	offer_providerid = $driver.find_element(:xpath,".//*[@id='provider-id-value']")
	if offer_providerid.text != "#{$bpm_element["#{$pid[0]}"][:providerId]}"
		puts "Provider ID associated with offer is not same as mentioned in XML "
	else
		puts "Provider ID associated with offer is same as mentioned in XML"
	end

	offer_prog_type = $driver.find_element(:xpath,".//*[@id='programme-type-value']")
	if offer_prog_type.text != $bpm_element["#{$pid[0]}"][:category]
		puts "Programme type associated with offer is not same as mentioned in XML "
	else
		puts "Programme type associated with offer is same as mentioned in XML"
	end

	offer_type = $driver.find_element(:xpath,".//*[@id='edit-field-offer-type-und']")
	if offer_type.attribute("value") != $bpm_element["#{$pid[0]}"][:offerType]
		puts "Offer type #{offer_type.attribute("value")} associated with offer is not same as mentioned in XML "
	else
		puts "offer type #{offer_type.attribute("value")} associated with offer is same as mentioned in XML"
	end

	offer_price = $driver.ind_element(:xpath,".//*[@id='edit-field-offer-price-und-0-value']")
	offer_price_cms = offer_price.send_keys("150")
	$bpm_element["#{$pid[0]}"][:offer_price]= "#{offer_price_cms}"

	activate = $driver.find_element(:xpath,".//*[@id='edit-field-activate-und']")
	activate.click

	#viewing_period = $driver.find_element(:xpath,".//*[@id='edit-field-viewing-period-und-0-value']")
	#if viewing_period.attribute("value") != $bpm_element["#{$pid[0]}"][:ViewingPeriod]
	#	raise "Viewing Period entered in CMS is not same as mentioned in XML"
	#else 
	#	puts "Viewing Period entered in CMS is same as mentioned in XML"
	#end
end

def navigate_to_program_asset
	associated_prog = $driver.find_element(:xpath,".//*[@id='block-system-main']/div/div/div/div[1]/div/div[2]/div/div[5]/div/div/div/div/a")
	associated_prog.click
	$asset_table_id=1
	while $i < 4 do
		asset_vf= $driver.find_element(:xpath,".//*[@id='block-system-main']/div/div/div/div/div[11]/div/div/div/table[#{$asset_table_id}]/tbody/tr/td[1]/a")	
		asset_vf.click
		
		prog_edit_tab = $driver.find_element(:xpath,".//*[@id='branding']/ul/li[2]/a")
		prog_edit_tab.click
		asset_compare_publish
		sleep 20
		$i +=1
	end
end

def asset_compare_publish
	asset_compare_data
	sleep 10
	publish_content
	sleep 10
end

def asset_compare_data
	$asset_class = $driver.find_element(:xpath,".//*[@id='edit-field-asset-class-und']")
	$asset_class_get = $asset_class.text

	$asset_videoformat = $driver.find_element(:xpath,".//*[@id='edit-field-video-format-und']")
	$asset_vformat = $asset_videoformat.text
	puts "format: #{asset_vformat}"

	asset_title_check

	if p_asset_id.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:assetId]}"
		puts "Asset id entered #{p_asset_id.attribute("value")} in CMS is not same as mentioned in XML"
	else 
		puts "Asset id entered #{p_asset_id.attribute("value")} in CMS is same as mentioned in XML"
	end

	embed_code = $driver.find_element(:xpath, ".//*[@id='edit-field-ooyala-und-0-value']")
	if embed_code.attribute("value") != "#{$bpm_element[:assetIds]["#{$title_asset}"]}"
		puts "Embed code entered #{embed_code.attribute("value")} in CMS is not same as mentioned in XML"
	else 
		puts "Embed code entered #{embed_code.attribute("value")} in CMS is same as mentioned in XML"
	end

	prog_asset = $driver.find_element(:xpath, ".//*[@id='edit-field-programme-und-0-target-id']")
	prog_a_str = prog_asset.attribute("value")
	progrm_asset = prog_a_str.split(" ")	
	if progrm_asset[0] != "#{$bpm_element["#{$pid[0]}"][:Title]}"
		puts "Programme name #{progrm_asset[0]} associated with asset is not same as mentioned in XML" 
	else
		puts "Programme name #{progrm_asset[0]} is associated with asset is same as mentioned in XML"
	end

	color = $driver.find_element(:xpath,".//*[@id='edit-field-color-und-0-value']")
	if color.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:Colour]}"
		raise "Color entered in CMS is not same as mentioned in XML"
	else 
		puts "Color entered in CMS is same as mentioned in XML"
	end

	sound = $driver.find_element(:xpath,".//*[@id='edit-field-asset-sound-und-0-value']")
	if sound.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:Sound]}"
		raise " Sound #{sound.attribute("value")} entered in CMS is not same as mentioned in XML"
	else 
		puts " Sound #{sound.attribute("value")} entered in CMS is same as mentioned in XML"
	end

	duration = $driver.find_element(:xpath,".//*[@id='edit-field-duration-und-0-value']")
	if duration.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:Duration]}"
		raise " Duration entered in CMS is not same as mentioned in XML"
	else 
		puts " Duration entered in CMS is same as mentioned in XML"
	end

	aspect_ratio = $driver.find_element(:xpath,".//*[@id='edit-field-asset-aspect-ratio-und-0-value']")
	if aspect_ratio.attribute("value") != "#{$bpm_element["#{$pid[0]}"][:AspectRatio]}"
		raise " Aspect Ratio #{aspect_ratio.attribute("value")} entered in CMS is not same as mentioned in XML"
	else 
		puts " Aspect Ratio #{aspect_ratio.attribute("value")} entered in CMS is same as mentioned in XML"
	end

	asset_status = $driver.find_element(:xpath,".//*[@id='edit-field-asset-status-und-0-value']")
	if asset_status.attribute("value") != "uploadingOoyalaCompleted"
		raise " Asset status #{asset_status.attribute("value")} entered in CMS is not same as mentioned in XML"
	else 
		puts " Asset status entered #{asset_status.attribute("value")} in CMS is same as mentioned in XML"
		$bpm_element["#{$pid[0]}"][:AssetStatus] = "#{asset_status.attribute("value")}"
	end
end

def asset_title_check
	$p_asset_title = $driver.find_element(:xpath,".//*[@id='edit-title']")
	$title_asset = $p_asset_title.attribute("value")

	if $asset_class_get == "Trailer"	
		puts "Asset class is: #{$asset_class_get}" 
		t_asset_str = "#{$bpm_element["#{$pid[0]}"][:trailerId]}"+"_"+"SD"
		if  $title_asset !=  t_asset_str
			puts "The asset title #{t_asset_str} associated with programme is not correct" 
		else
			puts "The asset title #{t_asset_str} associated with programme is correct"
		end

	elsif $asset_class_get == "Feature" && $asset_vformat == "SD"
		f_sd_asset_str = "#{$bpm_element["#{$pid[0]}"][:assetId]}"+"_"+"SD"
		if $title_asset != f_sd_asset_str
			puts "The asset title #{f_sd_asset_str} associated with programme is not correct" 
		else
			puts "The asset title #{f_sd_asset_str} associated with programme is correct"
		end

	else $asset_class_get == "Feature" && $asset_vformat == "HD"
		f_hd_asset_str = "#{$bpm_element["#{$pid[0]}"][:assetId]}"+"_"+"HD"
		if $title_asset != f_hd_asset_str
			puts "The asset title #{f_sd_asset_str} associated with programme is not correct" 
		else
			puts "The asset title #{f_sd_asset_str} associated with programme is correct"
		end
	end
end