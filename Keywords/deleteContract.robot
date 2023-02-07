*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    SelectMenu.robot
Resource    ../Resources/page/deleteContract.robot
Resource    ../Resources/page/createContract.robot
Variables   ../Resources/testdata/createPartner.yml
Variables   ../Resources/testdata/createContract.yml

*** Keywords ***
user select partner
    SelectPartner&Contract
    Wait Until Element Is Visible       ${SEARCH_ELEMENT}
    Click Element                       ${SEARCH_ELEMENT}
    Press Keys                          ${SEARCH_ELEMENT}                   TrueMove_Automate
    Wait Until Element Is Visible       ${PARTNER_ELEMENT}
    Click Element                       ${PARTNER_ELEMENT}

user is delete contract
    Wait Until Element Is Visible       ${ICON_DELETE_CONTRACT_ELEMENT}
    ${COUNT_DELETE}                     Get Element Count                   ${ICON_DELETE_CONTRACT_ELEMENT}
    FOR    ${num}    IN RANGE   ${COUNT_DELETE}
        Wait Until Element Is Visible       ${ICON_DELETE_CONTRACT_ELEMENT}
        Click Element                       ${ICON_DELETE_CONTRACT_ELEMENT}
        Click Element                       ${DELETE_CONTRACT_ELEMENT}
        Wait Until Element Is Visible       ${DELETE_BUTTON_ELEMENT}
        Click Button                        ${DELETE_BUTTON_ELEMENT}
        Wait Until Element Is Visible       ${TOASTBOX_DELETE_ELEMENT}
        ${RESULT_DELETE_CONTRACT}           Get Text                            ${TOASTBOX_DELETE_ELEMENT}
        Set Test Variable                   ${RESULT_DELETE_CONTRACT}
        Reload Page
    END


contract delete successfully
    Should Be Equal    ${REF_RESULT_DELETE_CONTRACT}   ${RESULT_DELETE_CONTRACT}     Custom error  values=True

