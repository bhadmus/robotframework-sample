*** Settings ***
Documentation    This page handles the common events
...             among all test cases.

Library    SeleniumLibrary
Resource    ../Resources/Data/ElementMapper.robot

*** Keywords ***
Activate Browser Session
    Open Browser    about:blank    gc
    Go To   ${url}
    Maximize Browser Window

Deactivate Browser Session
    Close Browser

I am logged in as a user
    Input Text    css=${userfield}  ${user}
    Input Text    css=${wordfield}  ${access}
    Click Button    ${login}
    Wait Until Element Is Visible    css=${otp}    180s
       FOR   ${i}    IN RANGE    1   7
               Input Text    css=li:nth-of-type(${i}) > .codeInput   ${i}
       END
    Click Button    ${confirm_otp}
