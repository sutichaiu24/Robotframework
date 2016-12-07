
*** Keywords ***
Open the test phptravels
      open browser    ${URL}      chrome
      sleep     2s
      ${count}=     get matching xpath count      //*[@id="ROOMS"]/form[*]/div/div[2]/div[2]/h4/b
      log to console         Amount      ${count}
      : FOR      ${i}     IN RANGE     1      ${count}+1
      \     ${room}=          Get text        //*[@id="ROOMS"]/form[${i}]/div/div[2]/div[2]/h4/b
      \     log to console       ${room}
      close browser