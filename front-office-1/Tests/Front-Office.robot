*** Settings ***
Documentation       Talk about what this suite of tests does
Resource            ../Resources/CommonWeb.robot
Resource            ../Resources/FrontOfficeApp.robot
Test Setup          Begin web test
Test Teardown       End web test

# robot -d results tests/front-office.robot
*** Variables ***
${BROWSER} =        chrome
${URL}=             https://automationplayground.com/front-office/
*** Test Cases ***
should be able access "Team" page
    [Documentation]     This is test 1
    [Tags]              test1
    log                 Executing Test1
    sleep               2s
    FrontOfficeApp.Go to Landing page
    FrontOfficeApp.Go to "Team" page


"Team" page should match requirements
    [Documentation]     This is test 2
    [Tags]              test2
    log                 Executing Test2
    sleep               2s
    FrontOfficeApp.Go to Landing page
    FrontOfficeApp.Go to "Team" page
    FrontOfficeApp.Validate "Team" page