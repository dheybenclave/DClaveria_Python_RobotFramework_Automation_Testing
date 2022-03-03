
*** Variables ***

#=SIDE NAV ==========================================================================================================#

${side_nav_parent_selector}=      xpath://aside[@id="sidebar-region-one"]

${side_nav_recents_button}=       ${side_nav_parent_selector}//div[@role="tab" and @title="Recents"]
${side_nav_case_types_button}=    ${side_nav_parent_selector}//div[@role="tab" and @title="Case types"]
${side_nav_data_types_button}=    ${side_nav_parent_selector}//div[@role="tab" and @title="Data types"]
${side_nav_app_button}=           ${side_nav_parent_selector}//div[@role="tab" and @title="App"]
${side_nav_records_button}=       ${side_nav_parent_selector}//div[@role="tab" and @title="Records"]
${side_nav_favorites_button}=     ${side_nav_parent_selector}//div[@role="tab" and @title="Favorites"]


@{side_nav_field_elements}=   ${side_nav_recents_button}  ${side_nav_case_types_button}   ${side_nav_data_types_button}   ${side_nav_app_button}  ${side_nav_records_button}  ${side_nav_favorites_button}

#=TAB PANEL ==========================================================================================================#

${tab_panel_recents_section}=     ${side_nav_recents_button}/following::div[@role="tabpanel"][1]
${tab_panel_case_types_section}=  ${side_nav_case_types_button}/following::div[@role="tabpanel"][1]
${tab_panel_data_types_section}=  ${side_nav_data_types_button}following::div[@role="tabpanel"][1]
${tab_panel_app_section}=         ${side_nav_app_button}/following::div[@role="tabpanel"][1]
${tab_panel_records_section}=     ${side_nav_records_button}/following::div[@role="tabpanel"][1]
${tab_panel_favorites_section}=   ${side_nav_favorites_button}/following::div[@role="tabpanel"][1]

@{tab_panel_field_elements}=      ${tab_panel_recents_section}  ${tab_panel_case_types_section}  ${tab_panel_data_types_section}  ${tab_panel_app_section}  ${tab_panel_records_section}  ${tab_panel_favorites_section}

