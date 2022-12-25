*** Settings ***
Library     Selenium2Library

*** Keywords ***
SelectPartner&Contract
    Wait Until Element Is Visible   //*[@href="/partners"]
    Click Element    //*[@href="/partners"]
    Sleep    2s

SelectScheduling
    Wait Until Element Is Visible   //*[@href="/scheduling"]
    Click Element    //*[@href="/scheduling"]
    Sleep    2s

SelectInventoryManagement
    Wait Until Element Is Visible   //*[@href="/inventory"]
    Click Element    //*[@href="/inventory"]
    Sleep    2s

SelectSportTypeManagement
    Wait Until Element Is Visible   //*[@class="sc-crrsfI exgRiJ svg-fill"]
    Click Element    //*[@class="sc-crrsfI exgRiJ svg-fill"]
    Sleep    2s
    Wait Until Element Is Visible   //*[@id="/administration$Menu"]
    Click Element    //*[@href="/administration/sport-type"]
    Sleep    2s

SelectSportTeamManagement
    Wait Until Element Is Visible   //*[@class="sc-crrsfI exgRiJ svg-fill"]
    Wait Until Element Is Visible   //*[@id="/administration$Menu"]
    Click Element    //*[@href="/administration/sport-team"]
    Sleep    2s

SelectVenueManagement
    Wait Until Element Is Visible   //*[@class="sc-crrsfI exgRiJ svg-fill"]
    Wait Until Element Is Visible   //*[@id="/administration$Menu"]
    Click Element    //*[@href="/administration/venue"]
    Sleep    2s

SelectDisplayTypeManagement
    Wait Until Element Is Visible   //*[@class="sc-crrsfI exgRiJ svg-fill"]
    Wait Until Element Is Visible   //*[@id="/administration$Menu"]
    Click Element    //*[@href="/administration/display-type"]
    Sleep    2s

SelectEntitlementTemplates
    Wait Until Element Is Visible   //*[@class="sc-crrsfI exgRiJ svg-fill"]
    Wait Until Element Is Visible   //*[@id="/administration$Menu"]
    Click Element    //*[@href="/administration/entitlement-templates"]
    Sleep    2s

SelectProduction&NonMediaManagement
    Wait Until Element Is Visible   //*[@class="sc-crrsfI exgRiJ svg-fill"]
    Wait Until Element Is Visible   //*[@id="/administration$Menu"]
    Click Element    //*[@href="/administration/production-and-nonmedia"]
    Sleep    2s

SelectSchedulingRules
    Wait Until Element Is Visible   //*[text()="Settings"]
    Click Element    //*[text()="Settings"]
    Sleep    2s
    Wait Until Element Is Visible   //*[@id="/settings$Menu"]
    Click Element    //*[@href="/settings/scheduling"]
    Sleep    2s

SelectUserSettings
    Wait Until Element Is Visible   //*[@id="/settings$Menu"]
    Click Element    //*[@href="/settings/user"]
    Sleep    2s

SelectAccountSettings
    Wait Until Element Is Visible   //*[@id="/settings$Menu"]
    Click Element    //*[@href="/settings/account"]
    Sleep    2s

SelectT&CSettings
    Wait Until Element Is Visible   //*[@id="/settings$Menu"]
    Click Element    //*[@href="/settings/terms-and-conditions"]
    Sleep    2s

SelectMenu
    SelectPartner&Contract
    SelectScheduling
    SelectInventoryManagement
    SelectSportTypeManagement
    SelectSportTeamManagement
    SelectVenueManagement
    SelectDisplayTypeManagement
    SelectEntitlementTemplates
    SelectProduction&NonMediaManagement
    SelectSchedulingRules
    SelectUserSettings
    SelectAccountSettings
    SelectT&CSettings
