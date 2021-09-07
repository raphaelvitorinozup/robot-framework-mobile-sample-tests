*** Settings ***
Resource         ../setup/setup.robot
Resource         ../screens/mensagem-screen.robot

Test Setup       Inicializar Teste
Test Teardown    Finalizar Teste

*** Test Cases ***
Enviar mensagem para um contato
    Dado que clico no contato para enviar uma mensagem
    Quando envio uma mensagem de texto
    Então devo visualizar a mensagem enviada na conversa com status de entregue
    
