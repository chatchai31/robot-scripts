*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${PAGE_LOGIN} =                     Login
${ID_SIGNIN_EMAIL_TEXTBOX}=         id=email-id
${ID_SIGNIN_PASSWAORD_TEXTBOX}=     id=password
${ID_SIGNIN_SUBMIT_BUTTON}=         id=submit-id
*** Keywords ***
verify page loaded
    wait until page contains        ${PAGE_LOGIN}



Login with valid Creditials
    [Arguments]                     ${EMAIL}        ${PASS}
    Fill "Email" Field              ${EMAIL}
    Fill "Password" Field           ${PASS}
    Click "Summit" button
Fill "Email" Field
    [Arguments]                     ${EMAIL}
    input text                      ${ID_SIGNIN_EMAIL_TEXTBOX}     ${EMAIL}
Fill "Password" Field
    [Arguments]                     ${PASS}
    input text                      ${ID_SIGNIN_PASSWAORD_TEXTBOX}     ${PASS}
Click "Summit" button
    click button                    ${ID_SIGNIN_SUBMIT_BUTTON}