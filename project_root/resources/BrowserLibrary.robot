*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser And Maximize
    [Arguments]    ${url}    ${browser}=chrome
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browser
    Close Browser
