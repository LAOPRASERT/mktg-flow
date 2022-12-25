*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    SelectMenu.robot
Variables   ../Resources/page/createPartner.yml


*** Keywords ***
CreateNewPartner
    SelectPartner&Contract
    Sleep    3
    Click Button    //*[@class="sc-jrAGrp bONvcW"]
    Wait Until Element Is Visible   //*[@id="rc_select_0"]
    Input Text  ${PARTNER_NAME_ELEMENT}  ${partnerName}
    Input Text  ${CATEGORY_ELEMENT}  ${category}
    Input Text  ${CONTACT_NAME_ELEMENT}  ${contactName}
    Input Text  ${CONTACT_ROLE_ELEMENT}  ${contactRole}
    Input Text  ${EMAIL_ELEMENT}  ${email}
    Input Text  ${AGENCY_ELEMENT}  ${agency}
    Input Text  ${ADDRESS_ELEMENT}  ${address}
    Input Text  ${BILLING_ENTITY_ELEMENT}  ${billingEntity}
    Sleep    5
    Click Element    //*[@class="sc-jSgupP ksJFgj"]
    Debug
#    Select From List By Index    //*[@class="ant-select-selection-placeholder"]  2
    Sleep    5
