***Settings***
Library    DataDriver    file=../test-data/TestDataforLogin.xlsx   sheet_name=VarifyInavlidLoginTemplate      
Suite Setup       Launch Browser And Navigate
Suite Teardown    Close Browser
Test Setup        
Test Template     Invalid Login
Resource    ../resource/base/CommonFunctionality.resource
Resource    ../resource/pages/login_page.resource

*** Test Case ***
Tc1

    

***** *Keywords* *****
Invalid login
    [Arguments]    ${username}    ${password}
    Enter username    ${username}
    Enter password    ${password}
    Click login