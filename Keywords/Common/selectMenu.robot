*** Settings ***
Library     Selenium2Library
Resource    ../../Resources/page/common/Menu.robot

*** Keywords ***
SelectPartner&Contract
    Wait Until Element Is Visible   ${partner&Contract}
    Click Element                   ${partner&Contract}
    Sleep    3s

SelectScheduling
    Wait Until Element Is Visible   ${scheduling}
    Click Element                   ${scheduling}
    Sleep    2s

SelectInventoryManagement
    Wait Until Element Is Visible   ${inventory}
    Click Element                   ${inventory}
    Sleep    2s

SelectSportTypeManagement
    Wait Until Element Is Visible   ${administration}
    Click Element                   ${administration}
    Sleep    1s
    Wait Until Element Is Visible   ${administrationMenu}
    Click Element                   ${sportType}
    Sleep    2s

SelectSportTeamManagement
    Wait Until Element Is Visible   ${administration}
    Click Element                   ${administration}
    Sleep    1s
    Wait Until Element Is Visible   ${administrationMenu}
    Click Element                   ${sportTeam}
    Sleep    2s

SelectVenueManagement
    Wait Until Element Is Visible   ${administration}
    Click Element                   ${administration}
    Sleep    1s
    Wait Until Element Is Visible   ${administrationMenu}
    Click Element                   ${vanue}
    Sleep    2s

SelectDisplayTypeManagement
    Wait Until Element Is Visible   ${administration}
    Click Element                   ${administration}
    Sleep    1s
    Wait Until Element Is Visible   ${administrationMenu}
    Click Element                   ${displayType}
    Sleep    2s

SelectEntitlementTemplates
    Wait Until Element Is Visible   ${administration}
    Click Element                   ${administration}
    Sleep    1s
    Wait Until Element Is Visible   ${administrationMenu}
    Click Element                   ${entitlementTemplate}
    Sleep    2s

SelectProduction&NonMediaManagement
    Wait Until Element Is Visible   ${administration}
    Click Element                   ${administration}
    Sleep    1s
    Wait Until Element Is Visible   ${administrationMenu}
    Click Element                   ${production&Non}
    Sleep    2s

SelectSchedulingRules
    Wait Until Element Is Visible   ${settings}
    Click Element                   ${settings}
    Sleep    1s
    Wait Until Element Is Visible   ${settingsMenu}
    Click Element                   ${settingsScheduling}
    Sleep    2s

SelectUserSettings
    Wait Until Element Is Visible   ${settings}
    Click Element                   ${settings}
    Sleep    1s
    Wait Until Element Is Visible   ${settingsMenu}
    Click Element                   ${settingsUser}
    Sleep    2s

SelectAccountSettings
    Wait Until Element Is Visible   ${settings}
    Click Element                   ${settings}
    Sleep    1s
    Wait Until Element Is Visible   ${settingsMenu}
    Click Element                   ${settingsAccount}
    Sleep    2s

SelectT&CSettings
    Wait Until Element Is Visible   ${settings}
    Click Element                   ${settings}
    Sleep    1s
    Wait Until Element Is Visible   ${settingsMenu}
    Click Element                   ${settingsT&C}
    Sleep    2s

#SelectMenu
#    SelectPartner&Contract
#    SelectScheduling
#    SelectInventoryManagement
#    SelectSportTypeManagement
#    SelectSportTeamManagement
#    SelectVenueManagement
#    SelectDisplayTypeManagement
#    SelectEntitlementTemplates
#    SelectProduction&NonMediaManagement
#    SelectSchedulingRules
#    SelectUserSettings
#    SelectAccountSettings
#    SelectT&CSettings
