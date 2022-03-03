*** Settings ***
Documentation       Common/Global Task/Command
Resource            ../../Resources/CommonGlobal.robot

*** Keywords ***

Login User
   [Arguments]     ${input_email}   ${input_password}
    Set Textbox Value    ${login_mainScreen_user_textbox}   ${input_email}
    Set Textbox Value    ${login_mainScreen_password_textbox}    ${input_password}
    click button    ${login_mainScreen_login_button}
    Sleep   2s

Logoff User
#    click button    ${vrbank_nav_user_button}
    Select Dropdown Value  ${vrbank_nav_user_button}    Log off
    Sleep   2s

Switch Studio To APP Studio
    Sleep  2s
    Wait Until Element Is Visible  ${header_switch_studio_dropdown}
    Select Dropdown Value   ${header_switch_studio_dropdown}    App Studio
    Select Frame    ${app_iframe_parent_selector}
    Select Frame    ${app_iframe_sub_parent_selector}

Switch Studio To Dev Studio
    Sleep  2s
    Wait Until Element Is Visible  ${app_header_switch_studio_dropdown}
    Select Dropdown Value   ${app_header_switch_studio_dropdown}    Dev Studio
    Sleep  2s

Preview The App Page
    Sleep  2s
    Unselect Frame
    Select Frame    ${app_iframe_parent_selector}
    Wait Until Element Is Visible   ${vrbank_header_preview_button}
    Click Element   ${vrbank_header_preview_button}
    Select Frame    ${app_iframe_sub_parent_selector}

Exit Preview The App Page
    Sleep  2s
    Unselect Frame
    Select Frame    ${app_iframe_parent_selector}
    Wait Until Element Is Visible   ${vrbank_header_exit_preview_button}
    Click Element   ${vrbank_header_exit_preview_button}
    Select Frame    ${app_iframe_sub_parent_selector}