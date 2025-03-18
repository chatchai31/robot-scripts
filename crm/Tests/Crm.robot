*** Settings ***
Documentation       This is some basic info abount the whole suite
Library             SeleniumLibrary

#robot -d results tests/crm.robot

*** Variables ***
${BROWSER}      edge
${EMAIL}        admin@robotframeworktoturial.com
${PASS}         qwd

*** Test Cases ***
# testcase name
should be able to add new customer
    [Documentation]         This is some basic info abount the TEST
    [Tags]                  1006    Smoke   Contacts
#Initailize Selenuim
    #ความเร็วในการดำเนินการคำสั่ง โดยเพิ่มการหน่วงเวลา (delay) ระหว่างแต่ละคำสั่งในทุกๆ ขั้นตอนของการทดสอบ
    set selenium speed      .2s
    #กำหนด ระยะเวลาสูงสุดในการรอ (timeout) เมื่อมีการค้นหาองค์ประกอบ (element) บนหน้าเว็บ
    set selenium timeout    10s
#open the browser
    log                     Starting the test case!
    open browser            https://automationplayground.com/crm/   ${BROWSER}
#resize browser window for recording
    set window position     50     50
    set window size         1920    1080

    page should contain     Customers Are Priority One
    click link              id=SignIn
#Login
    page should contain     Login
    input text              id=email-id         ${EMAIL}
    input text              id=password         ${PASS}
    click button            id=submit-id
    page should contain     Our Happy Customers
#add customer
    click link              id=new-customer
    page should contain     Add Customer
    input text              id=EmailAddress     chatchai@gmail.com
    input text              id=FirstName        chatchai
    input text              id=LastName         khamchan
    input text              id=City             Dollas
    select from list by value   id=StateOrRegion    NY
    select radio button     gender         male
    select checkbox         promos-name
    click button            Submit
    wait until page contains    Success! New customer added.

    sleep                   3s
    close browser

*** Keywords ***
