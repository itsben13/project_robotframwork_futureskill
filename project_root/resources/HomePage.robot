*** Settings ***
Library    SeleniumLibrary
Resource   BrowserLibrary.robot

*** Variables ***
${INITIAL_URL}    https://futureskill.co/
${REGISTER_BUTTON_INITIAL}    xpath=//button[contains(text(), 'สมัครสมาชิก')]

*** Keywords ***
Open Home Page
    Open Browser And Maximize    ${INITIAL_URL}

Click Register Button
    Wait Until Element Is Visible    ${REGISTER_BUTTON_INITIAL}    10 seconds
    Click Element    ${REGISTER_BUTTON_INITIAL}
    Log To Console    Clicked initial register button
    Wait Until Location Is    https://app.futureskill.co/register    10 seconds
    Log To Console    Navigated to registration page
