*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Begin Web Test
    #ความเร็วในการดำเนินการคำสั่ง โดยเพิ่มการหน่วงเวลา (delay) ระหว่างแต่ละคำสั่งในทุกๆ ขั้นตอนของการทดสอบ
#    set selenium speed              .2s
    #กำหนด ระยะเวลาสูงสุดในการรอ (timeout) เมื่อมีการค้นหาองค์ประกอบ (element) บนหน้าเว็บ
#    set selenium timeout            10s
    #open the browser
    open browser                    about:blank    ${BROWSER}
    #resize browser window for recording
#    set window position             1920    1080

End Begin Test
    close all browsers
