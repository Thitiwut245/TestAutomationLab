*** Settings ***
Documentation     Empty Last Name test
Resource          resource.robot

*** Test Cases ***
Register Empty Last Name
    Open Browser To Register Page
    Wait Until Element Is Visible    id=firstname    5s

    Input Firstname        Somyod
    # Last Name intentionally left empty
    Input Organization     CS KKU
    Input Email            somyod@kkumail.com
    Input Phone            091-001-1234
    Submit Register

    Element Text Should Be    id=errors    Please enter your last name!!

    Capture Page Screenshot
    [Teardown]    Close Browser
