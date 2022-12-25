*** Settings ***
Library    Selenium2Library
Library    Debugger
Variables  ../Resources/env/dev/config.yml


*** Keywords ***
LaunchBrowser
    OPEN BROWSER   ${URL}       ${BROWSER}
    Maximize Browser Window

LogOutandCloseBrowser
    Close Browser

LogInToSeeDooh
    Input Text  ${INPUT_USERNAME_ELEMENT}   ${SUPER_ADMIN.USERNAME}
    Input Text  ${INPUT_PASSWORD_ELEMENT}  ${SUPER_ADMIN.PASSWORD}
    Click Button    ${BUTTON_LOGIN_ELEMENT}

    #//input[@aria-activedescendant=“ rc_select_2_list_6”]