*** Settings ***
Documentation    Essa suíte testa o Login do site do Qa Coders/Academy 
Resource    Qacoders_resourcesLogin.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

** Test Cases *** 
Caso de teste 01: Login admin com sucesso
    [Tags]    login
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar   

Caso de teste 02: Login admin com email inválido
    [Tags]    login
    Acessar a home page do site QaCoders
    Digitar email inválido
    Digitar senha válida
    Clicar em Entrar
    Verificar se a mensagem de erro apareceu

Caso de teste 03: Login admin com senha inválida
    [Tags]    login
    Acessar a home page do site QaCoders
    Digitar email válido
    Digitar senha inválida
    Clicar em Entrar
    Verificar se a mensagem de erro apareceu  

Caso de teste 04: Login com campo de email em branco
    [Tags]    login
    Acessar a home page do site QaCoders
    Digitar senha válida
    Clicar em Entrar
    Verificar se a mensagem de email obrigatório apareceu

Caso de teste 05: Login com campo de senha em branco 
    [Tags]    login   
    Acessar a home page do site QaCoders   
    Digitar email válido
    Clicar em Entrar
    Verificar se a mensagem de senha obrigatória apareceu

Caso de teste 06: Login com campos de email e senha em branco
    [Tags]    login
    Acessar a home page do site QaCoders    
    Clicar em Entrar
    Verificar se a mensagem de email obrigatório apareceu
    Verificar se a mensagem de senha obrigatória apareceu

 Caso de teste 07: Login com email e senha inválidos
     [Tags]    login
    Acessar a home page do site QaCoders  
    Digitar email inválido
    Digitar senha inválida
    Clicar em Entrar
    Verificar se a mensagem de erro apareceu      