*** Settings ***
Library     Selenium2Library
Resource    Gherkin.robot
*** variables ***

${URL}      https://www.google.co.th/maps

*** Test Cases ***
Scenario: Test the website
    Given Open the test phptravels
    And Click Element at the button



*** Keywords ***
Click Element at the button
        wait until page contains element    //*[@id="searchboxinput"]
        sleep    3s
        click element at coordinates    //*[@id="searchboxinput"]    692           121
        sleep   10s
        click element at coordinates    //*[@id="searchboxinput"]    700           780
        sleep   2s
        click element at coordinates    //*[@id="searchboxinput"]    700           780
        sleep     8s
        click element at coordinates    //*[@id="searchboxinput"]    955         400
        sleep   2s
        click element at coordinates    //*[@id="searchboxinput"]    955          290
        sleep   8s
        click element at coordinates    //*[@id="searchboxinput"]    565           800
        click element at coordinates    //*[@id="searchboxinput"]    450          287