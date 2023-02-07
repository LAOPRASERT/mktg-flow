*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/CommonFunctionality.robot
Resource        ../../Keywords/SelectMenu.robot
Resource        ../../Keywords/apiContract.robot
Resource        ../../Keywords/deleteContract.robot
Variables       ../../Resources/env/dev/config.yml

# Setup Tearup Teardown
Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Setup      And create contract
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser

*** Test Cases ***
deleteContract
    [Documentation]    Delete Contract
    [Tags]      DELETE_CONTRACT
    When user select partner
    And user is delete contract
    Then contract delete successfully