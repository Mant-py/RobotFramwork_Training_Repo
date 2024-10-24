*** Settings ***
Documentation    This is rsource file for login page

Library    SeleniumLibrary

*** Variables ***
${USERNAME_LOCATOR}    //input[@name="username"]
${PASSWORD_LOCATOR}    //input[@name="password"]
${LOGIN_LOCATOR}    //button[@type="submit"]
*** Keywords ***
Enter username
    [Arguments]    ${Username}

    Input Text    ${USERNAME_LOCATOR}    ${Username}

Enter password
    [Arguments]    ${Password}

    Input Text    ${PASSWORD_LOCATOR}    ${Password}

Click login
    Click Element    ${LOGIN_LOCATOR} 
   

