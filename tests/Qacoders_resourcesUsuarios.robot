*** Settings ***
Library    SeleniumLibrary  

*** Variables ***
${URL}        https://automacao.qacoders-academy.com.br/login
${EMAIL}      sysadmin@qacoders.com
${SENHA_ADM}      1234@Test  
${CPF}        00100200345
${SENHA_NOVO_CADASTRO}    Test123#        

*** Keywords ***
Abrir o navegador    
    Open Browser    browser=Chrome
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser

    # Caso de teste 01: Cadastrar um novo usuário com sucesso
Acessar a home page do site QaCoders
    Go To    url=${URL} 
    Wait Until Element Is Visible    locator=//h3[contains(.,'Login')]
Digitar email válido 
    Input Text    locator=email   text=${EMAIL}
Digitar senha válida
    Input Text    locator=password     text=${SENHA_ADM}  
Clicar em Entrar 
    Click Element    locator=login
    Wait Until Element Is Visible    locator=//span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]    
Clicar no menu Cadastros
    Click Element    locator=//span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
Clicar no menu Usuarios
    Click Element    locator=//span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
    Wait Until Element Is Visible    locator=//button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
Clicar no botão Novo cadastro
    Click Element    locator=//button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
Inserir nome completo
    Click Element    locator=fullName
    Input Text    locator=fullName    text= Maria Seleste Silva
Inserir email    
    Click Element    locator=mail
    Input Text    locator=mail    text=cadastroteste@qacoders.com
Inserir Perfil de Acesso
    Click Element    locator=//input[contains(@name,'accessProfile')]
    Input Text    locator=//input[contains(@name,'accessProfile')]    text= ADMIN
 Inserir CPF
     Click Element    locator=//input[contains(@name,'cpf')]
     Input Text    locator=//input[contains(@name,'cpf')]    text=${CPF}
Inserir Senha
    Click Element    locator=//input[contains(@name,'password')]
    Input Password    locator=//input[contains(@name,'password')]   password=${SENHA_NOVO_CADASTRO}

Confirmar a senha
    Click Element    locator=//input[contains(@name,'confirmPassword')]
    Input Text    locator=//input[contains(@name,'confirmPassword')]    text=${SENHA_NOVO_CADASTRO} 
Salvar novo usuario
    Click Element    locator=save


    #Caso de teste 02: Cadastrar novo usuário sem sucesso- Nome com iniciais minúsculas

Inserir nome completo em letras minusculas
     Click Element    locator=fullName
    Input Text    locator=fullName    text= joao pereira gomes
 Verificar mensagem de erro de nome fora dos critérios de aceite
    Wait Until Element Is Visible    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais.')]

#Caso de teste 03: Cadastrar novo usuário sem sucesso- Nome com caracteres especiais  

Inserir nome completo com caracteres especiais
    Click Element    locator=fullName
    Input Text    locator=fullName    text= M@ria Seleste

#Caso de teste 04: Cadastrar novo usuário sem sucesso- Email fora dos critério de aceite

Inserir email sem @ 
    Click Element    locator=mail
    Input Text    locator=mail    text=Cadastrotesteqacoders.com
Verificar Mensagem de erro de email
    Wait Until Element Is Visible    locator=//p[@class='css-bbipig'][contains(.,'Email inválido')]

    #Caso de teste 05: Cadastrar novo usuário sem sucesso- CPF com 12 dígitos

Inserir CPF com 12 dígitos
     Click Element    locator=//input[contains(@name,'cpf')]
     Input Text    locator=//input[contains(@name,'cpf')]    text=001025478964
Verificar Mensagem de erro
    Wait Until Element Is Visible    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Deve preencher o CPF com 11 dígitos')]

    #Caso de teste 06: Cadastrar novo usuário sem sucesso- Senha sem número

Inserir Senha fora dos critérios de aceite
    Click Element    locator=//input[contains(@name,'password')]
    Input Password    locator=//input[contains(@name,'password')]   password=Testefront@
Confirmar a senha fora dos critérios de aceite
    Click Element    locator=//input[contains(@name,'confirmPassword')]
    Input Text    locator=//input[contains(@name,'confirmPassword')]    text=Testefront@
Verificar Mensagem de erro de senha fora dos critérios de aceite
    Wait Until Element Is Visible    locator=//div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]

    #Caso de teste 07: Cadastrar novo usuário sem sucesso- Senha sem caractere especial (@#$%)
Inserir Senha sem caractere especial
    Click Element    locator=//input[contains(@name,'password')]
    Input Password    locator=//input[contains(@name,'password')]   password=Testefront12  

Confirmar a senha sem caractere especial 
    Click Element    locator=//input[contains(@name,'confirmPassword')]
    Input Text    locator=//input[contains(@name,'confirmPassword')]    text=Testefront12  

    #Caso de teste 08: Cadastrar novo usuário sem sucesso- Senha com 7 dígitos
Inserir Senha com 7 dígitos
    Click Element    locator=//input[contains(@name,'password')]
    Input Password    locator=//input[contains(@name,'password')]   password=Test12#

Confirmar a senha com 7 dígitos
    Click Element    locator=//input[contains(@name,'confirmPassword')]
    Input Text    locator=//input[contains(@name,'confirmPassword')]    text=Test12#


    #Caso de teste 09: Cadastrar novo usuário sem sucesso- Senha com 13 dígitos

Inserir Senha com 13 dígitos 
    Click Element    locator=//input[contains(@name,'password')]
    Input Password    locator=//input[contains(@name,'password')]   password=Maisumteste1@

Confirmar a senha com 13 dígitos      
     Click Element    locator=//input[contains(@name,'confirmPassword')]
    Input Text    locator=//input[contains(@name,'confirmPassword')]    text=Maisumteste1@


    #Caso de teste 10: Cadastrar novo usuário sem sucesso- Senhas não conferem
Confirmar com senha diferente
    Click Element    locator=//input[contains(@name,'confirmPassword')]
    Input Text    locator=//input[contains(@name,'confirmPassword')]    text=Test1234@
Verificar mensagem de erro que as senhas não conferem
    Wait Until Page Contains    text=As senhas não conferem 

     #Caso de teste 11: Realizar logout da página   

Clicar em Logout 
    Click Element    locator=//button[@class='css-1nvbq2d'][contains(.,'Logout')]
    Wait Until Element Is Visible    locator=//h3[contains(.,'Login')]    