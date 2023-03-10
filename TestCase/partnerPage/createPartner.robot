*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/Common/commonFunctionality.robot
Resource        ../../Keywords/Partner/createPartner.robot
Resource        ../../Keywords/Common/dataBase.robot

# Setup Tearup Teardown
Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Setup      And connect database for delete partner
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser

*** Test Cases ***
1.createNewPartnerByNonFillData
    [Documentation]    Create New Partner By Non Fill Data
    [Tags]      ADD_PARTNER_NON_DATA
    When user click add new partner
    And user click submit button
    Then eror this field is required

2.createNewPartnerByFillRequiredDataOnly
    [Documentation]    Create New Partner By Fill Required Data Only
    [Tags]      ADD_PARTNER_REQUIRED_DATA
    When user click add new partner
    And user fill required data
    And user click submit button
    Then new partner must create successfully

3.createNewPartnerByFillAllData
    [Documentation]    Create New Partner By Fill All Data
    [Tags]      ADD_PARTNER_FULL_DATA
    When user click add new partner
    And user fill all data
    And user click submit button
    Then new partner must create successfully

4.createNewPartnerAddAnotherContract
    [Documentation]    Create New Partner By Fill All Data and Add Another Contract
    [Tags]      ADD_PARTNER_FULL_DATA_ADD_ANOTHER_CONTRACT
    When user click add new partner
    And user fill all data
    And user select add another contract
    And user click submit button
    Then new partner must create successfully






