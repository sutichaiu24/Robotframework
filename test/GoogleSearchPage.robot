*** Settings ***
Library  Selenium2Library
Resource    ../Resource/GoogleSearchPageobject.robot

*** Variables ***


*** Test Cases ***


Google search land search page after search button has been clicked
        Open browser    http://www.google.com  chrome
        page should contain element         id=lst-ib
        input text      id=lst-ib           work from home
        press key       id=lst-ib           \\13
        page should contain element         &{GoogleFirstpage}[textbox]

        Sleep           5s
        page should contain      ทั้งหมด
        page should contain      วิดีโอ
        page should contain      แผนที่
        page should contain      ข่าวสาร
        page should contain      เพิ่มเติม
        page should contain      ผลการค้นหา

Google search stay in first page if no keyword has been entered
        Open browser    http://www.google.com  chrome
        page should contain element         id=lst-ib
        click button        name=btnK
        Sleep   2s
        page should contain     ดีใจจัง ค้นแล้วเจอเลย
        Close browser


Search page return 9 records if song banner show up for each page
        open browser  http://www.google.com     chrome
        page should contain element         id=lst-ib
        input text      id=lst-ib           work from home
        press key       id=lst-ib           \\13
        Sleep   2s
        xpath should match x times          //*[@id="rso"]/div[2]/div/div     9
        close browser
