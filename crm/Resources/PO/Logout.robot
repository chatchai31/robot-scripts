*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SIGND_OUT_LABEL} =                Signed Out

*** Keywords ***

verify page loaded
    wait until page contains        ${SIGND_OUT_LABEL}