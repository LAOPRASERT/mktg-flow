*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/CommonFunctionality.robot
Resource        ../../Keywords/SelectMenu.robot
Resource        ../../Keywords/deletePartner.robot
Resource        ../../Keywords/createContract.robot
Resource        ../../Keywords/apiContract.robot
Variables       ../../Resources/env/dev/config.yml
Variables       ../../Resources/testdata/createPartner.yml
Library         DateTime

# Setup Tearup Teardown
Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Setup      And delete contract
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser


*** Test Cases ***

createNewContractByNonFillData
    [Documentation]    Create New Contract By Not Fill Data
    [Tags]      ADD_CONTRACT_NOT_FILL_DATA
    When user click add new contract
    And user click Add New Contract button
    Then eror this field is required

createNewContractByFillRequiredDataOnly
    When user click add new contract
    And user fill data in field is required
    And user click Add New Contract button
    Then new contract must create successfully

createNewContractByFillAllData
    [Documentation]    Create New Contract Fill All Data
    [Tags]      ADD_CONTRACT_FILL_ALL_DATA
    When user click add new contract
    And user fill all data
    And user click Add New Contract button
    Then new contract must create successfully

createNewContractForAllSportType
    [Documentation]    Create New Contract For All Sport Type
    [Tags]      ADD_CONTRACT_FOR_ALL_SPORT_TYPE
    When user click add new contract
    And user create new contract for all sport type
    Then all sport type must create contract successfully

createNewContractMutipleFixture
    [Documentation]    Create New Contract Multiple Fixture
    [Tags]      ADD_CONTRACT_MULTIPLE_FIXTURE
    When user click add new contract
    And user create new contract multiple fixture
    And user click Add New Contract button
    Then new contract multiple fixture must create successfully

#createNewContractMutipleMktgSignatory
#
#createNewContractMutiplePartnerSignatory

