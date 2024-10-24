*** Settings ***
Library    SeleniumLibrary
Library    ../../../.venv/Lib/site-packages/robot/libraries/XML.py

*** Test Cases ***

Open_browser
    Set Local Variable    ${old_variable}    https://www.salesforce.com/in/form/signup/freetrial-sales/
    Open Browser    browser=Chrome    url=${old_variable}
    Set Selenium Implicit Wait    10s
    Maximize Browser Window
    Input Text    name:UserFirstName    John 
    Input Text    name:UserLastName    Wick
    Input Text    name:UserEmail    john@gmail.com 
    Select From List By Value    name:UserTitle    IT_Manager_AP
    Input Text    name:CompanyName    Something.Ltd
    Select From List By Value    name:CompanyEmployees    75 
    Input Text    name:UserPhone    1234567890
    Select From List By Value    name:CompanyCountry    IN 
    Click Element    (//div[@class="checkbox-ui"])[2]       
    Click Button    //button[@type="submit"]  

    
       



