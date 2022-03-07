
*** Variables ***

#NOTE:  IT SHOULD BE PARENT SELECTOR OR THE DROPDOWN ITSELF NOT THE  ITEMS

#=CREATE DECEASED CUSTOMER DIALOG SECTION ===============================================================================#
${create_deceased_customer_parent_selector} =            xpath://fieldset[@class="mdc-fieldset"]//div[@node_name="pyCaseActionArea"]

${create_deceased_customer_header_title_label}=          ${create_deceased_customer_parent_selector}//h2[@class="header-title"]
${create_deceased_customer_close_button}=                ${create_deceased_customer_parent_selector}//button[@title="Close"]
${create_deceased_customer_customerNumber_textbox}=      ${create_deceased_customer_parent_selector}//input[contains(@name,"CustomerNumber")]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_fullName_textbox}=            ${create_deceased_customer_parent_selector}//input[contains(@name,"FullName")]/ancestor::div[contains(@class,"content-field")]

${create_deceased_customer_collectDeceasedCustomerDetails_selector}=     ${create_deceased_customer_parent_selector}//div[contains(@param_name,"CollectDeceasedCustomerDetails")]

${create_deceased_customer_address_textbox}=            ${create_deceased_customer_parent_selector}//input[contains(@name,"Address")]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_state_textbox}=              ${create_deceased_customer_parent_selector}//input[contains(@name,"State")]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_postCode_textbox}=           ${create_deceased_customer_parent_selector}//input[contains(@name,"Postcode")]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_dateOfBirth_textbox}=        ${create_deceased_customer_parent_selector}//input[contains(@name,"DateOfBirth")]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_dateOFDeath_textbox}=        ${create_deceased_customer_parent_selector}//input[contains(@name,"DateOfDeath")]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_maritalStatus_dropdown}=     ${create_deceased_customer_parent_selector}//select[contains(@name,"MaritalStatus")]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_cancel_button}=              ${create_deceased_customer_parent_selector}//button[contains(@name,"CaseActionAreaButtons") and text()="Cancel"]/ancestor::div[contains(@class,"content-field")]
${create_deceased_customer_create_button}=              ${create_deceased_customer_parent_selector}//button[contains(@name,"CaseActionAreaButtons") and text()="Create"]/ancestor::div[contains(@class,"content-field")]


@{create_deceased_customer_field_elements}=             ${create_deceased_customer_create_button}  ${create_deceased_customer_cancel_button}    ${create_deceased_customer_maritalStatus_dropdown}   ${create_deceased_customer_dateOFDeath_textbox}  ${create_deceased_customer_dateOfBirth_textbox}   ${create_deceased_customer_postCode_textbox}    ${create_deceased_customer_state_textbox}    ${create_deceased_customer_address_textbox}  ${create_deceased_customer_address_textbox}  ${create_deceased_customer_collectDeceasedCustomerDetails_selector}  ${create_deceased_customer_collectDeceasedCustomerDetails_selector}      ${create_deceased_customer_fullName_textbox}     ${create_deceased_customer_fullName_textbox}     ${create_deceased_customer_customerNumber_textbox}    ${create_deceased_customer_close_button}  ${create_deceased_customer_parent_selector}     ${create_deceased_customer_header_title_label}