*** Settings ***
Library    SeleniumLibrary    
Library    ../../../.venv/Lib/site-packages/robot/libraries/XML.py


*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.db4free.net/
    Click Element    partial link:phpMyAdmin
    #click on phpMyAdmin » 
    Switch Window    phpMyAdmin
    Input Text    id:input_username    admin
    Input Text    id:input_password    admin123

    Click Element    //input[@type="submit"]

    ${title}    Get Title    

    Close Window

    Log To Console    ${title}


