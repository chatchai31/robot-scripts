*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
search product
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click Button                            xpath=//*[@id="nav-search-submit-button"]
