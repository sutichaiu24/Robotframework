
*** Variables ***
&{GoogleFirstpage}	textbox=id=lst-ib
...	searchbutton=name=btnK

&{GoogleSearchLandingPage}	th_type_all=xpath=//*[@id="hdtb-msb-vis"]/div[1]
...	th_type_images=xpath=//*[@id="hdtb-msb-vis"]/div[2]
...	th_type_map=xpath=//*[@id="hdtb-msb-vis"]/div[3]
...	th_type_videos=xpath=//*[@id="hdtb-msb-vis"]/div[4]
...	th_type_news=xpath=//*[@id="hdtb-msb-vis"]/div[5]
...	th_type_more=xpath=//*[@id="hdtb-msb"]/div[1]/g-header-menu
...	searchRecord=xpath=//*[@id="rso"]/div[2]/div/div