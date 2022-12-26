*** Settings ***
Library     Selenium2Library
Resource    ../Keywords/CommonFunctionality.robot
Resource    ../Keywords/SelectMenu.robot
Resource    ../Keywords/CreatePartner.robot
Variables   ../Resources/env/dev/config.yml

*** Variables ***

*** Test Cases ***
Create Partner
    [Documentation]    Launching the browser
    LaunchBrowser
    LogInToSeeDooh
    SelectPartner&Contract
    CreateNewPartner
    LogOutandCloseBrowser