*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Get Account Account Number
    Click Element    ${ACCOUNT_OVERVIEW}
    Wait Until Element Is Visible    xpath=(//a[contains(@href,"activity.htm?id=")])[1]    10s
    ${account_id}=    Get Text    xpath=(//a[contains(@href,"activity.htm?id=")])[1]
    Set Suite Variable    ${ACCOUNT_ID}    ${account_id}

Open a Checking Account
    Click Element    ${OPEN_ACCOUNT_LINK}
    Wait Until Page Contains    Open New Account
    Select From List By Label    ${ACCOUNT_TYPE}    ${CHECKING}
    Select From List By Label    ${ACCOUNT_FROM}    ${ACCOUNT_ID}
    Click Element    ${CREATE_BUTTON}

Open a Saving Account
    Click Element    ${OPEN_ACCOUNT_LINK}
    Wait Until Page Contains    Open New Account
    Select From List By Label    ${ACCOUNT_TYPE}    ${SAVINGS}
    Select From List By Label    ${ACCOUNT_FROM}    ${ACCOUNT_ID}
    Click Element    ${CREATE_BUTTON}
    
Verify Account Created
    Page Should Contain    Account Opened!

*** Variables ***
${ACCOUNT_TYPE}        id=type
${ACCOUNT_FROM}        id=fromAccountId
${CREATE_BUTTON}       xpath=//input[@value="Open New Account"]
${OPEN_ACCOUNT_LINK}   xpath=//a[text()="Open New Account"]
${ACCOUNT_OVERVIEW}   xpath=//a[text()="Accounts Overview"]
${CHECKING}            CHECKING
${SAVINGS}             SAVINGS