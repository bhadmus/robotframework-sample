*** Settings ***
Documentation    All elements, urls, and credentials
...             are stored here.

*** Variables ***
${url}  # the url cannot be made public
${user}    *0********   # create a username
${access}   ********    # create a password
${userfield}    div#auth-login-phone > .phone-input
${wordfield}    input#reusable-inputs-placeHolder-password
${login}    login-login
${otp}  li:nth-of-type(1) > .codeInput
${confirm_otp}  confirmOTP-confirm
${Balance}  Portfolio Balance
${buy_cryptocurrency}   home-buy
${sell_cryptocurrency}  home-sell
${choose_currency}  Choose a currency
${Bitcoin}  div:nth-of-type(3) > .ListView  .checkmark
${Etherium}    div:nth-of-type(4) > .ListView  .checkmark
${Amount_holder}    reusable-dropdown-listviews-amountEx-local
${amount}   1000
${buy_bitcoin_review_button}    buy-review
${sell_bitcoin_review_button}   reusable-button-button
${review_confirm}   Review and confirm
${confirm_button}   reviewConfirm-withdraw
${success_message}  successfully!
${buy_done_button}  reusable-feedback-done