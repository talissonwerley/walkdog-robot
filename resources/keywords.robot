*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://walkdog.vercel.app/signup
${DOCUMENTO}    ${EXECDIR}${/}test_data${/}document.png

*** Keywords ***

Abrir o site
    Open Browser    ${URL}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    css:input[name="name"]    timeout=15s

Fechar navegador
    Close Browser

Preencher dados válidos
    Input Text    css:input[name="name"]             João da Silva
    Input Text    css:input[name="email"]            joao@teste.com
    Input Text    css:input[name="cpf"]              12345678909
    Input Text    css:input[name="cep"]              01310930
    Click Button  css:input[value="Buscar CEP"]
    Sleep         2s
    Input Text    css:input[name="addressNumber"]    123
    Input Text    css:input[name="addressDetails"]   Apto 42
    Choose File   css:input[type="file"]             ${DOCUMENTO}

Submeter formulário
    Click Button  xpath=//button[contains(text(), "Cadastrar")]

Mensagem deve conter    [Arguments]    ${texto}
    Wait Until Page Contains    ${texto}

Preencher CPF inválido
    Input Text    css:input[name="name"]             Maria Teste
    Input Text    css:input[name="email"]            maria@teste.com
    Input Text    css:input[name="cpf"]              123456
    Input Text    css:input[name="cep"]              01310930
    Click Button  css:input[value="Buscar CEP"]
    Sleep         2s
    Input Text    css:input[name="addressNumber"]    456
    Choose File   css:input[type="file"]             ${DOCUMENTO}

Preencher email inválido
    Input Text    css:input[name="name"]             Carlos Teste
    Input Text    css:input[name="email"]            auehauehauehaeuah
    Input Text    css:input[name="cpf"]              98765432100
    Input Text    css:input[name="cep"]              01310930
    Click Button  css:input[value="Buscar CEP"]
    Sleep         2s
    Input Text    css:input[name="addressNumber"]    789
    Choose File   css:input[type="file"]             ${DOCUMENTO}

Não preencher nenhum campo
    # Nenhuma ação
    Wait Until Element Is Visible    css:button.button-register    timeout=10s
    Click Button  css:button.button-register