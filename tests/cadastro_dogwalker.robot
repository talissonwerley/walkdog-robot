*** Settings ***
Resource    ../resources/keywords.robot
Test Setup    Abrir o site
Test Teardown    Close Browser

*** Test Cases ***
Cadastro com sucesso
    [Tags]    positivo
    Preencher dados válidos
    Submeter formulário
    Mensagem deve conter    Recebemos o seu cadastro

CPF inválido
    [Tags]    negativo
    Preencher CPF inválido
    Submeter formulário
    Mensagem deve conter    CPF inválido

Email inválido
    [Tags]    negativo
    Preencher email inválido
    Submeter formulário
    Mensagem deve conter    Informe um email válido

Campos obrigatórios vazios
    [Tags]    negativo
    Não preencher nenhum campo
    Submeter formulário
    Mensagem deve conter    Informe o seu nome completo
    Mensagem deve conter    Informe o seu melhor email
    Mensagem deve conter    Informe o seu CPF
    Mensagem deve conter    Informe o seu CEP
    Mensagem deve conter    Informe um número maior que zero
    Mensagem deve conter    Adcione um documento com foto (RG ou CHN)
