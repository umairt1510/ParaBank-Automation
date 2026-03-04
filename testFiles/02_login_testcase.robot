*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/pages/login_page.robot
Resource    ../resources/common/common_keywords.robot
Suite Setup     Open Browser to Register Page
Suite Teardown  Close Browser

*** Test Cases ***
TC01 - Successful Login
    Login With Credentials      umair12    Umair321#123
    Get Primary Account ID
    Logout User
    Verify Logout Successful

TC02 - Invalid Login
    Login With Invalid Credentials    wronguser    wrongpass121
    Wait Until Page Contains    The username and password could not be verified.