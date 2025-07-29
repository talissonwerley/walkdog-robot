Construa testes automatizados com a ferramenta Robot Framework, conforme as orientações abaixo.

Funcionalidade: Cadastro de Dog Walkers

    Sendoum visitante do site que curte cuidar de pets
    Posso facer meus cadastro como Dog Walker
    Para que eu possa ter uma nova fonte de renda com essas atividades

Modelagemde dados:

| Seletor CSS                              | Nome em português (BR) | Status (habilitado?) | Obrigatório? |
| ---------------------------------------- | ---------------------- | -------------------- | ------------ |
| input[name="name"]                       | Nome completo          | Habilitado           | Sim          |
| input[name="email"]                      | E-mail                 | Habilitado           | Sim          |
| input[name="cpf"]                        | CPF                    | Habilitado           | Sim          |
| input[name="cep"]                        | CEP                    | Habilitado           | Sim          |
| input[name="addressStreet"]              | Rua                    | Desabilitado         | Sim          |
| input[name="addressNumber"]              | Número                 | Habilitado           | Sim          |
| input[name="addressDetails"]             | Complemento            | Habilitado           | Não          |
| input[name="addressDistrict"]            | Bairro                 | Desabilitado         | Sim          |
| input[name="addressCityUf"]              | Cidade/UF              | Desabilitado         | Sim          |
| input[type="button"][value="Buscar CEP"] | Botão "Buscar CEP"     | Habilitado           | Não          |
| input[type="file"][accept="image/*"]     | Upload de documento    | Habilitado           | Sim          |

Outros elementos da página de cadastro:
Para submeter o formulário de cadastro de Dog Walker, é importante clicar no botão "cadastrar"
O uploud do documento será feito com o arquivo document.png

Cenários de aceite:

Contexto:
Dado que visito o site Dog Walker
E que desejo me tornar um Dog Walker

Cenário: Cadastro de dog walker com sucesso
Quando submeto o formulario e cadastro com os meus dados pessoais
Então devo ver uma mensagem de sucesso informando que meu cadstro foi para análise

Cenário: CPF incorreto
Quando preencho o formulário iformando o cpf incorreto
então devo ver uma mensagem de alerta com o seguinte texto: "CPF inválido"

Cenário: Email incorreto
Quando preencho o formulário e informo uma email incorreto
Então dewvo ver uma mensagem de alerta com o seguinte texto? " Informe um email válido"

Cenário: Campos obrigatórios
Quando submeto o formulário sem preencher nenhum dos campos
Então devo ver mensagens de alerta informando que esses campos são obrigatórios
