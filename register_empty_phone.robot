*** Settings ***
Documentation     Empty Phone Number test
Resource          resource.robot

*** Test Cases ***
Register Empty Phone Number
    Open Browser To Register Page
    Wait Until Element Is Visible    id=firstname    5s

    Input Firstname        Somyod
    Input Lastname         Sodsai
    Input Organization     CS KKU
    Input Email            somyod@kkumail.com
    # Phone intentionally left empty
    Submit Register

    Element Text Should Be    id=errors    Please enter your phone number!!

    Capture Page Screenshot
    [Teardown]    Close Browser
