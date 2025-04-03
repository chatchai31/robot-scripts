*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/tonno/Documents/GitHub/robot-scripts/Amazon/Resources/Variables.robot
*** Variables ***

*** Keywords ***
picture result
    capture page screenshot                 screenshots1.png
go page load
    Go to                                   ${URL}
    # เงื่อนไขกรณี cookie ให้กรอกรหัสจะข้ามไป
    ${captcha_present} =    Run Keyword And Return Status    Page Should Contain    Enter the characters you see below
    IF    ${captcha_present} == ${True}
        Click Link    Try different image
    END
verify page loaded
    wait until page contains element        id=nav-logo-sprites
    picture result