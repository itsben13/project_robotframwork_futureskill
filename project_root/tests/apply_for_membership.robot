*** Settings ***
Resource    ../resources/BrowserLibrary.robot
Resource    ../resources/HomePage.robot
Resource    ../resources/RegisterPage.robot

*** Variables ***
${EMAIL}          your.email@example.com
${FIRST_NAME}     John
${LAST_NAME}      Doe
${PHONE}          0612345678
${PASSWORD}       YourPassword123

*** Test Cases ***
Apply For Membership Of Future Skill
    [Documentation]    Test case to apply for membership on Future Skill website
    Open Home Page
    Click Register Button
    Fill In Registration Information    ${EMAIL}    ${FIRST_NAME}    ${LAST_NAME}    ${PHONE}    ${PASSWORD}
    Submit Registration Form
    Verify OTP Message
