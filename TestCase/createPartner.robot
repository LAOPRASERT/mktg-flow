*** Settings ***
Documentation
Library     Selenium2Library
Resource    ../Keywords/CommonFunctionality.robot
Resource    ../Keywords/SelectMenu.robot
Resource    ../Keywords/CreatePartner.robot
Variables   ../Resources/env/dev/config.yml


*** Variables ***

*** Test Cases ***
createNewPartner
    [Documentation]    Create New Partner
    Given browser is opened to login page
    When user login to the MKTGFLOW system
    And user create new partner
    Then new partner must create successfully
    And LogOutandCloseBrowser

#deletePartner
#    Given browser is opened to login page
#
#Scenario: user can sign in with valid credentials
#    [Template]  User login template
#
#    # username        # password
#    ${SUPER_ADMIN.USERNAME}    ${SUPER_ADMIN.PASSWORD}
#    ${USER.USERNAME}     ${USER.PASSWORD}



