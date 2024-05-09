*** Settings ***
Library    SeleniumLibrary


*** Variables *** 
${URL}          https://automacao.qacoders-academy.com.br/login
${EMAIL}        sysadmin@qacoders.com
${SENHA_ADM}    1234@Test  
${BROWSER}      Edge  
${DIRETORIA_JA_CADASTRADA}    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Não é possível salvar esse registro. Diretoria já cadastrada no sistema.')]
*** Keywords ***

Abrir o navegador    
    Open Browser    browser=${BROWSER} 
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser

    #Caso de teste 01: Cadastrar Diretoria com sucesso
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

 Clicar no menu Diretorias
    Click Element    locator=Diretorias
    Wait Until Element Is Visible    locator=Novo Cadastro
Clicar em Novo Cadastro
    Click Element    locator=Novo Cadastro
Inserir Nome da Diretoria  
    Click Element    locator=boardName
    Input Text    locator=boardName    text= Logistica
Clicar em Salvar Novo    
    Click Element    locator=save 
       
    #Caso de teste 02: Cadastro sem sucesso - Nome fora do padrão

Inserir nome fora do padrão- com números
    Click Element    locator=boardName
    Input Text    locator=boardName    text= Market1n6
Verificar mensagem de erro 
    Wait Until Element Is Visible    locator=//div[contains(@class,'MuiAlert-message css-1xsto0d')]        
    #Caso de teste 03: Cadastro sem sucesso- Duplicidade de diretorias        

Inserir diretoria já cadatsrada   
    Click Element    locator=boardName
    Input Text    locator=boardName    text=Logística
Verificar mensagem de diretoria já cadastrada no sistema 
    Wait Until Element Is Visible    locator=${DIRETORIA_JA_CADASTRADA}    

     #Caso de teste 04: Campo nome diretoria obrigatório
Verificar mensagem de campo obrigatório
    Page Should Contain Element    locator=//p[@class='css-bbipig'][contains(.,'O campo diretoria é obrigatório')]    

    #Caso de teste 05: Pesquisar diretoria por código
