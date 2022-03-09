*** Settings ***
Resource            ../../Resources/CommonGlobal.robot
Test Setup          Open Application
Test Teardown       Close Application


*** Variables ***

*** Test Cases ***
Validate Verify User VR Bank Page
    [Documentation]  Validate Verify PEGA VR Bank Page
    [Tags]  Regression

    Given that the user should navigate in PEGA Login Page
    And user login using valid credentials
    Then user should see the VR Bank Page
    And user verify that the all fields is Visible


*** Keywords ***

that the user should navigate in PEGA Login Page
    my logger  that the user should navigate in PEGA Login Page

user login using valid credentials
    my logger  user login using valid credentials
    Login User  ${User.username}  ${User.password}

user should see the VR Bank Page
    my logger  user login using valid credentials
    element should be visible  ${vrbank_nav_logo_link}

user verify that the all fields is Visible
    my logger  user login using valid credentials
    Verify Page Elements should be Visible  @{vrbank_nav_field_elements}
    Navigate To   ${vrbank_nav_spaces_button}
    Navigate To   ${vrbank_nav_create_case_deceased_customer_button}
    Verify Page Elements should be Visible  @{create_deceased_customer_field_elements}

    Validate and Verify Error Message   ${create_deceased_customer_customerNumber_textbox}  Not a Blank









