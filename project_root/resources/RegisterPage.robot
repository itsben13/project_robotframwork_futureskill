*** Settings ***
Library    SeleniumLibrary
Resource   BrowserLibrary.robot

*** Variables ***
${EMAIL_FIELD}    css:input[placeholder='อีเมล']
${FIRST_NAME_FIELD}    css:input[placeholder='ชื่อ']
${LAST_NAME_FIELD}    css:input[placeholder='นามสกุล']
${PHONE_FIELD}    css:input[placeholder='เบอร์โทรศัพท์']
${PASSWORD_FIELD}    css:input[placeholder='รหัสผ่าน']
${CONFIRM_PASSWORD_FIELD}    css:input[placeholder='ยืนยันรหัสผ่าน']
${CHECKBOX}    css:input[name='consent']
${SIGN_IN_BUTTON}    css:button[type='submit']
${OTP_MESSAGE}    The system has sent an OTP to your phone number.

*** Keywords ***
Fill In Registration Information
    [Arguments]    ${email}    ${first_name}    ${last_name}    ${phone}    ${password}
    Fill Form Field    ${EMAIL_FIELD}    ${email}    email
    Fill Form Field    ${FIRST_NAME_FIELD}    ${first_name}    first name
    Fill Form Field    ${LAST_NAME_FIELD}    ${last_name}    last name
    Fill Form Field    ${PHONE_FIELD}    ${phone}    phone
    Fill Form Field    ${PASSWORD_FIELD}    ${password}    password
    Fill Form Field    ${CONFIRM_PASSWORD_FIELD}    ${password}    confirm password
    Click Checkbox    ${CHECKBOX}

Submit Registration Form
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}    5 seconds
    Click Element    ${SIGN_IN_BUTTON}
    Log To Console    Clicked sign in button

Verify OTP Message
    Wait Until Page Contains    ${OTP_MESSAGE}    10 seconds
    Log To Console    OTP message is visible

Fill Form Field
    [Arguments]    ${locator}    ${value}    ${field_name}
    Wait Until Element Is Visible    ${locator}    5 seconds
    Clear Element Text    ${locator}
    Input Text    ${locator}    ${value}
    Log To Console    Filled in ${field_name} field

Click Checkbox
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    5 seconds
    Click Element    ${locator}
    Log To Console    Clicked checkbox
