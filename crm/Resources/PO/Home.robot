*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${HOME_HEARER_LABEL} =     Customers Are Priority One

*** Keywords ***
Navigate To
    go to                               ${URL}
verify page loaded
    wait until page contains            ${HOME_HEARER_LABEL}