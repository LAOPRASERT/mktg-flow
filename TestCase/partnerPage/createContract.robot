*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/CommonFunctionality.robot
Resource        ../../Keywords/SelectMenu.robot
Resource        ../../Keywords/deletePartner.robot
Resource        ../../Keywords/createContract.robot
Resource        ../../Keywords/apiContract.robot
Resource        ../../Keywords/deleteContract.robot
Variables       ../../Resources/env/dev/config.yml
Variables       ../../Resources/testdata/createPartner.yml

# Setup Tearup Teardown
Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Setup      And delete contract
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser


*** Test Cases ***

1.createNewContractByNonFillData
    [Documentation]    Create New Contract By Not Fill Data
    [Tags]      ADD_CONTRACT_NOT_FILL_DATA
    When user click add new contract
    And user click Add New Contract button
    Then eror this field is required

2.createNewContractByFillRequiredDataOnly
    [Documentation]    Create New Contract Fill Required Data
    [Tags]      ADD_CONTRACT_FILL_REQUIRED_DATA
    When user click add new contract
    And user fill data in field is required
    And user click Add New Contract button
    Then new contract fill required data must create successfully

3.createNewContractByFillAllData
    [Documentation]    Create New Contract Fill All Data
    [Tags]      ADD_CONTRACT_FILL_ALL_DATA
    When user click add new contract
    And user fill all data
    And user click Add New Contract button
    Then new contract fill all data must create successfully

4.createNewContractForAllSportType
    [Documentation]    Create New Contract For All Sport Type
    [Tags]      ADD_CONTRACT_FOR_ALL_SPORT_TYPE
    When user click add new contract
    And user create new contract for all sport type
    Then all sport type must create contract successfully

5.createNewContractMutipleFixture
    [Documentation]    Create New Contract Multiple Fixture
    [Tags]      ADD_CONTRACT_MULTIPLE_FIXTURE
    When user click add new contract
    And user create new contract multiple fixture
    And user click Add New Contract button
    Then new contract multiple fixture must create successfully

6.createNewContractMutipleMktgSignatory
    [Documentation]    Create New Contract Multiple MKTG Signatory
    [Tags]      ADD_CONTRACT_MULTIPLE_MKTG_SIGNATORY
    When user click add new contract
    And user create new contract multiple mktg signatory
    And user click Add New Contract button
    Then new contract multiple mktg signatoey must create successfully

7.createNewContractMutiplePartnerSignatory
    [Documentation]    Create New Contract Multiple Partner Signatory
    [Tags]      ADD_CONTRACT_MULTIPLE_PARTNER_SIGNATORY
    When user click add new contract
    And user create new contract multiple partner signatory
    And user click Add New Contract button
    Then new contract multiple partner signatoey must create successfully
