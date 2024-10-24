*** Settings ***
Library    RequestsLibrary
Library    ../../../.venv/Lib/site-packages/SeleniumLibrary/__init__.py
Library    ../../../.venv/Lib/site-packages/robot/libraries/String.py
Library    ../../../.venv/Lib/site-packages/robot/libraries/OperatingSystem.py
Suite Setup  Create Session    petshopapi    https://petstore.swagger.io/v2
Suite Teardown    Delete All Sessions      

*** Test Cases ***
TC1 Find valid pet
    ${response}    GET On Session    petshopapi    pet/25    
    Log To Console    ${response}
    Log To Console    ${response.json()}[category][id]
    FOR    ${i}    IN    @{response.json()}[tags]
        Log To Console    ${i}    
    END


TC2 find invalid pet
    ${response}    GET On Session    petshopapi    pet/89    expected_status=404
    Should Be Equal    ${response.json()}[message]    Pet not found

TC3 find by expected_status_sold    
    ${response}    GET On Session    petshopapi    url=pet/findByStatus?status=sold    expected_status=200     
    ${count}    Get Length    ${response.json()}
    Log To Console    ${count} dogs are sold

TC4 find by expected_status_pending    
    ${response}    GET On Session    petshopapi    url=pet/findByStatus?status=pending    expected_status=200     
    ${count}    Get Length    ${response.json()}
    Log To Console    ${count} dogs are sold

TC5 find by expected_status_available    
    ${response}    GET On Session    petshopapi    url=pet/findByStatus?status=avaialble    expected_status=200     
    ${count}    Get Length    ${response.json()}
    Log To Console    ${count} dogs are sold

TC6 doing a post request
    &{headers}    Create Dictionary    Content-type=application/json    Connection=keep-alive

    ${json}    Get Binary File    ${EXECDIR}${/}\RobotFrameWork_Repo${/}Api_automation_suite${/}test-data${/}new-data.json 

    ${response}    POST On Session    petshopapi    url=/pet  headers=${headers}    json=${json}

    Log    ${response}       
*** Keywords ***

