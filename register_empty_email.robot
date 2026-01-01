*** Settings ***
Documentation     Empty Email test
Resource          resource.robot

*** Test Cases ***
Register Empty Email
    Open Browser To Register Page
    Wait Until Element Is Visible    id=firstname    5s

    Input Firstname        Somyod
    Input Lastname         Sodsai
    Input Organization     CS KKU
    # Email intentionally left empty
    Input Phone            091-001-1234
    Submit Register

    Element Text Should Be    id=errors    Please enter your email!!

    Capture Page Screenshot
    [Teardown]    Close Browser
