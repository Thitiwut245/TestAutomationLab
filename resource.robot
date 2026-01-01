*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${REGISTER URL}   http://localhost:7272/lab4/Registration.html
${SUCCESS URL}    http://localhost:7272/lab4/Success.html

*** Keywords ***
Open Browser To Register Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0
    Registration Page Should Be Open

Registration Page Should Be Open
    Title Should Be    Registration
    Capture Page Screenshot


Close Browser
    Close All Browsers