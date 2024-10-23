*** Settings ***
Library    OperatingSystem


*** Test Cases ***

TC1
    
    @{List_of_files}      List Files In Directory    C:${/}Users${/}manist${/}OneDrive - KONGSBERG${/}Skrivebord${/}Myself${/}Automation Testing    *.py    
        Log To Console    ${List_of_files}
        
TC2
    Create Dictionary    C:${/}Users${/}manist${/}OneDrive - KONGSBERG${/}Skrivebord${/}Myself${/}Automation Testing${/}Downloads
    Directory Should Exist    C:${/}Users${/}manist${/}OneDrive - KONGSBERG${/}Skrivebord${/}Myself${/}Automation Testing${/}Downloads    