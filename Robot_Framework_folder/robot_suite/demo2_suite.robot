*** Settings ***

*** Variables ***
${BROWSER_NAME}    Chrome
@{COLOURS}    Red     Green    Yellow     Blue    Pink    oliveGreen
&{MY_DETAILS}    my_name=Manish    Surname=Thakur    mobile_no.=9326873003
&{Mobile_application}    Platform_name=Android    version=1.0.0    set_up_method=programing    

*** Test Cases ***

printing_gloabal_variables
    Log To Console    this is my default browser ${BROWSER_NAME}
    Log    This are the content of list ${COLOURS}
    Log To Console    This is my fev ${COLOURS}[1]
    Log To Console    ${Mobile_application}

