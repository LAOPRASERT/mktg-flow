*** Settings ***
Library    Selenium2Library
Library    Debugger
Variables  ../Resources/commonEnv.yml


*** Keywords ***
LaunchBrowser
    [Arguments]   ${appURL}    ${appbrowser}
    OPEN BROWSER   ${appURL}       ${appbrowser}
    Maximize Browser Window
    ${pgtitle}=  Get Title
    Log     ${pgtitle}    WARN

LogOutandCloseBrowser
    Close Browser

LogInSeeDooh
    Input Text  //*[@class="ant-input ant-input-lg sc-bqyKva hNarmA"]   ${eMailAddress}
    Input Text  //*[@class="ant-input ant-input-lg sc-bqyKva hPSqkw"]  ${password}
    Click Button    //*[@class="sc-jrAGrp buyyCm"]

    #//input[@aria-activedescendant=“ rc_select_2_list_6”]