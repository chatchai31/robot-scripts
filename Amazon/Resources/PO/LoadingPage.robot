*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
picture result
    capture page screenshot                 screenshots1.png
go page load
    Go to                                   https://www.amazon.com
verify page loaded
    wait until page contains element        id=nav-logo-sprites
    picture result