*** Settings ***
Library     Selenium2Library
Resource    ../Keywords/CommonFunctionality.robot
Resource    ../Keywords/SelectMenu.robot
Resource    ../Keywords/CreatePartner.robot
Variables   ../Resources/commonEnv.yml

*** variables ***

*** Test Cases ***
Create Partner
    [Documentation]    Launching the browser
    LaunchBrowser    URL    ${Browser}
    LogInSeeDooh
    SelectPartner&Contract
    LogOutandCloseBrowser