*** Settings ***
Library     Selenium2Library
Resource    ../Keywords/CommonFunctionality.robot
Resource    ../Keywords/SelectMenu.robot
Resource    ../Keywords/CreatePartner.robot
Variables   ../Resources/commonEnv.yml

*** variables ***

*** Test Cases ***
Testing Select Menu Tab of MKTG FLOW
    [Documentation]    Launching the browser
    LaunchBrowser    ${URL}    ${browser}
    LogInSeeDooh
    CreateNewPartner
    LogOutandCloseBrowser