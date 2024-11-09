*** Settings ***
Library        SeleniumLibrary

Resource       ../keywords/CommonKeywords.robot
Resource       ../keywords/RegisterKeywords.robot
Variables      ../resources/config/config.yaml
Variables      ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I Register New User to future skill
    when user click register home page to future skill platfrom ${email} and ${first_name} and ${last_name} and ${tele_num} and ${new_Password} and ${confirm_password}
    Then future skill should display register page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]    Capture Page Screenshot
