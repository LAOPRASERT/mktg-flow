*** Settings ***
Library     Selenium2Library
Library     Debugger
Resource    SelectMenu.robot
Resource    CommonFunctionality.robot
Variables   ../Resources/commonEnv.yml
Variables   ../Resources/createPartnerEnv.yml



*** Keywords ***
CreateNewPartner
    SelectPartner&Contract
    Sleep    3
    Click Button    //*[@class="sc-jrAGrp bONvcW"]
    Wait Until Element Is Visible   //*[@id="rc_select_0"]
    Input Text  ${PARTNER_NAME}  ${partnerName}
    Input Text  ${CATEGORY}  ${category}
    Input Text  ${CONTACT_NAME}  ${contactName}
    Input Text  ${CONTACT_ROLE}  ${contactRole}
    Input Text  ${EMAIL}  ${email}
    Input Text  ${AGENCY}  ${agency}
    Input Text  ${ADDRESS}  ${address}
    Input Text  ${BILLING_ENTITY}  ${billingEntity}
    Sleep    5
    Click Element    //*[@class="sc-jSgupP ksJFgj"]
    Debug
#    Select From List By Index    //*[@class="ant-select-selection-placeholder"]  2
    Sleep    5
