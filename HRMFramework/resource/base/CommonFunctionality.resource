*** Settings ***
Documentation    This resource file is contains browser report configuration details
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    Chrome
${URL}    https://opensource-demo.orangehrmlive.com/

*** Keywords ***

Launch Browser And Navigate
    Open Browser    browser=${BROWSER}    
    Maximize Browser Window    
    Set Selenium Implicit Wait    10s
    Go To    ${URL}
    Set Screenshot Directory    ${EXECDIR}${/}logs

Take Screenshot And Close browser
    Run Keyword And Ignore Error    Capture Page Screenshot
    Close All Browsers
       
    
