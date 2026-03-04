*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/pages/bill_pay.robot 
Resource    ../resources/pages/login_page.robot
Resource    ../resources/common/common_keywords.robot
Suite Setup     Open Browser to Register Page
Suite Teardown  Close Browser

*** Keywords ***

*** Test Cases ***
Login to Account
    Login With Credentials      umair12    Umair321#123

TC01 - Successful Bill Payment
    Enter Payee Info
    ...    John Doe    123 Main St    Toronto    Ontario
    ...    M3S2S2    4161234567    13344    13344    100.00    0
    Verify Successful Bill

TC02 - Bill Payment With Missing Payee Name
    Enter Payee Info
    ...    ${EMPTY}    123 Main St    Toronto    Ontario
    ...    M3S2S2    4161234567    13344    13344    100.00    0
    Page Should Contain    Payee name is required.


TC03 - Bill Payment With Missing Address
    Enter Payee Info
    ...    John Doe    ${EMPTY}    Toronto    Ontario
    ...    M3S2S2    4161234567    13344    13344    100.00    0
    Page Should Contain    Address is required.

TC04 - Bill Payment With Missing Amount
    Enter Payee Info
    ...    John Doe    123 Main St    Toronto    Ontario
    ...    M3S2S2    4161234567    13344    13344    ${EMPTY}    0
    Page Should Contain    The amount cannot be empty.

TC05 - Bill Payment With Mismatched Account Numbers
    Enter Payee Info
    ...    John Doe    123 Main St    Toronto    Ontario
    ...    M3S2S2    4161234567    13344    99999    100.00    0
    Page Should Contain    The account numbers do not match.

