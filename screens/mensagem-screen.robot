*** Settings ***
Resource    abstract-screen.robot

*** Variables ***
${CONTACT}                Kate Bell
${MESSAGE}                Olá Kate
${CONTACT_LOCATOR}        xpath=//*[contains(@name, '${CONTACT}')]
${MESSAGE_LOCATOR}        xpath=//*[contains(@name, 'Your iMessage, ${MESSAGE}')]
${MESSAGE_TEXTFIELD}      accessibility_id=messageBodyField
${SEND_MESSAGE_BUTTON}    accessibility_id=sendButton
${MESSAGE_STATUS}         accessibility_id=Delivered

*** Keywords ***
Dado que clico no contato para enviar uma mensagem
    Click Element    ${CONTACT_LOCATOR}
Quando envio uma mensagem de texto
    Click Element    ${MESSAGE_TEXTFIELD}
    Input Text       ${MESSAGE_TEXTFIELD}   ${MESSAGE}
    Click Element    ${SEND_MESSAGE_BUTTON} 
Então devo visualizar a mensagem enviada na conversa com status de entregue
    Element Should Be Visible    ${MESSAGE_LOCATOR}
    Element Value Should Be      ${MESSAGE_STATUS}     Delivered
