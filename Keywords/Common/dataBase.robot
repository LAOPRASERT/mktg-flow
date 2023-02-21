*** Settings ***
Library         Selenium2Library
Library         DatabaseLibrary
Library         OperatingSystem
Library         DateTime
Variables       ../../Resources/testdata/dataBase.yml

*** Keywords ***
connect database for delete partner
    ${timeStamp}        Get Current Date
    ${output}           Execute Sql String    Update mktg.partners set deleted="${timeStamp}" WHERE name LIKE 'Auto%' AND deleted is null;
    Log To Console      Partner Deleted

connect database for delete contract
    ${timeStamp}        Get Current Date
    ${output}           Execute Sql String    Update mktg.partner_contracts set deleted="${timeStamp}" WHERE contract_id LIKE 'A-%' AND deleted is null AND partner_id = 203;
    Log To Console      Contract Deleted
