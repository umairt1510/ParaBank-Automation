*** Keywords ***
Login With Credentials
    [Arguments]    ${USERNAME}      ${PASSWORD}
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Password    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    ${LOGOUT_LINK}    timeout=5s

Logout User
    Click Element    ${LOGOUT_LINK}
    Wait Until Page Contains Element    ${LOGIN_BUTTON}

Verify Login Successful
    ${title}=    Get Title
    Should Be Equal    ${title}    ParaBank | Accounts Overview

Verify Logout Successful
    ${title}=    Get Title
    Should Be Equal    ${title}    ParaBank | Welcome | Online Banking

Login With Invalid Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Verify Error Message
    [Arguments]    ${expected_msg}
    ${msg}=    Get Text    ${ERROR_MSG}
    Should Be Equal    ${msg}    ${expected_msg}

*** Variables ***
${USERNAME_FIELD}    name=username
${PASSWORD_FIELD}    name=password
${LOGIN_BUTTON}      xpath=//input[@value="Log In"]
${LOGOUT_LINK}    xpath=//a[text()="Log Out"]
${ERROR_MSG}        xpath=//p[@class='error']
