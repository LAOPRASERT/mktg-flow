*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    ../Keywords/CommonFunctionality.robot
Resource    SelectMenu.robot
Resource    ../Resources/page/createPartner.robot
Variables   ../Resources/testdata/createPartner.yml

*** Keywords ***
user create new partner
    SelectPartner&Contract
    Wait Until Element Is Visible   ${BUTTON_ADD_NEW_PARTNER}
    Click Button                    ${BUTTON_ADD_NEW_PARTNER}
    Wait Until Element Is Visible   ${PARTNER_NAME_ELEMENT}
    Input Text                      ${PARTNER_NAME_ELEMENT}     ${data.partnerName}
    Input Text                      ${CATEGORY_ELEMENT}         ${data.category}
    Input Text                      ${CONTACT_NAME_ELEMENT}     ${data.contactName}
    Input Text                      ${CONTACT_ROLE_ELEMENT}     ${data.contactRole}
    Input Text                      ${EMAIL_ELEMENT}            ${data.email}
    Input Text                      ${AGENCY_ELEMENT}           ${data.agency}
    Input Text                      ${ADDRESS_ELEMENT}          ${data.address}
    Input Text                      ${BILLING_ENTITY_ELEMENT}   ${data.billingEntity}
    Click Element                   ${OWNER_ELEMENT}
    Click Element                   ${INPUT_OWNER}
    Click Button                    ${SUBMIT_BUTTON}
    Sleep    1

new partner must create successfully
#Get Text
    Wait Until Element Is Visible                   ${HEADER_TEXT}
    ${HEADER_TEXT_VALUE}                Get Text    ${HEADER_TEXT}
    ${PARTNER_NAME_VALUE}               Get Text    ${PARTNER_NAME_TEXT}
    ${CLIENT_CONTACT_VALUE}             Get Text    ${CLIENT_CONTACT_TEXT}
    ${CATEGORY_VALUE}                   Get Text    ${CATEGORY_TEXT}
    ${OWNER_VALUE}                      Get Text    ${OWNER_TEXT}
    ${CONTRACT_VALUE}                   Get Text    ${CONTRACT_TEXT}
    ${CONTRACT_ROLE_VALUE}              Get Text    ${CONTRACT_ROLE_TEXT}
    ${AGENCY_VALUE}                     Get Text    ${AGENCY_TEXT}
    ${EMAIL_VALUE}                      Get Text    ${EMAIL_TEXT}
    ${BILLING_ENTITY_ELEMENT_VALUE}     Get Text    ${BILLING_ENTITY_ELEMENT_TEXT}

#Compair Text With Referent
    Should Be Equal    ${HEADER_TEXT_VALUE}                 ${data.partnerName}     Custom error  values=True
    Should Be Equal    ${PARTNER_NAME_VALUE}                ${data.partnerName}     Custom error  values=True
    Should Contain     ${CLIENT_CONTACT_VALUE}              ${data.contactName}     Custom error  values=True
    Should Contain     ${CATEGORY_VALUE}                    ${data.category}        Custom error  values=True
    Should Be Equal    ${OWNER_VALUE}                       ${data.owner}           Custom error  values=True
    Should Be Equal    ${CONTRACT_VALUE}                    ${data.contactName}     Custom error  values=True
    Should Be Equal    ${CONTRACT_ROLE_VALUE}               ${data.contactRole}     Custom error  values=True
    Should Be Equal    ${AGENCY_VALUE}                      ${data.agency}          Custom error  values=True
    Should Be Equal    ${EMAIL_VALUE}                       ${data.email}           Custom error  values=True
    Should Be Equal    ${BILLING_ENTITY_ELEMENT_VALUE}      ${data.billingEntity}   Custom error  values=True


