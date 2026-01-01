*** Settings ***
Documentation     Empty First Name and Last Name test
Resource          resource.robot

*** Test Cases ***
Register Empty First Name And Last Name
    Open Browser To Register Page
    Wait Until Element Is Visible    id=organization    5s

    # First Name and Last Name intentionally left empty
    Input Organization     CS KKU
    Input Email            somyod@kkumail.com
    Input Phone            091-001-1234
    Submit Register

    Element Text Should Be    id=errors    Please enter your name!!

    Capture Page Screenshot
    [Teardown]    Close Browser
