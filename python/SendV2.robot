*** Settings ***
Library    Selenium2Library
*** Variables ***
${browser}      Chrome
${test_fb}  facebook 
${url_google}   http://www.google.com
${ID}       sakamotohatsune@gmail.com
${Pass}     -Apollo030056
*** Keywords ***
*** Test Cases ***
gotogoogle.com
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
    ${driver}=    Create Webdriver    Chrome    options=${options}
    Go to       https://www.google.co.th/?hl=th
    Maximize Browser Window
    Set Selenium Speed	0.4 seconds
gotoFacebook
    Go To    https://www.facebook.com/
loginId
    Input Text    name=email    ${ID}
loginPass
    Input Text    name=pass     ${Pass}
    Click Button  name=login
GotoText
    Go To          https://www.facebook.com/messages/t/104244495036936