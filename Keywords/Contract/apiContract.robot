*** Settings ***
Library     Selenium2Library
Library     Debugger
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Variables   ../../Resources/testdata/apiPartner&Contract.yml
Resource    ../../Resources/page/partnerAndContract/apiContract.robot

*** Keywords ***
api create contract
    Create Session      API_CREATE_CONTRACT     ${API_URL}      verify=true
    ${BODY}             Load Json From File     ${CURDIR}${/}createContract.json
    ${HEADER}           Create Dictionary       ${AUTHORIZATION}=${API_CONTENT}     ${AUTHORIZATION}=${API_AUTHORIZATION}
    ${RESPONSE}=        POST On Session  API_CREATE_CONTRACT     ${API_CREATE}      json=&{BODY}    headers=${HEADER}   expected_status=any
    ${STATUS_CODE}      Convert To String       ${RESPONSE.status_code}
    Should Be Equal     ${STATUS_CODE}    201
    Log To Console      ${RESPONSE.status_code}
