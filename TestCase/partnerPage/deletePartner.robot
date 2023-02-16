*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/Common/commonFunctionality.robot
Resource        ../../Keywords/Partner/deletePartner.robot
Resource        ../../Keywords/Partner/apiPartner.robot

Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Setup      And api create partner
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser

*** Test Cases ***
1.deletePartner
    [Documentation]    Delete Partner
    [Tags]      DELETE_PARTNER
    When user delete partner
    Then that partner must remove from partner list