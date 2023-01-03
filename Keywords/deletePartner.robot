*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    ../Keywords/CommonFunctionality.robot
Resource    SelectMenu.robot
Resource    ../Resources/page/deletePartner.robot
Variables   ../Resources/testdata/createPartner.yml

*** Keywords ***
user delete partner
    SelectPartner&Contract
    Wait Until Element Is Visible       ${SEARCH_ELEMENT}
    Click Element                       ${SEARCH_ELEMENT}
    Press Keys                          ${SEARCH_ELEMENT}    ${data.partnerName}
    Wait Until Element Is Visible       ${PARTNER_ELEMENT}
    Click Element                       ${DELETE_ICON_ELEMENT}
    Click Element                       ${DELETE_BUTTON_ELEMENT}
    Wait Until Element Is Visible       ${CONFIRMATION_ELEMENT}
    Click Element                       ${DELETE_PARTNER_BUTTON_ELEMENT}


that partner must remove from partner list
    Wait Until Element Is Not Visible    ${PARTNER_ELEMENT}
    Wait Until Element Is Not Visible    ${DELETE_ICON_ELEMENT}
