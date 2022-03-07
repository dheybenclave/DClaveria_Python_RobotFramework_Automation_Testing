*** Settings ***
Documentation       Tasks/Command for TextBox
Library             SeleniumLibrary
Resource            ../../Resources/CommonGlobal.robot

*** Variables ***

${dropdown_menu_parent_selectors}=     xpath://div[contains(@class,"content-default dropdown-menu")]
${dropdown_menu_item_selectors}=     ${dropdown_menu_parent_selectors}//div[contains(@class,"content-item")]//span[@class="menu-item-title"]

${menu_panel_wrapper_parent_selectors}=     xpath://div[contains(@class,"menu-panel-wrapper")]
${menu_panel_wrapper_item_selectors}=     ${menu_panel_wrapper_parent_selectors}//ul[@style="display: block;"]//li[contains(@class,"menu-item-enabled")]//span[@class="menu-item-title"]


${DEFAULT_TIMEOUT}=  5s

*** Keywords ***

Select Dropdown Value
    [Arguments]     ${dropdown_selector}   ${dropdown_item_value}

    scroll element into view    ${dropdown_selector}
    element should be visible   ${dropdown_selector}
    element should be enabled   ${dropdown_selector}

    click element   ${dropdown_selector}

    # GET Value Attribute Class of the Selector
    ${attr_class_selector} =   Get Element Attribute    ${dropdown_selector}   class

    ${is_studio_selector} =    Run Keyword And Return Status    Should Contain    ${attr_class_selector}    Application_name

    ${selected_dropdown_item}=  set variable     ${None}

    ${selected_dropdown_item} =  Set Variable If
    ...  "${is_studio_selector}"=="True"    ${dropdown_menu_item_selectors}\[text()="${dropdown_item_value}"]
    ...  "${is_studio_selector}"=="False"   ${menu_panel_wrapper_item_selectors}\[text()="${dropdown_item_value}"]

    Wait Until Element Is Visible   ${selected_dropdown_item}       ${DEFAULT_TIMEOUT}
    Wait Until Element Is Enabled   ${selected_dropdown_item}       ${DEFAULT_TIMEOUT}

    click element  ${selected_dropdown_item}

    Wait Until Element Is Not Visible  ${selected_dropdown_item}    ${DEFAULT_TIMEOUT}

    Sleep   1s

Select Dropdown By
    [Arguments]  ${value_index_label}   ${dropdown_selector}   ${dropdown_item_value}

    scroll element into view    ${dropdown_selector}
    element should be visible   ${dropdown_selector}
    element should be enabled   ${dropdown_selector}


    #//div[contains(@class,"content-item")]//span[@class="menu-item-title" and text()="Dev Studio"]

    ${select_by}=   convert to lower case  ${value_index_label}

    IF  '${select_by}' == 'value'
        select from list by value   ${dropdown_selector}   ${dropdown_item_value}
    ELSE IF  '${select_by}' == 'index'
         select from list by index   ${dropdown_selector}   ${dropdown_item_value}
    ELSE
        select from list by label   ${dropdown_selector}   ${dropdown_item_value}
    END

    Sleep   1s


Select Birth of Date
    [Arguments]    ${parent_selector}   ${birth_date_value}

#    ${list_birthday}=   split string  ${birth_date_value}   /
#    ${get_mm}=      set variable  ${list_birthday}[0]
#    my logger  ${list_birthday}-${get_mm}

    ${get_mm}=      split string return by index  ${birth_date_value}   /  0
    ${get_dd}=      split string return by index  ${birth_date_value}   /  1
    ${get_yyyy}=    split string return by index  ${birth_date_value}   /  2
    my logger  ${get_mm}-${get_dd}-${get_yyyy}


    #Month
    Select Dropdown By  Index  ${parent_selector}//select[@name="DateOfBirthMonth"]    ${get_mm}
    #Date
    Select Dropdown Value   ${parent_selector}//select[@name="DateOfBirthDay"]  ${get_dd}
    #Year
    Select Dropdown Value  ${parent_selector}//select[@name="DateOfBirthYear"]  ${get_yyyy}

    Sleep   1s