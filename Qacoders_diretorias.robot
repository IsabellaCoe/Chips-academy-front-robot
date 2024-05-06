*** Settings ***
Documentation    Essa suíte testa o cadastro de diretorias no site do Qa Coders/Academy 
Resource    Qacoders_resourcesDiretoria.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 01: Cadastrar Diretoria com sucesso
    [Tags]    Cadastro Diretoria
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Diretorias
    Clicar em Novo Cadastro
    Inserir Nome da Diretoria 
    Clicar em Salvar Novo 
    
Caso de teste 02: Cadastro sem sucesso - nome fora do padrão- com números
    [Tags]    Cadastro Diretoria
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Diretorias
    Clicar em Novo Cadastro
    Inserir Nome fora do padrão- com números
    Clicar em Salvar Novo 
    Verificar mensagem de erro 
Caso de teste 03: Cadastro sem sucesso- Duplicidade de diretorias
    [Tags]    Cadastro Diretoria
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Diretorias
    Clicar em Novo Cadastro
    Inserir diretoria já cadatsrada
    Clicar em Salvar Novo 
    Verificar mensagem de diretoria já cadastrada no sistema 

Caso de teste 04: Campo nome diretoria obrigatório
     [Tags]    Cadastro Diretoria
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Diretorias
    Clicar em Novo Cadastro
    Clicar em Salvar Novo
    Verificar mensagem de campo obrigatório

