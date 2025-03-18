*** Settings ***
Library     SeleniumLibrary
*** Keywords ***
Begin Web Test
    open browser    about:blank     edge

Eng Web Test
    close browser

Insert Testing Data
    Log    I am seting up the data...
Cleanup Testing Data
    Log    I am clean up the data...