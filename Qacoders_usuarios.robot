*** Settings ***
Documentation    Essa suíte testa o cadastro de novos Usuários no site do Qa Coders/Academy 
Resource    Qacoders_resourcesUsuarios.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

** Test Cases *** 
Caso de teste 01: Cadastrar um novo usuário com sucesso
    [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha
    Confirmar a senha
    Salvar novo usuario

Caso de teste 02: Cadastrar novo usuário sem sucesso- Nome com iniciais minúsculas
    [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo em letras minusculas
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha
    Confirmar a senha
    Salvar novo usuario
    Verificar mensagem de erro de nome fora dos critérios de aceite


Caso de teste 03: Cadastrar novo usuário sem sucesso- Nome com caracteres especiais 
     [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo com caracteres especiais
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha
    Confirmar a senha
    Salvar novo usuario
    Verificar mensagem de erro de nome fora dos critérios de aceite    

Caso de teste 04: Cadastrar novo usuário sem sucesso- Email fora dos critérios de aceite
    [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email sem @ 
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha
    Confirmar a senha
    Salvar novo usuario
    Verificar Mensagem de erro de email

Caso de teste 05: Cadastrar novo usuário sem sucesso- CPF com 12 dígitos
    [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF com 12 dígitos
    Inserir Senha
    Confirmar a senha
    Salvar novo usuario
    Verificar Mensagem de erro

Caso de teste 06: Cadastrar novo usuário sem sucesso- Senha sem número
    [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha fora dos critérios de aceite
    Confirmar a senha fora dos critérios de aceite
    Salvar novo usuario
    Verificar Mensagem de erro de senha fora dos critérios de aceite

Caso de teste 07: Cadastrar novo usuário sem sucesso- Senha sem caractere especial (@#$%)
     [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha sem caractere especial 
    Confirmar a senha sem caractere especial
    Salvar novo usuario
    Verificar Mensagem de erro de senha fora dos critérios de aceite  

Caso de teste 08: Cadastrar novo usuário sem sucesso- Senha com 7 dígitos
   [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha com 7 dígitos
    Confirmar a senha com 7 dígitos
    Salvar novo usuario
    Verificar Mensagem de erro de senha fora dos critérios de aceite

Caso de teste 09: Cadastrar novo usuário sem sucesso- Senha com 13 dígitos
    [Tags]    Cadastro usuário
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha com 13 dígitos
    Confirmar a senha com 13 dígitos
    Salvar novo usuario
    Verificar Mensagem de erro de senha fora dos critérios de aceite


Caso de teste 10: Cadastrar novo usuário sem sucesso- Senhas não conferem
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios
    Clicar no botão Novo cadastro
    Inserir nome completo
    Inserir email
    Inserir Perfil de Acesso
    Inserir CPF
    Inserir Senha
    Confirmar com senha diferente
    Salvar novo usuario
    Verificar mensagem de erro que as senhas não conferem

Caso de teste 11: Realizar logout da página
    Acessar a home page do site QaCoders
    Digitar email válido    
    Digitar senha válida
    Clicar em Entrar 
    Clicar no menu Cadastros
    Clicar no menu Usuarios  
    Clicar em Logout