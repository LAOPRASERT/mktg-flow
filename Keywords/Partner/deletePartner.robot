*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    ../Common/selectMenu.robot
Resource    ../../Resources/page/partnerAndContract/deletePartner.robot
Resource    ../../Resources/page/partnerAndContract/createPartner.robot
Variables   ../../Resources/testdata/createPartner.yml

*** Keywords ***
user delete partner
    SelectPartner&Contract
    Wait Until Element Is Visible       ${SEARCH_ELEMENT}
    Click Element                       ${SEARCH_ELEMENT}
    Press Keys                          ${SEARCH_ELEMENT}    ${data.partnerName}
    ${COUNT_DELETE}      Get Element Count    ${DELETE_ICON_ELEMENT}
    FOR    ${element}    IN RANGE   ${COUNT_DELETE}
        Wait Until Element Is Visible       ${DELETE_ICON_ELEMENT}
        Wait Until Element Is Not Visible   ${LOADING_ICON}
        Click Element                       ${DELETE_ICON_ELEMENT}
        Wait Until Element Is Visible       ${DELETE_BUTTON_ELEMENT}
        Sleep    0.5
        Click Element                       ${DELETE_BUTTON_ELEMENT}
        Wait Until Element Is Visible       ${CONFIRMATION_ELEMENT}
        Click Element                       ${DELETE_PARTNER_BUTTON_ELEMENT}
        Wait Until Element Is Not Visible   ${LOADING_ICON}
        Wait Until Element Is Visible       ${TOASTBOX_DELETE_ELEMENT}
        ${RESULT_DELETE_CONTRACT}           Get Text                            ${TOASTBOX_DELETE_ELEMENT}
        Set Test Variable                   ${RESULT_DELETE_CONTRACT}
        Reload Page
    END

that partner must remove from partner list
    Should Be Equal    ${REF_RESULT_DELETE_CONTRACT}   ${RESULT_DELETE_CONTRACT}     Custom error  values=True
