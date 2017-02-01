*** Settings ***
Library     Selenium2Library
Library     DateTime
Library     Collections
*** Variables ***
@{LIST}     this    list    has     quite   many    time


*** Keywords ***
for-loop-elements
        [Tags]  Looping test list
        ${L1}=    create list     this    list    has    quite    many    time
        :FOR    ${ELEMENT}  IN  @{LIST}

        \   log to console    ${ELEMENT}
        list should contain value   ${LIST}     this
        log to console      {LIST}
for-loop
        :FOR    ${i}    IN  Range     3
        \   log to console      ${i}
        