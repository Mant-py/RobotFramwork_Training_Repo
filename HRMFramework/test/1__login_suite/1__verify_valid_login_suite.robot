*** Settings ***
Documentation    This suite is testing the login validation of the login which conect diffrennt scenario with the documents
Resource    ../../resource/base/CommonFunctionality.resource
Test Setup   Launch Browser And Navigate 
Test Teardown    Take Screenshot And Close browser
*** Test Cases ***
verify valid login text 
    [Documentation]    This method is checking the validation title we are getting on page are correct
    Launch Browser And Navigate
    Log Title
    Input Text    //input[@name="username"]    admin
    Input Password    //input[@name="password"]    admin123
    Click Element    //button[@type="submit"]
    Page Should Contain    Quick Launch

