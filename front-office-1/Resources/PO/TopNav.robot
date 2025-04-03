*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${TOP_NAV_TEAM_LINK}=       xPath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
*** Keywords ***
Select "Team" page
    click element           ${TOP_NAV_TEAM_LINK}
#or click   Team
    sleep                   3s