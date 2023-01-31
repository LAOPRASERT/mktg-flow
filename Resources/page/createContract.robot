*** Settings ***
Library     Selenium2Library
Variables   ../testdata/createPartner.yml
Variables   ../testdata/createContract.yml

*** Variables ***
#Aray list sport type
@{SPORT_LIST}=  AFL  CRICKET  VRC  BASIC  STANDARD  TVT
@{CHECK_SPORT_TYPE_LIST}=   AFL  Cricket  VRC  Music-Events(Basic)  Basketball Events (Standard)  B's Soccer

#Element Create Contract page
${ADD_NEW_CONTRACT_ELEMENT}             //button[@class="sc-jrAGrp btfqMl" and //button[text()="Add new contract"]]
${HEADER_TEXT_ELEMENT}                  //div[text()="Add New Contract"]
${INPUT_CONTRACT_ID_ELEMENT}            //input[@name="contract_id"]
${INPUT_CONTRACT_NAME_ELEMENT}          //input[@name="contract_name"]
${SELECT_FIXTURE_ELEMENT}               //div[@name="fixtures[0].fixture"]
${FIXTURE_NAME_AFL_ELEMENT}             //span[text()="#Automate_AFL"]
${FIXTURE_NAME_CRICKET_ELEMENT}         //span[text()="#Automate_Cricket"]
${FIXTURE_NAME_VRC_ELEMENT}             //span[text()="#Automate_VRC"]
${FIXTURE_NAME_BASIC_ELEMENT}           //span[text()="#Automate_Basic"]
${FIXTURE_NAME_STANDARD_ELEMENT}        //span[text()="#Automate_Standard"]
${FIXTURE_NAME_TVT_ELEMENT}             //span[text()="#Automate_TVT"]
${ANOTHER_FIXTURE_BUTTON_ELEMENT}       //button[text()="Add Another Fixture" and //span[@class="icon"]]
${CONFIRM_ADD_NEW_CONTRACT_ELEMENT}     //span[text()="Add New Contract"]
${BACK_TO_CONTRACT_LIST_ELEMENT}        //a[text()="TrueMove_Automate" and //span[@class="sc-hTZhsR ivLowE"]]
${ADD_ANOTHER_FIXTURE_BUTTON_ELEMENT}   //button[text()="Add Another Fixture"]
${REQUIRED_FIELD_TEXT}                  //div[text()="This field is required"]
${FIXTURE_NAME_TEXT}
${CHECK_CONTRACT_ID_ELEMENT}
${CHECK_CONTRACT_NAME_ELEMENT}
${CHECK_CONTRACT_ALL_SPORT_TYPE}
${FIXTURE_LIST}
${CONTRACT_ID}
${CONTRACT_NAME}
${index}
${SPORT_TYPE}
${ERROR_REQUIRED_FIELD_VALUE}
${offSetY}                              0
${GET_RESPONSE}
${JSON_RESPONSE}
${JSON_MODIFY_RESPONSE}
@{ID_LIST}