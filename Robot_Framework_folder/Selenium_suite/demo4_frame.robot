*** Settings ***
Library    SeleniumLibrary
Library    ../../../.venv/Lib/site-packages/robot/libraries/String.py


*** Test Cases ***

# TC1
#     Open Browser    browser=chrome
#     Maximize Browser Window
#     Set Selenium Implicit Wait    5s
#     Go To    url=https://netbanking.hdfcbank.com/netbanking/

#     Select Frame    //frame[@name="login_page"]

#     Input Text    //input[@name="fldLoginUserId"]    Jhon123
#     Click Element    //a[@class="btn btn-primary login-btn"]

#     Unselect Frame
#     #enter userid as john123

TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm

    Click Element    //img[@alt="Go"]

    ${actual_alert_text}    Handle Alert   

    Log To Console    ${actual_alert_text}

    Should Be String    ${actual_alert_text}    its not String

    Should Be Equal As Strings    ${actual_alert_text}    Customer ID${space}${space}cannot be left blank.

    