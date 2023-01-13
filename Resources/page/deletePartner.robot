*** Settings ***
Library     Selenium2Library
Variables   ../testdata/createPartner.yml

*** Variables ***

#Element Delete Partner page
${PARTNER_ELEMENT}                      //td[@class="sc-lcujXC bFEcAy"]]
${FILLTER_PARTNER_ELEMENT}              //span[text()="Partner" and //div[@class="sc-jcVebW eVJYVl"]]
${SEARCH_ELEMENT}                       //div[@class="search"]
${DELETE_ICON_ELEMENT}                  //*[@class="sc-crrsfI dgyVgY ant-dropdown-trigger sc-jNMdTA kFCyzt"]
${DELETE_BUTTON_ELEMENT}                //div[text()="Delete Partner" and //div[@class="sc-jSgupP cHdLnP"]]
${CONFIRMATION_ELEMENT}                 //div[text()="Deleting partner will also delete all contracts for this partner. Are you sure you want to delete the partner?" and //div[@class="sc-jJEJSO gVreDR"]]
${DELETE_PARTNER_BUTTON_ELEMENT}        //span[text()="Delete" and //button[@class="ant-btn ant-btn-primary ant-btn-danger"]]


