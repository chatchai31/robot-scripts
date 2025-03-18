*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
verify page loaded
    Page Should Contain Element             xpath=//h1[contains(text(), 'Sign in')]
    Element Text Should Be                  xpath=//h1[contains(text(), 'Sign in')]   Sign in