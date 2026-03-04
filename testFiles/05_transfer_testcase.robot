*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/pages/transfer_fund_page.robot
Resource    ../resources/pages/login_page.robot
Resource    ../resources/common/common_keywords.robot
Suite Setup     Open Browser to Register Page
Suite Teardown  Close Browser

*** Test Cases ***
Login to Account
    Login With Credentials    umair12    Umair321#123

TC01 - Successful Transfer
    Transfer to Account    100.00    0    1
    Verify Transfer Successful

TC02 - Successful Transfer
    Transfer to Account    100.00    1    0
    Verify Transfer Successful

TC03 - Transfer With Missing Amount
    Transfer to Account    ${EMPTY}    0    1
    Wait Until Page Contains    An internal error has occurred and has been logged.    timeout=5s