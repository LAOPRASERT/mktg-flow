*** Settings ***
Library     Selenium2Library
Variables   ../testdata/createPartner.yml

*** Variables ***

#Element Add New Partner page
${BUTTON_ADD_NEW_PARTNER}   //*[@class="sc-jrAGrp bONvcW"]
${PARTNER_NAME_ELEMENT}     //*[@id="rc_select_0"]
${CATEGORY_ELEMENT}         //*[@id="rc_select_1"]
${CONTACT_NAME_ELEMENT}     //*[@name="partner_contacts[0].name"]
${CONTACT_ROLE_ELEMENT}     //*[@name="partner_contacts[0].role"]
${EMAIL_ELEMENT}            //*[@name="partner_contacts[0].email"]
${AGENCY_ELEMENT}           //*[@name="partner_contacts[0].agency"]
${ADDRESS_ELEMENT}          //*[@name="partner_contacts[0].address"]
${BILLING_ENTITY_ELEMENT}   //*[@name="billing_entity"]
${OWNER_ELEMENT}            //*[@class="sc-jSgupP ksJFgj"]
${INPUT_OWNER}
${SUBMIT_BUTTON}            //button[@type ="submit" and //span[.="Submit"]]

#Element Get Text For Check Create New Partner
${HEADER_TEXT}
${PARTNER_NAME_TEXT}
${CLIENT_CONTACT_TEXT}
${CATEGORY_TEXT}
${OWNER_TEXT}
${CONTRACT_TEXT}
${CONTRACT_ROLE_TEXT}
${AGENCY_TEXT}
${EMAIL_TEXT}
${BILLING_ENTITY_ELEMENT_TEXT}  //div[@class="sc-jJEJSO izNNUN" and //div[@class="ant-col ant-col-20 sc-iqHYGH ctduPu"]]
${REQUIRED_FIELD_TEXT}          //div[text()="This field is required"]

#Value for compair
${PARTNER_NAME_VALUE}
${CATEGORY_VALUE}
${ERROR_REQUIRED_FIELD_VALUE}
# Variable for get data
${num}
${timeStamp}
${partnerName}
${category}
${contactName}
${contactRole}
${email}
${agency}
${address}
${billingEntity}
${owner}






