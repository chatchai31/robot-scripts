*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
verify result completed
    Wait Until Page Contains                results for "Ferrari 458"   timeout=10s
select link product
    Click Link                              Maisto Tech RC F1 1:24 Ferrari SF-23 (2023) - Leclerc #16

