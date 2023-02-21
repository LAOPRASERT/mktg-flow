*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/Common/commonFunctionality.robot
Resource        ../../Keywords/Contract/apiContract.robot
Resource        ../../Keywords/Contract/deleteContract.robot

# Setup Tearup Teardown
Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Setup      And api create contract
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser

*** Test Cases ***
1.deleteContract
    [Documentation]    Delete Contract
    [Tags]      DELETE_CONTRACT
    When user select partner
    And user is delete contract
    Then contract delete successfully