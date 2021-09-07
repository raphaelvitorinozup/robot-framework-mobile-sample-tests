*** Settings ***
Library    AppiumLibrary
*** Variables ***
${APP}                  com.apple.MobileSMS
${DEVICE_NAME}          iPhone 12 Pro Max
${UDID}                 # Emulator id
${AUTOMATION_NAME}      XCUITest
${PLATFORM_NAME}        iOS
${PLATFORM_VERSION}     14.5
${APPIUM_SERVER}        http://localhost:4723/wd/hub