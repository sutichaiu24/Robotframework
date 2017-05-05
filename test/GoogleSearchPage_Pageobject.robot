*** Settings ***
Library  Selenium2Library
Resource    ../Resource/GoogleSearchPageobject.robot

*** Variables ***


*** Test Cases ***

Google search land search page after search button has been clicked
        Open browser    http://www.google.com  chrome
        page should contain element         &{GoogleFirstpage}[textbox]
        input text      &{GoogleFirstpage}[textbox]           work from home
        press key       &{GoogleFirstpage}[textbox]           \\13
        Sleep           5s
        page should contain element     &{GoogleSearchLandingPage}[th_type_all]
        page should contain element     &{GoogleSearchLandingPage}[th_type_images]
        page should contain element     &{GoogleSearchLandingPage}[th_type_map]

        Close Browser

Google search stay in first page if no keyword has been entered
        Open browser    http://www.google.com  chrome
        page should contain element         &{GoogleFirstpage}[textbox]
        click button        &{GoogleFirstpage}[searchbutton]
        Sleep   2s
        page should contain     ดีใจจัง ค้นแล้วเจอเลย
        Close browser

Search page return 9 records if song banner show up for each page
        open browser  http://www.google.com     chrome
        page should contain element         id=lst-ib
        input text      &{GoogleFirstpage}[textbox]          work from home
        press key       &{GoogleFirstpage}[textbox]           \\13
        Sleep   2s
        xpath should match x times          &{GoogleFirstpage}[searchRecord]     9
        close browser


