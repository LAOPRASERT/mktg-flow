*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    ../Keywords/CommonFunctionality.robot
Resource    SelectMenu.robot
Resource    ../Resources/page/createPartner.robot
Variables   ../Resources/testdata/createPartner.yml

*** Keywords ***
user click add new partner
    SelectPartner&Contract
    Sleep    1
    Wait Until Element Is Visible   ${BUTTON_ADD_NEW_PARTNER}
    Click Button                    ${BUTTON_ADD_NEW_PARTNER}

user fill all data
    get data for create partner
    Wait Until Element Is Visible   ${PARTNER_NAME_ELEMENT}
    Input Text                      ${PARTNER_NAME_ELEMENT}     ${partnerName}
    Input Text                      ${CATEGORY_ELEMENT}         ${category}
    Input Text                      ${CONTACT_NAME_ELEMENT}     ${contactName}
    Input Text                      ${CONTACT_ROLE_ELEMENT}     ${contactRole}
    Input Text                      ${EMAIL_ELEMENT}            ${email}
    Input Text                      ${AGENCY_ELEMENT}           ${agency}
    Input Text                      ${ADDRESS_ELEMENT}          ${address}
    Input Text                      ${BILLING_ENTITY_ELEMENT}   ${billingEntity}
    Click Element                   ${OWNER_ELEMENT}
    Click Element                   ${INPUT_OWNER}

user click submit button
    Click Button                    ${SUBMIT_BUTTON}
    Sleep    1

new partner must create successfully
#Get Text
    Wait Until Element Is Visible                   ${PARTNER_NAME_TEXT}
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
    Should Be Equal    ${PARTNER_NAME_VALUE}                ${partnerName}     Custom error  values=True
    Should Contain     ${CLIENT_CONTACT_VALUE}              ${contactName}     Custom error  values=True
    Should Contain     ${CATEGORY_VALUE}                    ${category}        Custom error  values=True
    Should Be Equal    ${OWNER_VALUE}                       ${owner}           Custom error  values=True
    Should Be Equal    ${CONTRACT_VALUE}                    ${contactName}     Custom error  values=True
    Should Be Equal    ${CONTRACT_ROLE_VALUE}               ${contactRole}     Custom error  values=True
    Should Be Equal    ${AGENCY_VALUE}                      ${agency}          Custom error  values=True
    Should Be Equal    ${EMAIL_VALUE}                       ${email}           Custom error  values=True
    Should Be Equal    ${BILLING_ENTITY_ELEMENT_VALUE}      ${billingEntity}   Custom error  values=True

get data for create partner
    ${num}=     Evaluate    random.sample(range(1, 6), 1)    random
    ${timeStamp}        Get Time        epoch
    ${partnerName}      Set Variable    ${data.partnerName}${timeStamp}
    ${category}         Set Variable    ${data.category${num}}
    ${contactName}      Set Variable    ${data.contactName}${timeStamp}
    ${contactRole}      Set Variable    ${data.contactRole${num}}
    ${email}            Set Variable    ${timeStamp}${data.email}
    ${agency}           Set Variable    ${data.agency}${timeStamp}
    ${address}          Set Variable    ${data.address}
    ${billingEntity}    Set Variable    ${timeStamp}${data.billingEntity}
    ${owner}            Set Variable    ${data.owner${num}}
    ${INPUT_OWNER}      Set Variable    //div[(.="${owner}")]
    ${HEADER_TEXT}               Set Variable   //span[text()="${partnerName}"]
    ${PARTNER_NAME_TEXT}         Set Variable   //div[text()="${partnerName}" and //div[@class="sc-kEjbxe kBeKqb headline-card"]]
    ${CLIENT_CONTACT_TEXT}       Set Variable   //span[text()="${contactName}*" and //div[@class="ant-select-selector"]]
    ${CATEGORY_TEXT}             Set Variable   //div[text()="${category}" and //div[@class="sc-jJEJSO DLtwf"]]
    ${OWNER_TEXT}                Set Variable   //div[text()="${owner}" and //div[@class="ant-col sc-iqHYGH ctduPu ant-col-xs-24 ant-col-sm-12"]]
    ${CONTRACT_TEXT}             Set Variable   //div[(text()="${contactName}") and //div[@class="ant-row sc-cxFLnm hVWfuf"]]
    ${CONTRACT_ROLE_TEXT}        Set Variable   //div[(text()="${contactRole}") and //div[@class="ant-row sc-cxFLnm biUiTa"] ]
    ${AGENCY_TEXT}               Set Variable   //div[(text()="${agency}") and //div[@class="ant-row sc-cxFLnm cTGXXb"]]
    ${EMAIL_TEXT}                Set Variable   //div[(text()="${email}") and //div[@class="ant-row sc-cxFLnm biUiTa"]]
#Set Variable to test case
    Set Test Variable    ${partnerName}
    Set Test Variable    ${category}
    Set Test Variable    ${contactName}
    Set Test Variable    ${contactRole}
    Set Test Variable    ${email}
    Set Test Variable    ${agency}
    Set Test Variable    ${address}
    Set Test Variable    ${billingEntity}
    Set Test Variable    ${owner}
    Set Test Variable    ${INPUT_OWNER}
    Set Test Variable    ${HEADER_TEXT}
    Set Test Variable    ${PARTNER_NAME_TEXT}
    Set Test Variable    ${CLIENT_CONTACT_TEXT}
    Set Test Variable    ${CATEGORY_TEXT}
    Set Test Variable    ${OWNER_TEXT}
    Set Test Variable    ${CONTRACT_TEXT}
    Set Test Variable    ${CONTRACT_ROLE_TEXT}
    Set Test Variable    ${AGENCY_TEXT}
    Set Test Variable    ${EMAIL_TEXT}



