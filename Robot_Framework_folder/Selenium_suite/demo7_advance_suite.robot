*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Module_level_automation
    Set Selenium Implicit Wait    20s
    #opening browser with url
    Open Browser    http://demo.openemr.io/b/openemr/    browser=chrome
    Input Text    name:authUser    admin
    Input Password    name:clearPass    pass
    #selecting value from list  
    Select From List By Value    name:languageChoice    18  
    #clicnking button 
    Click Button    id:login-button

Web_browsing
    Open Browser    https://www.malaysiaairlines.com/in/en/
    Select From List By Label    class:SwitchTabHeader-inner-wrapper flex justify-center relative    Book a flight
    Input Text    css=input[class="multiselect-search"]    Mumbai
    Input Text    css=    text







