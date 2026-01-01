*** Settings ***
Documentation     Empty First Name test
Resource          resource.robot

*** Test Cases ***
Register Empty First Name
    Open Browser To Register Page
    Wait Until Element Is Visible    id=lastname    5s

    # First Name intentionally left empty
    Input Lastname         Sodsai
    Input Organization     CS KKU
    Input Email            somyod@kkumail.com
    Input Phone            091-001-1234
    Submit Register

    Element Text Should Be    id=errors    Please enter your first name!!

    Capture Page Screenshot
    [Teardown]    Close Browser
