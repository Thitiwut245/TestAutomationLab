*** Settings ***
Documentation     A test suite with a single test for valid login.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Register Page
    [Teardown]    Close Browser