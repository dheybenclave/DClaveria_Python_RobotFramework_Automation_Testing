*** Settings ***
Documentation       Common Keywords, Task , Commands and Setup
Library             OperatingSystem
Library             SeleniumLibrary
Library             String
#Library             RPA.Browser.Selenium
#Library             Browser


#Libraries | Keyword Command
Library             ../Libraries/common_global.py

#Page Assertions
Resource            ../Resources/Assertions/assertions_common.robot

#Page Commands/Tasks
Resource            ../Resources/Tasks/tasks_common.robot
Resource            ../Resources/Tasks/tasks_textbox.robot
Resource            ../Resources/Tasks/tasks_dropdown.robot

#Page Selectors
Resource            ../Resources/PageSelectors/common_selectors.robot
#Page : Login Page
Resource            ../Resources/PageSelectors/LoginPage/login_mainscreen.robot
#Page : Studio Page
Resource            ../Resources/PageSelectors/StudioPage/PredictionStudioPage/common_prediction_studio_selectors.robot
Resource            ../Resources/PageSelectors/StudioPage/APPStudioPage/VRBankPage/common_vrbank_selectors.robot
Resource            ../Resources/PageSelectors/StudioPage/APPStudioPage/common_app_studio_selectors.robot
Resource            ../Resources/PageSelectors/StudioPage/DevStudioPage/common_dev_studio_selectors.robot
#Page : VRBank Page
Resource            ../Resources/PageSelectors/VrBankPage/common_vrbank_selectors.robot

#Test Data
Resource            ../Resources/TestData/UserCredentials.robot


*** Variables ***
${BROWSER}          chrome
${LOGIN_URL}        http://localhost:8080/prweb/PRServlet
${DASHBOARD_URL}    ${LOGIN_URL}/app/vr-bank_/


*** Keywords ***

Setup chromedriver
  my logger   ${EXECDIR}


Open Application
    [Arguments]  ${app_url}=${LOGIN_URL}   ${app_browser}=${BROWSER}

    Set Environment Variable  webdriver.chrome.driver  ${EXECDIR}\\attest\\bin

#    ${chrome_options} =    Evaluate    selenium.webdriver.ChromeOptions()
#    Call Method    ${chrome_options}    add_argument    --log-level\=3
#    Call Method    ${chrome_options}    add_argument    --start-maximized
#    Call Method    ${chrome_options}    add_argument    --window-size\=800,600
#    Call Method    ${chrome_options}    add_argument    --headless
#    Call Method    ${chrome_options}    add_argument    --disable-extensions
#    Create WebDriver    Chrome    chrome_options=${chrome_options}

#    Open browser    ${app_url}   ${app_browser}

    Create Webdriver    Chrome    executable_path=${EXECDIR}\\attest\\bin\\chromedriver.exe
    Go To   ${app_url}

    maximize browser window
    wait until location contains   ${app_url}
    location should contain  ${app_url}
    Sleep   2s

Close Application
    Sleep   2s
    [Teardown]  Close Browser


Validate and Verify Error Message
    [Arguments]    ${selector}     ${err_message}
    scroll element into view    ${selector}
    element should be visible   ${selector}
    element text should be      ${selector}     ${err_message}



