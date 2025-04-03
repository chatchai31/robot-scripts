*** Settings ***
Library     SeleniumLibrary
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/Variables.robot
*** Variables ***

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${BROWSER}
Eng Web Test
    Delete All Cookies
    close browser
Insert Testing Data
    Log    I am seting up the data...
Cleanup Testing Data
    Log    I am clean up the data...