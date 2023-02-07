*** Settings ***
Library     Selenium2Library


*** Variables ***

${ICON_DELETE_CONTRACT_ELEMENT}         //*[@class="sc-crrsfI dgyVgY ant-dropdown-trigger sc-jNMdTA kFCyzt"]
${DELETE_CONTRACT_ELEMENT}              //div[text()="Delete Contract"]
${DELETE_BUTTON_ELEMENT}                //button[@class="ant-btn ant-btn-primary ant-btn-danger"]
${TOASTBOX_DELETE_ELEMENT}              //div[text()="Contract was successfully deleted."]
${SEARCH_ELEMENT}                       //div[@class="search"]
${PARTNER_ELEMENT}                      //td[@class="sc-lcujXC bFEcAy"]
${REF_RESULT_DELETE_CONTRACT}           Contract was successfully deleted.
${RESULT_DELETE_CONTRACT}
${COUNT_DELETE}
${num}