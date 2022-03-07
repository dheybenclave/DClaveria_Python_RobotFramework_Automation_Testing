
*** Variables ***

#NOTE:  IT SHOULD BE PARENT SELECTOR OR THE DROPDOWN ITSELF NOT THE  ITEMS

#=NAVIGATION ============================================================================================================#
${vrbank_parent_selector} =                 xpath://div[@data-portalharnessinsname="Data-Portal!UserPortal"]
${vrbank_nav_parent_selector} =             ${vrbank_parent_selector}//aside[@data-skip-target="navigation"]

${vrbank_nav_logo_link}=                    ${vrbank_nav_parent_selector}//img[@data-ctl="Icon"]
${vrbank_nav_search_button}=                ${vrbank_nav_parent_selector}//button[contains(@name,"WorkSearchGadget")]
${vrbank_nav_create_case_button}=           ${vrbank_nav_parent_selector}//div[@data-tour-id="cm-create-case-menu"]
${vrbank_nav_create_case_deceased_customer_button}=  ${vrbank_nav_create_case_button}//ul[contains(@class,"menu-format-create-case-menu")]//li[@title="Deceased Customer"]

${vrbank_nav_sub_parent_selector} =         xpath://div[contains(@class,"menu-format-primary-navigation")]
${vrbank_nav_home_button}=                  ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_1"  or contains(@class,"menu-item-enabled")][1]
${vrbank_nav_dashboard_button}=             ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_2" or contains(@class,"menu-item-enabled")][2]
${vrbank_nav_spaces_button}=                ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_3" or contains(@class,"menu-item-enabled")][3]
${vrbank_nav_reports_button}=               ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_4" or contains(@class,"menu-item-enabled")][4]
${vrbank_nav_explore_data_button}=          ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_6" or contains(@class,"menu-item-enabled")][5]

${vrbank_nav_notification_button}=          ${vrbank_nav_parent_selector}//div[contains(@class,"user-menu")]//li[contains(@class,"menu-item-enabled")][1]
${vrbank_nav_recents_button}=               ${vrbank_nav_parent_selector}//div[contains(@class,"user-menu")]//li[contains(@class,"menu-item-enabled")][2]
${vrbank_nav_my_application_button}=        ${vrbank_nav_parent_selector}//div[contains(@class,"user-menu")]//li[contains(@class,"menu-item-enabled")][3]
${vrbank_nav_user_button}=                  ${vrbank_nav_parent_selector}//div[contains(@class,"operator-avatar")]

@{vrbank_nav_field_elements}=               ${vrbank_nav_logo_link}     ${vrbank_nav_search_button}     ${vrbank_nav_create_case_button}    ${vrbank_nav_home_button}     ${vrbank_nav_dashboard_button}     ${vrbank_nav_spaces_button}   ${vrbank_nav_reports_button}    ${vrbank_nav_explore_data_button}    ${vrbank_nav_notification_button}   ${vrbank_nav_recents_button}    ${vrbank_nav_my_application_button}     ${vrbank_nav_user_button}


#=HEADER ============================================================================================================#
${vrbank_header_parent_selector} =          ${vrbank_parent_selector}//header[contains(@class,"workarea-view-header")]

${vrbank_header_title_label} =              ${vrbank_header_parent_selector}//h1[@class="header-title"]

@{vrbank_header_field_elements}=            ${vrbank_header_parent_selector}    ${vrbank_header_title_label}

#=PULSE SECTION ============================================================================================================#
${vrbank_pulse_parent_selector} =           ${vrbank_parent_selector}//div[@data-node-id="pxFeed"]

${vrbank_pulse_header_title_label} =        ${vrbank_parent_selector}//span[@class="heading_2"]

@{vrbank_pulse_field_elements}=             ${vrbank_pulse_parent_selector}    ${vrbank_pulse_header_title_label}

#=BANNER SECTION ============================================================================================================#
${vrbank_banner_parent_selector} =          ${vrbank_parent_selector}//div[@data-node-id="WelcomeBanner"]

${vrbank_banner_header_title_label} =       ${vrbank_banner_parent_selector}//h2[@class="header-title"]
${vrbank_banner_discover_cosmos_button} =   ${vrbank_banner_parent_selector}//a[contains(@name,"WelcomeBanner")]

@{vrbank_banner_field_elements}=            ${vrbank_banner_parent_selector}    ${vrbank_banner_header_title_label}   ${vrbank_banner_discover_cosmos_button}


#=MY WORKLIST SECTION ============================================================================================================#
${vrbank_my_worklist_parent_selector} =     ${vrbank_parent_selector}//div[@data-node-id="HomeWorklist"]

${vrbank_my_worklist_header_title_label} =  ${vrbank_my_worklist_parent_selector}//span[@class="heading_3"]
${vrbank_my_worklist_count_item_label} =    ${vrbank_my_worklist_parent_selector}//div[contains(@class,"badge-counter")]
${vrbank_my_worklist_table} =               ${vrbank_my_worklist_parent_selector}//div[contains(@aria-describedby,"summaryIdentifier")]

@{vrbank_my_worklist_field_elements}=               ${vrbank_my_worklist_parent_selector}   ${vrbank_my_worklist_header_title_label}    ${vrbank_my_worklist_count_item_label}  ${vrbank_my_worklist_table}


#=MY ITEMS|FOLLOW SECTION ============================================================================================================#
${vrbank_items_follow_parent_selector} =     ${vrbank_parent_selector}//div[@data-node-id="pyFollowingWidget"]

${vrbank_items_follow_header_title_label} =  ${vrbank_items_follow_parent_selector}//h3[@class="header-title"]
${vrbank_items_follow_count_item_label} =     ${vrbank_items_follow_parent_selector}//span[@class="text-secondary"]

@{vrbank_items_follow_field_elements}=              ${vrbank_items_follow_parent_selector}   ${vrbank_items_follow_header_title_label}   ${vrbank_my_worklist_count_item_label}