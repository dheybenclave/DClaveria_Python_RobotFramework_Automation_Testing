
*** Variables ***

${login_parent_selector}=   xpath://div[@id="credentials"]

${login_mainScreen_user_textbox}=    ${login_parent_selector}//div[@class="field user"]//input
${login_mainScreen_password_textbox}=    ${login_parent_selector}//div[@class="field password"]//input
${login_mainScreen_login_button}=   ${login_parent_selector}//button[contains(@class,"loginButton")]

@{login_required_fields_elements}=  ${login_mainScreen_user_textbox}  ${login_mainScreen_password_textbox}  ${login_mainScreen_login_button}

${login_mainScreen_error_label}=   xpath://*[@class="errorMessage"]