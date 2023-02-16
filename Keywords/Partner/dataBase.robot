*** Settings ***
Library         Selenium2Library
Library         DatabaseLibrary
Library         OperatingSystem
Library         DateTime
Variables       ../../Resources/testdata/dataBase.yml

*** Keywords ***
connect database for delete partner
#    ${result}           Execute Sql String      Select name From partners
    ${timeStamp}        Get Current Date
    ${output}           Execute Sql String    Update mktg.partners set deleted="${timeStamp}" WHERE name LIKE 'Auto%' AND deleted is null;
    @{resultQuery}      Query    Select * From partners WHERE name LIKE 'AutoP%' AND deleted is null;

    Log To Console    ${timeStamp}
    Log Many   @{resultQuery}