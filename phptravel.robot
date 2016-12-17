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
        wait until page contains element    //*[@id="scene"]/div[3]/canvas
        sleep    3s
        mouse over      //*[@id="scene"]/div[3]/canvas


        click element at coordinates    //*[@id="scene"]/div[3]/canvas     ${692}            ${121}
        click element at coordinates    //*[@id="scene"]/div[3]/canvas    ${500}           ${187}
         click element at coordinates    //*[@id="scene"]/div[3]/canvas    ${400}           ${187}
          click element at coordinates    //*[@id="scene"]/div[3]/canvas    ${565}           ${287}