*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/CommonFunctionality.robot
Resource        ../../Keywords/SelectMenu.robot
Resource        ../../Keywords/CreatePartner.robot
Resource        ../../Keywords/deletePartner.robot
Resource        ../../Keywords/createContract.robot
Variables       ../../Resources/env/dev/config.yml
Variables       ../../Resources/testdata/createPartner.yml
Library         DateTime

# Setup Tearup Teardown
Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser


*** Test Cases ***

createNewContract
    [Documentation]    Create New Contract
    [Tags]      ADD_CONTRACT
    When user click add new partner
    And user fill all data
    And user click submit button
    Then new partner must create successfully
