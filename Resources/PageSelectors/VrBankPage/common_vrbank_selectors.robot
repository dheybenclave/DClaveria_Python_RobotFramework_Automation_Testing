
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
${vrbank_nav_home_button}=                  ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_1"]
${vrbank_nav_dashboard_button}=             ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_2"]
${vrbank_nav_spaces_button}=                ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_3"]
${vrbank_nav_reports_button}=               ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_4"]
${vrbank_nav_explore_data_button}=          ${vrbank_nav_sub_parent_selector}//li[@data-test-id="dynamic-nav-menu_6"]

${vrbank_nav_notification_button}=          ${vrbank_nav_parent_selector}//li[@data-test-id="20190128163309085525808"]
${vrbank_nav_recents_button}=               ${vrbank_nav_parent_selector}//li[@data-test-id="20190128153409038839106"]
${vrbank_nav_my_application_button}=        ${vrbank_nav_parent_selector}//li[@data-test-id="201906140326310579553"]
${vrbank_nav_user_button}=                  ${vrbank_nav_parent_selector}//div[contains(@class,"operator-avatar")]

@{vrbank_nav_field_elements}=            ${vrbank_nav_logo_link}     ${vrbank_nav_search_button}     ${vrbank_nav_create_case_button}    ${vrbank_nav_home_button}     ${vrbank_nav_dashboard_button}     ${vrbank_nav_spaces_button}   ${vrbank_nav_reports_button}    ${vrbank_nav_explore_data_button}    ${vrbank_nav_notification_button}   ${vrbank_nav_recents_button}    ${vrbank_nav_my_application_button}     ${vrbank_nav_user_button}