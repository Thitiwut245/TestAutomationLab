*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${REGISTER URL}   http://localhost:7272/Lab4/Registration.html
${SUCCESS URL}    http://localhost:7272/Lab4/Success.html

*** Keywords ***
Open Browser To Register Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Keyword Succeeds    5s    1s    Title Should Be    Registration

Input Firstname
    [Arguments]    ${value}
    Input Text    id=firstname    ${value}

Input Lastname
    [Arguments]    ${value}
    Input Text    id=lastname    ${value}

Input Organization
    [Arguments]    ${value}
    Input Text    id=organization    ${value}

Input Email
    [Arguments]    ${value}
    Input Text    id=email    ${value}

Input Phone
    [Arguments]    ${value}
    Input Text    id=phone    ${value}

Submit Register
    Click Button    id=registerButton

Element Text Success Should Be
    [Arguments]    ${text}
    Element Text Should Be    xpath=//h1    ${text}

Element Text Thanks Should Be
    [Arguments]    ${text}
    Element Text Should Be    xpath=//h2    ${text}

Close Browser
    Close All Browsers
