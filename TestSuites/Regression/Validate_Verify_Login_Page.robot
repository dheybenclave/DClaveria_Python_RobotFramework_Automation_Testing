*** Settings ***
Resource            ../../Resources/CommonGlobal.robot
Test Setup          Open Application
Test Teardown       Close Application

*** Variables ***

*** Test Cases ***
Validate and Verify Login Page
    [Documentation]  Validate and Verify Login Page
    [Tags]  Regression
    Given that the user should navigate in PEGA Login Page
    And user verify the Login Page Elements is Visible
    When user login using invalid credentials
    Then user should not proceed to Dashboard Page
    When user login using valid credentials
    Then user should proceed to Dashboard Page

*** Keywords ***
that the user should navigate in PEGA Login Page
    my logger   that the user should navigate in PEGA Login Page
    location should contain  ${LOGIN_URL}

user verify the Login Page Elements is Visible
    my logger   user verify the Login Page Elements is Visible
    Verify Page Elements should be Visible  @{login_required_fields_elements}

user login using invalid credentials
    my logger  user login using invalid credentials
    ${rand_value}=  set variable   get random name     ${Author.username}
    my logger    ${rand_value}
    Login User  ${Author.username}   ${rand_value}

    Validate and Verify Error Message   ${login_mainScreen_error_label}     The information you entered was not recognized.

user should not proceed to Dashboard Page
    my logger  user should not proceed to Dashboard Page
    location should contain  ${LOGIN_URL}

user login using valid credentials
    my logger  user login using valid credentials
    Login User  ${Author.username}  ${Author.password}

user should proceed to Dashboard Page
    my logger  user should proceed to Dashboard Page
    location should contain  ${DASHBOARD_URL}
    Switch Studio To APP Studio
    Switch Studio To Dev Studio
    Select Dropdown Value   ${header_application_dropdown}      Overview












