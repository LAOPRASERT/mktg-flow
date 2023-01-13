*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    SelectMenu.robot
Resource    ../Resources/page/deletePartner.robot
Resource    ../Resources/page/createContract.robot
Variables   ../Resources/testdata/createPartner.yml

*** Keywords ***
user add new contract


    SelectPartner&Contract
    Wait Until Element Is Visible       ${SEARCH_ELEMENT}
    Click Element                       ${SEARCH_ELEMENT}
    Press Keys                          ${SEARCH_ELEMENT}                   ${data.partnerName}
    Wait Until Element Is Visible       ${PARTNER_ELEMENT}
    Click Element                       ${PARTNER_ELEMENT}

# Contract list page
    FOR    ${SPORT_TYPE}    IN    @{SPORT_LIST}

        Wait Until Element Is Visible       ${ADD_NEW_CONTRACT_ELEMENT}
        Click Element                       ${ADD_NEW_CONTRACT_ELEMENT}
        Wait Until Element Is Visible       ${HEADER_TEXT_ELEMENT}
        Sleep    1
        Click Element                       ${FIXTURE_NAME_${SPORT_TYPE}_ELEMENT}
        Sleep    0.5
        Click Element                       ${CONFIRM_ADD_NEW_CONTRACT_ELEMENT}
        Sleep    1
        Wait Until Element Is Visible       ${BACK_TO_CONTRACT_LIST_ELEMENT}
        Click Element                       ${BACK_TO_CONTRACT_LIST_ELEMENT}
        Sleep    1

    END
    Debug




#that contract must create on contract list