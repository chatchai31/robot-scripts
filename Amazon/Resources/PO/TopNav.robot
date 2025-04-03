*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${TOPNAV_SEARCH_BAR} =                      id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =                   xpath=//*[@id="nav-search-submit-button"]

*** Keywords ***
search product
    Input Text                              ${TOPNAV_SEARCH_BAR}      Ferrari 458
    Click Button                            ${TOPNAV_SEARCH_BUTTON}
