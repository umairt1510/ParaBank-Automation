*** Keywords ***
Go to Payment Page
    Click Element    ${PAYMENT_LINK}
    Wait Until Page Contains    Bill Payment Service

Enter Payee Info
    [Arguments]    ${name}    ${street}    ${city}    ${state}    ${zip}    ${phone}    ${account}    ${verify}    ${amount}    ${from}
    Go to Payment Page
    Input Text    ${PAYEE_NAME}              ${name}
    Input Text    ${PAYEE_ADDRESS}           ${street}
    Input Text    ${PAYEE_CITY}              ${city}
    Input Text    ${PAYEE_STATE}             ${state}
    Input Text    ${PAYEE_ZIP}               ${zip}
    Input Text    ${PAYEE_PHONE}             ${phone}
    Input Text    ${PAYEE_ACCOUNT}           ${account}
    Input Text    ${VERIFY_ACCOUNT}          ${verify}
    Input Text    ${AMOUNT_FIELD}            ${amount}
    Select From List By Index    ${FROM_ACCOUNT_DROPDOWN}    ${from}
    Click Button    ${SEND_PAYMENT_BUTTON}



Verify Successful Bill
    Page Should Contain     Bill Payment Complete


*** Variables ***
${PAYEE_NAME}       name=payee.name
${PAYEE_ADDRESS}        name=payee.address.street
${PAYEE_CITY}       name=payee.address.city
${PAYEE_STATE}      name=payee.address.state
${PAYEE_ZIP}        name=payee.address.zipCode
${PAYEE_PHONE}      name=payee.phoneNumber

${PAYEE_ACCOUNT}         name=payee.accountNumber
${VERIFY_ACCOUNT}        name=verifyAccount

${AMOUNT_FIELD}          name=amount
${FROM_ACCOUNT_DROPDOWN}        name=fromAccountId
${PAYMENT_LINK}     xpath=//a[text()="Bill Pay"]
${SEND_PAYMENT_BUTTON}     xpath=//input[@value="Send Payment"]