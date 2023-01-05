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
createNewPartner
    [Documentation]    Create New Partner
    [Tags]      ADD_PARTNER
    When user create new partner
    Then new partner must create successfully

createNewContract
    [Documentation]    Create New Contract
    [Tags]      ADD_CONTRACT
    When user add new contract
    Then that contract must create on contract list

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



