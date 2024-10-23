*** Settings ***
Resource    ../../resource/base/CommonFunctionality.resource
Resource    ../../resource/pages/login_page.resource
*** Test Cases ***
verify invalidlogin suite    
    Launch Browser And Navigate
    Enter username    admin
    Enter password    admin123
    Click Element    //button[@type="submit"]
    Click Element    //span[normalize-space()='PIM']
    Click Element    //button[normalize-space()='Add']
    Scroll Element Into View    name:firstName
    Input Text    //input[@name='firstName']    Omkar
    Input Text    //input[@name='middleName']    rajaram
    Input Text    //input[@name='lastName']    More
    Input Text    (//input[@class="oxd-input oxd-input--active"])[2]    9862    ${True}    
    Choose File    //input[@type='file']    ${EXECDIR}${/}selenium-screenshot-1.png    
    Click Element    //button[normalize-space()='Save']
    Element Text Should Be    //h6[normalize-space()='Omkar More']    Omkar More
            


