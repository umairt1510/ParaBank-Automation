*** Keywords ***
Transfer to Account
    [Arguments]    ${AMOUNT}       ${FROM_ACCOUNT_NUMBER}      ${TO_ACCOUNT_NUMBER}
    Click Element    ${TRANSFER_LINK}
    Input Text    ${AMOUNT_NUMBER}    ${AMOUNT}
    Select From List By Index    ${FROM_ACCOUNT_DROPDOWN}    ${FROM_ACCOUNT_NUMBER}
    Select From List By Index    ${TO_ACCOUNT_DROPDOWN}    ${TO_ACCOUNT_NUMBER}
    Click Element    ${TRANSFER_BUTTON}

Verify Transfer Successful
    Page Should Contain    Transfer Complete!
    

*** Variables ***
${TRANSFER_LINK}      xpath=//a[text()="Transfer Funds"]
${AMOUNT_NUMBER}    id=amount
${FROM_ACCOUNT_DROPDOWN}    id:fromAccountId
${TO_ACCOUNT_DROPDOWN}    id:toAccountId
${TRANSFER_BUTTON}      xpath=//input[@value="Transfer"]
