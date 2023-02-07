*** Settings ***
Library     Selenium2Library
Library     Debugger
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Variables   ../Resources/testdata/apiContract.yml
Resource    ../Resources/page/apiContract.robot

*** Keywords ***
delete contract
    Create Session              API_DELETE_CONTRACT         ${API_URL}                      verify=true
    ${GET_RESPONSE}=            GET                         ${API_GET_DATA}
    ${JSON_RESPONSE}=           Set Variable                ${GET_RESPONSE.json()}
    ${JSON_MODIFY_RESPONSE}=    Delete Object From Json     ${JSON_RESPONSE}                $..fixtures..id
    @{ID_LIST}=                 Get Value From Json         ${JSON_MODIFY_RESPONSE}         $..id

    FOR    ${element}    IN     @{ID_LIST}
        DELETE                  ${API_DELETE}${element}/
    END

create contract
    Create Session      API_CREATE_CONTRACT         ${API_URL}                      verify=true
    ${num}=             Evaluate            random.sample(range(0, 2), 1)    random
    @{FIXTURE_LIST}     Create List         ${DATA.FIXTURE${num}}
    &{USER_DIC}         Create Dictionary   order=${DATA.ORDER_NUMBER[0]}   id=${DATA.ID_NUMBER[0]}
    &{PARTNER_DIC}      Create Dictionary   order=${DATA.ORDER_NUMBER[1]}   id=${DATA.ID_NUMBER[1]}
    @{USER_LIST}        Create List         ${USER_DIC}
    @{PARTNER_LIST}     Create List         ${PARTNER_DIC}
    &{BODY}             Create Dictionary    ${CONTRACT_ID}=${DATA.ID${num}}   ${CONTRACT_NAME}=${DATA.NAME}   ${FIXTURE}=${FIXTURE_LIST}    ${USER_SIGN}=${USER_LIST}   ${PARTNER_SIGN}=${PARTNER_LIST}  ${PARTNER}=${DATA.PARTNER}
    &{HEADER}           Create Dictionary   Content-Type=application/json
    ${RESPONSE}=        POST On Session  API_CREATE_CONTRACT     ${API_CREATE}      json=&{BODY}    headers=${HEADER}   expected_status=any
    Log To Console    ${RESPONSE.status_code}
