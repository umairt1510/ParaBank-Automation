*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/pages/register_page.robot
Resource    ../resources/common/common_keywords.robot
Suite Setup     Open Browser to Register Page
Suite Teardown  Close Browser

*** Test Cases ***
TC01 - Successful Registration
    Enter Registration Info
    ...    Umair    Tariq    213 Kennedy Ave    Toronto    Ontario
    ...    M3S2S2    1234124321    482-73-6159    umair12    Umair321#123    Umair321#123
    Valid Register
    Logout User

TC02 - Registration With Missing First Name
    Enter Registration Info
    ...    ${EMPTY}    Tariq    213 Kennedy Ave    Toronto    Ontario
    ...    M3S2S2    1234124321    482-73-6159    umair13    Umair321#123    Umair321#123
    Click Element    ${REGISTER_BUTTON}
    Page Should Contain    First name is required.

TC03 - Registration With Missing Last Name
    Enter Registration Info
    ...    Umair    ${EMPTY}    213 Kennedy Ave    Toronto    Ontario
    ...    M3S2S2    1234124321    482-73-6159    umair14    Umair321#123    Umair321#123
    Click Element    ${REGISTER_BUTTON}
    Page Should Contain    Last name is required.

TC04 - Registration With Missing Username
    Enter Registration Info
    ...    Umair    Tariq    213 Kennedy Ave    Toronto    Ontario
    ...    M3S2S2    1234124321    482-73-6159    ${EMPTY}    Umair321#123    Umair321#123
    Click Element    ${REGISTER_BUTTON}
    Page Should Contain    Username is required.

TC05 - Registration With Missing Password
    Enter Registration Info
    ...    Umair    Tariq    213 Kennedy Ave    Toronto    Ontario
    ...    M3S2S2    1234124321    482-73-6159    umair15    ${EMPTY}    ${EMPTY}
    Click Element    ${REGISTER_BUTTON}
    Page Should Contain    Password is required.

TC06 - Registration With Mismatched Passwords
    Enter Registration Info
    ...    Umair    Tariq    213 Kennedy Ave    Toronto    Ontario
    ...    M3S2S2    1234124321    482-73-6159    umair16    Umair321    WrongPass
    Click Element    ${REGISTER_BUTTON}
    Page Should Contain    Passwords did not match.

TC07 - Registration With Duplicate Username
    Enter Registration Info
    ...    Umair    Tariq    213 Kennedy Ave    Toronto    Ontario
    ...    M3S2S2    1234124321    482-73-6159    umair12    Umair321#123    Umair321#123
    Click Element    ${REGISTER_BUTTON}
    Page Should Contain    This username already exists.