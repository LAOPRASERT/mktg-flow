*** Settings ***
Library     Selenium2Library

*** Variables ***
${partner&Contract}  //*[@href="/partners"]
${scheduling}  //*[@href="/scheduling"]
${inventory}  //*[@href="/inventory"]
${administration}  //*[@class="sc-crrsfI exgRiJ svg-fill"]
${administrationMenu}  //*[@id="/administration$Menu"]
${sportType}  //*[@href="/administration/sport-type"]
${sportTeam}  //*[@href="/administration/sport-team"]
${vanue}  //*[@href="/administration/venue"]
${displayType}  //*[@href="/administration/display-type"]
${entitlementTemplate}  //*[@href="/administration/entitlement-templates"]
${production&Non}  //*[@href="/administration/production-and-nonmedia"]
${settings}  //*[text()="Settings"]
${settingsMenu}  //*[@id="/settings$Menu"]
${settingsScheduling}  //*[@href="/settings/scheduling"]
${settingsUser}  //*[@href="/settings/user"]
${settingsAccount}  //*[@href="/settings/account"]
${settingsT&C}  //*[@href="/settings/terms-and-conditions"]