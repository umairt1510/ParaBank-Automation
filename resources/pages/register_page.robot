*** Keywords ***
Enter Registration Info
    Click Element        ${REGISTER_LINK}  
    [Arguments]    ${first_name}    ${last_name}    ${address}    ${city}    ${state}    ${zip}    ${phone}    ${ssn}    ${username}    ${password}    ${confirm_password}
    Input Text    ${FIRSTNAME_FIELD}          ${first_name}
    Input Text    ${LASTNAME_FIELD}           ${last_name}
    Input Text    ${ADDRESS_FIELD}            ${address}
    Input Text    ${CITY_FIELD}               ${city}
    Input Text    ${STATE_FIELD}              ${state}
    Input Text    ${ZIP_FIELD}                ${zip}
    Input Text    ${PHONE_FIELD}              ${phone}
    Input Text    ${SSN_FIELD}                ${ssn}
    Input Text    ${USERNAME_FIELD}           ${username}
    Input Text    ${PASSWORD_FIELD}           ${password}
    Input Text    ${CONFIRM_PASSWORD_FIELD}   ${confirm_password}

Valid Register
    Click Element        ${REGISTER_BUTTON}   
    Page Should Contain    Your account was created successfully. You are now logged in.

Logout User
    Click Element    ${LOGOUT_LINK}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}

*** Variables ***
${FIRSTNAME_FIELD}       id:customer.firstName
${LASTNAME_FIELD}        id:customer.lastName
${ADDRESS_FIELD}         id:customer.address.street
${CITY_FIELD}            id:customer.address.city
${STATE_FIELD}           id:customer.address.state
${ZIP_FIELD}             id:customer.address.zipCode
${PHONE_FIELD}           id:customer.phoneNumber
${SSN_FIELD}             id:customer.ssn

${USERNAME_FIELD}        id:customer.username
${PASSWORD_FIELD}        id:customer.password
${CONFIRM_PASSWORD_FIELD}    id:repeatedPassword

${REGISTER_BUTTON}       xpath=//input[@value="Register"]
${REGISTER_LINK}    xpath=//a[text()="Register"]
${LOGOUT_LINK}    xpath=//a[text()="Log Out"]
${LOGIN_BUTTON}      xpath=//input[@value="Log In"]