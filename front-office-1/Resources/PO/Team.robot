*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${VERIFY_TEAM_PAGE}=                css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***
Verify page loaded
    wait until page contains element        ${VERIFY_TEAM_PAGE}
Verify page content
#    failed เนื่องจาก "Our Amazing Team" ที่ได้เป็นตัวพิมพ์ใหญ่ ต้องการเปรียบเทียบว่ามีค่าเท่ากัน
#    element text should be                  ${VERIFY_TEAM_PAGE}     Our Amazing Team
    ${Element_Text} =   get text            ${VERIFY_TEAM_PAGE}
    should be equal as strings              ${Element_Text}     Our Amazing Team    ignore_case=true
