*** Settings ***
Documentation       This is some basic info abount the whole suite
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Begin Test
#robot -d results tests/crm.robot

*** Variables ***
${BROWSER}                  chrome
${URL}                      https://automationplayground.com/crm/
${VALID_EMAIL}              admin@robotframeworktoturial.com
${VALID_PASSWORD}           qwd

*** Test Cases ***
HomePage should loaded
    [Documentation]                 Test The HomePage
    [Tags]                          1001    Smoke   HomePage
    CrmApp.Go to "Home" Page

should be able to Login with valid Creditials
    [Documentation]                 Test Login
    [Tags]                          1002    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login with valid Creditials      ${VALID_EMAIL}    ${VALID_PASSWORD}

should be able to Logout
    [Documentation]                 Test Logout
    [Tags]                          1004    Smoke   Logout
    CrmApp.Go to "Home" Page
    CrmApp.Login with valid Creditials      ${VALID_EMAIL}    ${VALID_PASSWORD}
    CrmApp.Logout

should be able to add new customer
    [Documentation]                 Test adding a new cutomer
    [Tags]                          1006    Smoke   Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login with valid Creditials      ${VALID_EMAIL}    ${VALID_PASSWORD}
    CrmApp.Add new customer
    CrmApp.Logout

*** Keywords ***
