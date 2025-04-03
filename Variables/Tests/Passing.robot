*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
User can search for products
    @{url_browser} =   Set Variable        https://www.amazon.com    edge
    Begin Web Test     @{url_browser}


*** Keywords ***
Begin Web Test
    [Arguments]    @{url_browser}
    Open browser   ${url_browser}[0]    ${url_browser}[1]
    Click Link    Try different image
    Set Test Message    Test executed successfully.
    close browser