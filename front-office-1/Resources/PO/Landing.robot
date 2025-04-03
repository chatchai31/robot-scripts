*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${VERIFY_LANDING_PAGE}=         id=mainNav
*** Keywords ***
Navigate To
    go to                               ${URL}
Verify page loaded
    wait until page contains element    ${VERIFY_LANDING_PAGE}
