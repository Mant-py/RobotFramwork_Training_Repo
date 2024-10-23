*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
finding_name_from_table
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://datatables.net/extensions/select/examples/checkbox/checkbox.html   
    
    Set Local Variable    ${Bool}    false
    WHILE   '${Bool}' == 'false'
        ${cout}    Get Element Count    (//tbody)[1]/tr
        FOR    ${i}    IN RANGE    1    ${cout} + 1
            Scroll Element Into View    //table[@id="example"]/tbody/tr[${i}]/td[2]    
            ${name}    Get Text    //table[@id="example"]/tbody/tr[${i}]/td[2]
            Log To Console    ${name}  
        END
        ${Attribute_variable}    Get Element Attribute    //div[@id="example_wrapper"]//button[@aria-label="Next"]    aria-disabled
        IF    '${Attribute_variable}' != 'None'
            Set Local Variable    ${Bool}    true
        END
        Click Element    //div[@id="example_wrapper"]//button[@class="dt-paging-button next"]
    END
    
