*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
verify result completed
    Wait Until Page Contains                results for "Ferrari 458"
select link product
    Click Link          Ferrari Burago 1/18 Scale Diecast - 18-16008 488 GTB Rosso red
