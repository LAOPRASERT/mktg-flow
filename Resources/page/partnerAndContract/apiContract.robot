*** Settings ***
Library     Selenium2Library

*** Variables ***
@{ID_LIST}
${GET_RESPONSE}
${JSON_RESPONSE}
${JSON_MODIFY_RESPONSE}
&{BODY}
${CONTRACT_ID}      contract_id
${PARTNER}          partner
${FIXTURE}          fixtures
${CONTRACT_NAME}    contract_name
${USER_SIGN}        contract_user_signatory
${PARTNER_SIGN}     contract_partner_signatory
${AUTHORIZATION}    Authorization
${CONTENT_TYPE}     Content-Type
${num}
@{FIXTURE_LIST}
@{USER_LIST}
@{PARTNER_LIST}
@{ID_LIST}
&{USER_DIC}
&{PARTNER_DIC}
&{HEADER}
${RESPONSE}
${STATUS_CODE}
