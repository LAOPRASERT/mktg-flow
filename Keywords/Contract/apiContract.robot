*** Settings ***
Library     Selenium2Library
Library     Debugger
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Variables   ../../Resources/testdata/apiPartner&Contract.yml
Resource    ../../Resources/page/partnerAndContract/apiContract.robot

*** Keywords ***
create contract
    Create Session      API_CREATE_CONTRACT     ${API_URL}      verify=true
    ${BODY}             Load Json From File     ${CURDIR}${/}createContract.json
    ${HEADER}           Create Dictionary       ${AUTHORIZATION}=${API_CONTENT}     ${AUTHORIZATION}=${API_AUTHORIZATION}
    ${RESPONSE}=        POST On Session  API_CREATE_CONTRACT     ${API_CREATE}      json=&{BODY}    headers=${HEADER}   expected_status=any
    ${STATUS_CODE}      Convert To String       ${RESPONSE.status_code}
    Should Be Equal     ${STATUS_CODE}    201
    Log To Console      ${RESPONSE.status_code}

delete contract
    Create Session              API_DELETE_CONTRACT         ${API_URL}                      verify=true
    ${GET_RESPONSE}=            GET                         ${API_GET_DATA}
    ${JSON_RESPONSE}=           Set Variable                ${GET_RESPONSE.json()}
    ${JSON_MODIFY_RESPONSE}=    Delete Object From Json     ${JSON_RESPONSE}                $..fixtures..id
    @{ID_LIST}=                 Get Value From Json         ${JSON_MODIFY_RESPONSE}         $..id
    ${STATUS_CODE}              Convert To String    ${GET_RESPONSE.status_code}
    Should Be Equal             ${STATUS_CODE}    200
    FOR    ${element}    IN     @{ID_LIST}
        DELETE                  ${API_DELETE}${element}/
    END
