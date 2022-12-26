*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    SelectMenu.robot
Resource    ../Resources/page/createPartner.robot
Variables   ../Resources/testdata/createPartner.yml

*** Keywords ***
CreateNewPartner
    SelectPartner&Contract
    Wait Until Element Is Visible  ${BUTTON_ADD_NEW_PARTNER}
    Click Button  ${BUTTON_ADD_NEW_PARTNER}
    Wait Until Element Is Visible  ${PARTNER_NAME_ELEMENT}
    Input Text  ${PARTNER_NAME_ELEMENT}  ${data.partnerName}
    Input Text  ${CATEGORY_ELEMENT}  ${data.category}
    Input Text  ${CONTACT_NAME_ELEMENT}  ${data.contactName}
    Input Text  ${CONTACT_ROLE_ELEMENT}  ${data.contactRole}
    Input Text  ${EMAIL_ELEMENT}  ${data.email}
    Input Text  ${AGENCY_ELEMENT}  ${data.agency}
    Input Text  ${ADDRESS_ELEMENT}  ${data.address}
    Input Text  ${BILLING_ENTITY_ELEMENT}  ${data.billingEntity}
    Sleep    2
    Click Element  ${OWNER_ELEMENT}
    Sleep    2
    Click Element  ${INPUT_OWNER}
    Debug
    Sleep    2
