*** Settings ***
Documentation    This is rsource file for login page

Library    ../../../../.venv/Lib/site-packages/SeleniumLibrary/__init__.py

*** Variables ***
${USERNAME_LOCATOR}    username
${PASSWORD_LOCATOR}    password
*** Keywords ***
Enter username
    [Arguments]    ${Username}

    Input Text    ${USERNAME_LOCATOR}    ${Username}

Enter password
    [Arguments]    ${Password}

    Input Text    ${PASSWORD_LOCATOR}    ${Password}