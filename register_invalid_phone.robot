*** Settings ***
Documentation     Invalid Phone Number test
Resource          resource.robot

*** Test Cases ***
Register Invalid Phone Number
    Open Browser To Register Page
    Wait Until Element Is Visible    id=firstname    5s

    Input Firstname        Somyod
    Input Lastname         Sodsai
    Input Organization     CS KKU
    Input Email            somyod@kkumail.com
    Input Phone            1234
    Submit Register

    Element Text Should Be    id=errors    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)

    Capture Page Screenshot
    [Teardown]    Close Browser
