*** Settings ***
Library    Selenium2Library
Library    DatabaseLibrary
Library    OperatingSystem
Resource   ../../Resources/page/common/login.robot
Variables  ../../Resources/env/dev/config.yml
Variables  ../../Resources/testdata/dataBase.yml



*** Keywords ***
browser is opened to login page and login to the MKTGFLOW system
    Connect To Database     pymysql     ${CONFIG.DB_NAME}   ${CONFIG.DB_USER}  ${CONFIG.DB_PASS}    ${CONFIG.DB_HOST}   ${CONFIG.DB_PORT}
    OPEN BROWSER   ${URL}       ${BROWSER}
    Maximize Browser Window
    login to the MKTGFLOW system

LogOutandCloseBrowser
    Disconnect From Database
    Close Browser

login to the MKTGFLOW system
    Input Text      ${INPUT_USERNAME_ELEMENT}   ${SUPER_ADMIN.USERNAME}
    Input Text      ${INPUT_PASSWORD_ELEMENT}   ${SUPER_ADMIN.PASSWORD}
    Click Button    ${BUTTON_LOGIN_ELEMENT}
    Sleep    2

user go to Home page
    Go To    ${URL}

User login template
    [Arguments]                     ${username}                 ${password}
    browser is opened to login page and login to the MKTGFLOW system
    Input Text                      ${INPUT_USERNAME_ELEMENT}   ${username}
    Input Text                      ${INPUT_PASSWORD_ELEMENT}   ${password}
    Click Button                    ${BUTTON_LOGIN_ELEMENT}
    Sleep    2