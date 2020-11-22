*** Settings ***
Documentation    All actions common to the user will
...             be documented here for reusability.
Library    SeleniumLibrary
Resource   ../Resources/Data/ElementMapper.robot

*** Keywords ***
I could see the dashboard
    Wait Until Page Contains    ${Balance}  180s
    Page Should Contain    ${Balance}

I clicked on
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    Click Button    ${element}

I could see the currency options
    Wait Until Page Contains    ${choose_currency}  30s
    Page Should Contain    ${choose_currency}

I selected
    [Arguments]    ${element}
    Click Element    ${element}

I inserted the amount
    Wait Until Element Is Visible    ${amount_holder}
    Input Text  ${amount_holder}    ${amount}

I could see the confirm pop up
    Wait Until Page Contains    ${review_confirm}  30s
    Page Should Contain    ${review_confirm}

I could see a transaction success message
    Wait Until Page Contains    ${success_message}  30s
    Page Should Contain    ${success_message}
