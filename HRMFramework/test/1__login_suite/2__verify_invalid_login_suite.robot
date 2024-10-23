*** Settings ***

Resource    ../../resource/base/CommonFunctionality.resource

*** Test Cases ***
verify invalidlogin suite
    Launch Browser And Navigate
    Input Text    //input[@name="username"]    admin123
    Input Password    //input[@name="password"]    admin123
    Click Element    //button[@type="submit"]
    Page Should Contain    Invalid credentials