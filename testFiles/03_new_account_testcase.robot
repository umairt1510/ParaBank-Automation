*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/pages/new_account_page.robot
Resource    ../resources/pages/login_page.robot
Resource    ../resources/common/common_keywords.robot
Suite Setup     Open Browser to Register Page
Suite Teardown  Close Browser

*** Test Cases ***
Login to Account
    Login With Credentials    umair12    Umair321#123
    Get Account Account Number 

TC01 - Open Checking Account
    Open a Checking Account
    Verify Account Created

TC02 - Open Savings Account
    Open a Saving Account
    Verify Account Created