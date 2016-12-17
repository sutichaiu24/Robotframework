*** Settings ***
Library     Selenium2Library
Resource    Gherkin.robot
*** variables ***

${URL}      http://phptravels.net/hotels/singapore/singapore/Rendezvous-Hotels

*** Test Cases ***
Scenario: Test the website
    Given Open the test phptravels
    And Click Element at the button


*** Keywords ***
Click Element at the button
    click elem    //*[@id="OVERVIEW"]/div/div[1]/div[1]/div[1]/div[2]/a

