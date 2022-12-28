*** Settings ***
Library    Selenium2Library
Library    Debugger
Resource   ../Resources/page/login.robot
Variables  ../Resources/env/dev/config.yml



*** Keywords ***
browser is opened to login page
    OPEN BROWSER   ${URL}       ${BROWSER}
    Maximize Browser Window

LogOutandCloseBrowser
    Close Browser

user login to the MKTGFLOW system
    Input Text      ${INPUT_USERNAME_ELEMENT}   ${SUPER_ADMIN.USERNAME}
    Input Text      ${INPUT_PASSWORD_ELEMENT}   ${SUPER_ADMIN.PASSWORD}
    Click Button    ${BUTTON_LOGIN_ELEMENT}
    Sleep    2

User login template
    [Arguments]                     ${username}                 ${password}
    browser is opened to login page
    Input Text                      ${INPUT_USERNAME_ELEMENT}   ${username}
    Input Text                      ${INPUT_PASSWORD_ELEMENT}   ${password}
    Click Button                    ${BUTTON_LOGIN_ELEMENT}
    Sleep    2