*** Settings ***
Library        SeleniumLibrary
Resource       CommonKeywords.robot

*** Keywords ***
user click register home page to future skill platfrom ${email} and ${first_name} and ${last_name} and ${tele_num} and ${new_Password} and ${confirm_password}

    CommonKeywords.Wait until element is ready then click element        xpath=//button[text()='สมัครสมาชิก']
    CommonKeywords.wait until element is ready then input text           name=email            ${email}
    CommonKeywords.wait until element is ready then input text           name=firstName        ${first_name}
    CommonKeywords.wait until element is ready then input text           name=lastName         ${last_name}
    CommonKeywords.wait until element is ready then input text           name=phoneNumber      ${tele_num}
    CommonKeywords.wait until element is ready then input text           name=newPassword      ${new_Password}
    CommonKeywords.wait until element is ready then input text           name=confirmPassword  ${confirm_password}
    CommonKeywords.Wait until element is ready then click element        xpath=//input[@type='checkbox' and @name='consent']
    CommonKeywords.Wait until element is ready then click element        xpath=//button[@type="submit" and text()="สมัครสมาชิก"]

future skill should display register page and display message as "${expected_message}"
#verify otp from message ${expected_message}
#ข้อ 1 เน้นการตรวจสอบข้อความบนหน้าจอเป็นหลัก เพื่อยืนยันว่าการแสดงข้อความตรงตามที่คาดหวัง
#ข้อ 2 เน้นตรวจสอบรหัส OTP จากข้อความที่ได้รับ ซึ่งต้องระบุวิธีการดึงและตรวจสอบ OTP
    CommonKeywords.wait until page contains element then verify text    ${expected_message}