*** Settings ***
Resource    capabitilies.robot

*** Keywords *** 
Inicializar Teste
    Open Application            ${APPIUM_SERVER}
    ...                         app=${APP}
    ...                         deviceName=${DEVICE_NAME}
    ...                         udid=${UDID}
    ...                         automationName=${AUTOMATION_NAME}
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}

Finalizar Teste
    Capture Page Screenshot 
    Close Application