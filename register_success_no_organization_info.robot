*** Settings ***
Documentation     Register success without organization info
Resource          resource.robot

*** Test Cases ***
Register Success No Organization Info
    Open Browser To Register Page
    Wait Until Element Is Visible    id=firstname    5s

    Input Firstname    Somyod
    Input Lastname     Sodsai
    Input Email        somyod@kkumail.com
    Input Phone        091-001-1234
    # Organization intentionally left blank
    Submit Register

    Wait Until Keyword Succeeds    5s    1s    Title Should Be    Success
    Element Text Success Should Be    Thank you for registering with us.
    Element Text Thanks Should Be     We will send a confirmation to your email soon.

    Capture Page Screenshot
    [Teardown]    Close Browser
