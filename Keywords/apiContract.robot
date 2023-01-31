*** Settings ***
Library     Selenium2Library
Library     Debugger
Library     RequestsLibrary
Library     Collections
Library     JSONLibrary
Variables   ../Resources/testdata/apiContract.yml
Resource    ../Resources/page/createContract.robot

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



