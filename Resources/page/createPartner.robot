*** Settings ***
Library     Selenium2Library
Variables   ../testdata/createPartner.yml

*** Variables ***
${BUTTON_ADD_NEW_PARTNER}  //*[@class="sc-jrAGrp bONvcW"]
${PARTNER_NAME_ELEMENT}  //*[@id="rc_select_0"]
${CATEGORY_ELEMENT}  //*[@id="rc_select_1"]
${CONTACT_NAME_ELEMENT}  //*[@name="partner_contacts[0].name"]
${CONTACT_ROLE_ELEMENT}  //*[@name="partner_contacts[0].role"]
${EMAIL_ELEMENT}  //*[@name="partner_contacts[0].email"]
${AGENCY_ELEMENT}  //*[@name="partner_contacts[0].agency"]
${ADDRESS_ELEMENT}  //*[@name="partner_contacts[0].address"]
${BILLING_ENTITY_ELEMENT}  //*[@name="billing_entity"]
${OWNER_ELEMENT}  //*[@class="sc-jSgupP ksJFgj"]
${INPUT_OWNER}  //div[(.="${data.owner}")]
${SUBMIT_BUTTON}  //button[@type ="submit" and //span[.="Submit"]]


${HEADER_TEXT}  //span[text()="${data.partnerName}"]
${PARTNER_NAME_TEXT}  //div[text()="${data.partnerName}" and //div[@class="sc-kEjbxe kBeKqb headline-card"]]
${CLIENT_CONTACT_TEXT}  //span[text()="${data.contactName}*" and //div[@class="ant-select-selector"]]
${CATEGORY_TEXT}  //div[text()="${data.category}" and //div[@class="sc-jJEJSO DLtwf"]]
${OWNER_TEXT}  //div[text()="${data.owner}" and //div[@class="ant-col sc-iqHYGH ctduPu ant-col-xs-24 ant-col-sm-12"]]
${CONTRACT_TEXT}  //div[(text()="${data.contactName}") and //div[@class="ant-row sc-cxFLnm hVWfuf"]]
${CONTRACT_ROLE_TEXT}  //div[(text()="${data.contactRole}") and //div[@class="ant-row sc-cxFLnm biUiTa"] ]
${AGENCY_TEXT}  //div[(text()="${data.agency}") and //div[@class="ant-row sc-cxFLnm cTGXXb"]]
${EMAIL_TEXT}  //div[(text()="${data.email}") and //div[@class="ant-row sc-cxFLnm biUiTa"]]
${BILLING_ENTITY_ELEMENT_TEXT}  //div[@class="sc-jJEJSO izNNUN" and //div[@class="ant-col ant-col-20 sc-iqHYGH ctduPu"]]




