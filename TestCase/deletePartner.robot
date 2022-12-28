*** Settings ***
Documentation
Library     Selenium2Library
Resource    ../Keywords/CommonFunctionality.robot
Resource    ../Keywords/SelectMenu.robot
Resource    ../Keywords/deletePartner.robot

*** Test Cases ***
deletePartner
    [Documentation]    Delete Partner
    Given browser is opened to login page
    When user login to the MKTGFLOW system
    And user delete partner
    Then that partner must remove from partner list
    And LogOutandCloseBrowser