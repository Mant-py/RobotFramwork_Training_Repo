*** Settings ***

Library    ../../../.venv/Lib/site-packages/robot/libraries/DateTime.py
Library    ../../../.venv/Lib/site-packages/robot/libraries/String.py
Library    ../../../.venv/Lib/site-packages/robot/libraries/Collections.py

*** Test Cases ***

TC1
  Log To Console    message=before setting value 
  ${name}    Set Variable    Manish Thakur
  ${Introduction}     Set Variable     My Name is ${name} and i am Python Developer 
  Log To Console    ${Introduction}   
  Log To Console    after setting value

TC2
    Log To Console    This is Addition Operation
    ${a}    Set Variable    5
    Log    Setting Variable ${a}
    ${pi}   Set Variable    3.14
    Log    Setting Variable ${pi}
    Log    performing Operation of Area of Circle
    ${area}    Evaluate    ${pi}*${a} **2
    Log To Console    This Is Area : ${area} 
TC3
    ${Date}    Get Current Date
    Log    ${Date}

split_string_test_case
    Set Local Variable    ${Email}    dannyjhonson@gmail.com
    ${Content}    Split String    ${Email}    @    1
    Log To Console    ${Content}   

Remove_string_test_Case
   Set Local Variable    ${Email}    dannyjhonson@gmail.com
   ${removed_string}    Remove String    ${Email}    @
   Log To Console    ${removed_string} 

create_local_list
    @{fruite_list}    Create List    apple    banana    pineapple 
    Log To Console   ${fruite_list} 
    Set Local Variable    ${variable}    guava    
    Append To List    ${fruite_list}    ${variable}
    Log To Console    ${fruite_list}
    Insert Into List    ${fruite_list}    2    chiku
    Log To Console    ${fruite_list}
    Remove From List    ${fruite_list}    0
    Log To Console    ${fruite_list} 

remove_duplicate_values
    @{Duplicate_list}    Create List    1    1    1    1    1    3
    @{output}    Remove Duplicates    ${Duplicate_list}
    Log To Console    ${output}

get_length
    @{Duplicate_list}    Create List    1    1    1    1    1    3
    ${length_of_list}    Get Length    ${Duplicate_list}
    Log To Console    ${length_of_list}

using_for_loop
    @{Duplicate_list}    Create List    1    1    1    1    1    3
    FOR    ${element}    IN    ${Duplicate_list}
        Log To Console    ${element}
        
    END

using_for_in_range
    FOR    ${i}    IN RANGE    0    5    
        Log To Console    ${i}
        
    END

print_item_from_list
    @{fruite_list}    Create List    apple    banana    pineapple    grapes    guava    watermelon
    FOR    ${i}    IN    @{fruite_list}
        Log To Console    ${i}     
    END

create_dictionary_locally
    &{dict}    Create Dictionary    Name=Manish    Surnam=Thakur    Address=    Number=926873003
    @{Keys}    Get Dictionary Keys    ${dict}
    @{value}    Get Dictionary Values    ${dict}
    Log To Console    ${Keys}
    Log To Console    ${value}
            


