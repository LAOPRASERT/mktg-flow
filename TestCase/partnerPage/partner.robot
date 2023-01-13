*** Settings ***
Documentation
Library         Selenium2Library
Resource        ../../Keywords/CommonFunctionality.robot
Resource        ../../Keywords/SelectMenu.robot
Resource        ../../Keywords/CreatePartner.robot
Resource        ../../Keywords/deletePartner.robot
Resource        ../../Keywords/createContract.robot
Variables       ../../Resources/env/dev/config.yml

# Setup Tearup Teardown
Suite Setup     Given browser is opened to login page and login to the MKTGFLOW system
Test Teardown   And user go to Home page
Suite Teardown  And LogOutandCloseBrowser

*** Test Cases ***
createNewPartnerByNonFillData
    [Documentation]    Create New Partner By Non Fill Data
    [Tags]      ADD_PARTNER_NON_DATA
    When user click add new partner
    And user click submit button
    Then new partner must create successfully

createNewPartnerByFillRequiredData
createNewPartnerByFillAllData
    [Documentation]    Create New Partner By Fill All Data
    [Tags]      ADD_PARTNER_FULL_DATA
    When user click add new partner
    And user fill all data
    And user click submit button
    Then new partner must create successfully

deletePartner
    [Documentation]    Delete Partner
    [Tags]      DELETE_PARTNER
    When user delete partner
    Then that partner must remove from partner list



#deletePartner
#    Given browser is opened to login page
#
#Scenario: user can sign in with valid credentials
#    [Template]  User login template
#
#    # username        # password
#    ${SUPER_ADMIN.USERNAME}    ${SUPER_ADMIN.PASSWORD}
#    ${USER.USERNAME}     ${USER.PASSWORD}


