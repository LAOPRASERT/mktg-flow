*** Settings ***
Library     Selenium2Library
Library     Debugger
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Resource    SelectMenu.robot
Resource    ../Resources/page/deletePartner.robot
Resource    ../Resources/page/createContract.robot
Variables   ../Resources/testdata/createPartner.yml

*** Keywords ***
user click add new contract
    SelectPartner&Contract
    Wait Until Element Is Visible       ${SEARCH_ELEMENT}
    Click Element                       ${SEARCH_ELEMENT}
    Press Keys                          ${SEARCH_ELEMENT}                   TrueMove_Automate
    Wait Until Element Is Visible       ${PARTNER_ELEMENT}
    Click Element                       ${PARTNER_ELEMENT}
    Wait Until Element Is Visible       ${ADD_NEW_CONTRACT_ELEMENT}
    Click Element                       ${ADD_NEW_CONTRACT_ELEMENT}
    Wait Until Element Is Visible       ${HEADER_TEXT_ELEMENT}

user click Add New Contract button
    Wait Until Element Is Visible       ${CONFIRM_ADD_NEW_CONTRACT_ELEMENT}
    Click Element                       ${CONFIRM_ADD_NEW_CONTRACT_ELEMENT}

user fill data in field is required
    get data for create contract
    Sleep    2
    Click Element                       ${INPUT_CONTRACT_ID_ELEMENT}
    Press Keys                          ${INPUT_CONTRACT_ID_ELEMENT}                ${CONTRACT_ID}
    Click Element                       ${SELECT_FIXTURE_ELEMENT}
    Click Element                       ${FIXTURE_NAME_${FIXTURE_LIST}_ELEMENT}
    Sleep    0.5

user fill all data
    get data for create contract
    Sleep    2
    Click Element                       ${INPUT_CONTRACT_ID_ELEMENT}
    Press Keys                          ${INPUT_CONTRACT_ID_ELEMENT}                ${CONTRACT_ID}
    Click Element                       ${INPUT_CONTRACT_NAME_ELEMENT}
    Sleep    0.5
    Press Keys                          ${INPUT_CONTRACT_NAME_ELEMENT}              ${CONTRACT_NAME}
    Click Element                       ${SELECT_FIXTURE_ELEMENT}
    Click Element                       ${FIXTURE_NAME_${FIXTURE_LIST}_ELEMENT}
    Sleep    0.5


user create new contract for all sport type
    FOR    ${index}    IN RANGE    6
        IF    ${index} != 0
            Wait Until Element Is Visible       ${ADD_NEW_CONTRACT_ELEMENT}
            Click Element                       ${ADD_NEW_CONTRACT_ELEMENT}
            Wait Until Element Is Visible       ${HEADER_TEXT_ELEMENT}
        END
        get data for create contract
        Sleep    2
        Click Element                       ${INPUT_CONTRACT_ID_ELEMENT}
        Press Keys                          ${INPUT_CONTRACT_ID_ELEMENT}                ${contract.ID[${index}]}${timeStamp}
        Click Element                       ${INPUT_CONTRACT_NAME_ELEMENT}
        Sleep    0.5
        Press Keys                          ${INPUT_CONTRACT_NAME_ELEMENT}              ${contract.NAME[${index}]}${timeStamp}
        Click Element                       ${SELECT_FIXTURE_ELEMENT}
        Click Element                       ${FIXTURE_NAME_${contract.FIXTURE[${index}]}_ELEMENT}
        Sleep    0.5
        Click Element                       ${CONFIRM_ADD_NEW_CONTRACT_ELEMENT}
        Sleep    1
        Wait Until Element Is Visible       ${BACK_TO_CONTRACT_LIST_ELEMENT}
        Click Element                       ${BACK_TO_CONTRACT_LIST_ELEMENT}
        Sleep    1
    END

user create new contract multiple fixture
    get data for create contract
    Sleep    2
    Click Element                       ${INPUT_CONTRACT_ID_ELEMENT}
    Press Keys                          ${INPUT_CONTRACT_ID_ELEMENT}                ${contract.MULTIPLE_ID}${timeStamp}
    Click Element                       ${INPUT_CONTRACT_NAME_ELEMENT}
    Sleep    0.5
    Press Keys                          ${INPUT_CONTRACT_NAME_ELEMENT}              ${contract.MULTIPLE_NAME}${timeStamp}
    Click Button                        ${ADD_ANOTHER_FIXTURE_BUTTON_ELEMENT}
    FOR    ${index}    IN RANGE    2
        get element selector fixture    ${index}    ${offSetY}
        Click Element                   ${SELECT_FIXTURE_ELEMENT}
        Click Element At Coordinates    ${SELECT_FIXTURE_ELEMENT}   0     ${offSetY}
    END

eror this field is required
    ${ERROR_REQUIRED_FIELD_VALUE}       Get Text    ${REQUIRED_FIELD_TEXT}
    Should Be Equal    ${ERROR_REQUIRED_FIELD_VALUE}                ${contract.errorRequired}     Custom error  values=True

new contract must create successfully
    Wait Until Element Is Visible                   ${CHECK_CONTRACT_ID_ELEMENT}

new contract multiple fixture must create successfully
    Wait Until Element Is Visible                   ${CHECK_CONTRACT_ID_ELEMENT}
    Wait Until Element Is Visible                   ${CHECK_CONTRACT_NAME_ELEMENT}

all sport type must create contract successfully
    FOR    ${SPORT_TYPE}    IN     @{CHECK_SPORT_TYPE_LIST}
        ${CHECK_CONTRACT_ALL_SPORT_TYPE}    Set Variable    //a//span[text()="${SPORT_TYPE}"]
        Wait Until Element Is Visible       ${CHECK_CONTRACT_ALL_SPORT_TYPE}
        Log To Console    ${CHECK_CONTRACT_ALL_SPORT_TYPE}
    END

get data for create contract
    ${num}=                             Evaluate        random.sample(range(0, 6), 1)    random
    ${timeStamp}                        Get Time        epoch
    ${CONTRACT_ID}                      Set Variable    ${contract.ID${num}}${timeStamp}
    ${CONTRACT_NAME}                    Set Variable    ${contract.NAME${num}}${timeStamp}
    ${FIXTURE_LIST}                     Set Variable    ${contract.FIXTURE${num}}
    ${CHECK_CONTRACT_ID_ELEMENT}        Set Variable    //div[text()="${CONTRACT_ID}"]
    ${CHECK_CONTRACT_NAME_ELEMENT}      Set Variable    //div[text()="${CONTRACT_NAME}"]

    Set Test Variable           ${CONTRACT_ID}
    Set Test Variable           ${CONTRACT_NAME}
    Set Test Variable           ${FIXTURE_LIST}
    Set Test Variable           ${CHECK_CONTRACT_ID_ELEMENT}
    Set Test Variable           ${CHECK_CONTRACT_NAME_ELEMENT}
    Set Test Variable           ${timeStamp}
    Set Test Variable           ${num}

get element selector fixture
    [Arguments]                         ${numFixture}       ${numOffSetY}
    ${SELECT_FIXTURE_ELEMENT}           Set Variable            //div[@name="fixtures[${numFixture}].fixture"]
    ${FIXTURE_LIST}                     Set Variable            //div[@name="fixtures[${numFixture}].fixture" and ${FIXTURE_NAME_${contract.FIXTURE[${numFixture}]}_ELEMENT}]
    ${offSetY}                          Evaluate            ${numOffSetY}+75
    ${CONTRACT_ID}                      Set Variable    ${contract.MULTIPLE_ID}${timeStamp}
    ${CONTRACT_NAME}                    Set Variable    ${contract.MULTIPLE_NAME}${timeStamp}
    ${CHECK_CONTRACT_ID_ELEMENT}        Set Variable    //div[text()="${CONTRACT_ID}"]
    ${CHECK_CONTRACT_NAME_ELEMENT}      Set Variable    //div[text()="${CONTRACT_NAME}"]
    Set Test Variable                   ${SELECT_FIXTURE_ELEMENT}
    Set Test Variable                   ${FIXTURE_LIST}
    Set Test Variable                   ${offSetY}
    Set Test Variable                   ${CHECK_CONTRACT_ID_ELEMENT}
    Set Test Variable                   ${CHECK_CONTRACT_NAME_ELEMENT}

