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




