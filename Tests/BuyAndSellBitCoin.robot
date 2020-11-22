*** Settings ***
Documentation    This is to test that the user can buy
...             and sell BITCOIN

Resource    ../Resources/CommonEvents.robot
Resource    ../Resources/UserActions.robot


Test Setup    Activate Browser Session
Test Teardown    Deactivate Browser Session

*** Test Cases ***
A User Should Be Able To Buy BitCoin
    [Tags]    per-01
    I am logged in as a user
    I could see the dashboard
    I clicked on    ${buy_cryptocurrency}
    I could see the currency options
    I selected    css=${Bitcoin}
    I inserted the amount
    I clicked on    ${buy_bitcoin_review_button}
    I could see the confirm pop up
    I clicked on    ${confirm_button}
    I could see a transaction success message
    I clicked on    ${buy_done_button}
    I could see the dashboard

A User Should Be Able To Sell BitCoin
    [Tags]    per-02
    I am logged in as a user
    I could see the dashboard
    I clicked on    ${sell_cryptocurrency}
    I could see the currency options
    I selected    css=${Bitcoin}
    I inserted the amount
    I clicked on    ${sell_bitcoin_review_button}
    I could see the confirm pop up
    I clicked on    ${confirm_button}
    I could see a transaction success message
    I clicked on    ${buy_done_button}
    I could see the dashboard
