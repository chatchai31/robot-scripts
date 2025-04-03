*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
verify page loaded
    Page Should Contain Element             xpath=//h1[contains(text(), 'Sign in')]
    Element Text Should Be                  xpath=//h1[contains(text(), 'Sign in')]   Sign in
Login with valid credentials
    [Arguments]    ${username}     ${password}
    Fill username Field      ${username}
    Fill password Field     ${password}

Fill username Field
    [Arguments]    ${username}
    Log     Filling email field with ${username}
Fill password Field
    [Arguments]    ${password}
    Log     Filling password field with ${password}
Click summit button
    Log    clicking submit button