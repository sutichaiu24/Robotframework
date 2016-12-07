*** Settings ***
Library     Selenium2Library
Resource    Key
*** variables ***

${URL}      http://phptravels.net/hotels/singapore/singapore/Rendezvous-Hotels

*** Test Cases ***
Scenario: Test the website
    Given Open the test phptravels



