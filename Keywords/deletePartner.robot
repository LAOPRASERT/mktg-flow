*** Settings ***
Library     Selenium2Library
Library     Debugger
Library    XML
Resource    SelectMenu.robot
Resource    ../Resources/page/deletePartner.robot
Variables   ../Resources/testdata/createPartner.yml

*** Keywords ***
user delete partner
    SelectPartner&Contract
    Wait Until Element Is Visible       ${SEARCH_ELEMENT}
    Click Element                       ${SEARCH_ELEMENT}
    Press Keys                          ${SEARCH_ELEMENT}    ${data.partnerName}
    ${COUNT_DELETE}      Get Element Count    ${DELETE_ICON_ELEMENT}
    FOR    ${element}    IN RANGE   ${COUNT_DELETE}
        Wait Until Element Is Visible       ${DELETE_ICON_ELEMENT}
        Sleep    0.5
        Click Element                       ${DELETE_ICON_ELEMENT}
        Wait Until Element Is Visible       ${DELETE_BUTTON_ELEMENT}
        Sleep    0.5
        Click Element                       ${DELETE_BUTTON_ELEMENT}
        Wait Until Element Is Visible       ${CONFIRMATION_ELEMENT}
        Click Element                       ${DELETE_PARTNER_BUTTON_ELEMENT}
        Sleep    4
    END

that partner must remove from partner list
    Wait Until Element Is Not Visible    ${PARTNER_ELEMENT}
    Wait Until Element Is Not Visible    ${DELETE_ICON_ELEMENT}
