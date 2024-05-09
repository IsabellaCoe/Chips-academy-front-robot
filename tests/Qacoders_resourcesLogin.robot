*** Settings ***
Library    SeleniumLibrary  


*** Variables ***
${URL}          https://automacao.qacoders-academy.com.br/login
${LOGIN}        //h3[contains(.,'Login')]
${EMAIL_ADM}    sysadmin@qacoders.com
${SENHA_ADM}    1234@Test  

*** Keywords ***
Abrir o navegador    
    Open Browser    browser=Edge
Fechar o navegador
    Capture Page Screenshot
    Close Browser

         # Caso de teste 01: 
Acessar a home page do site QaCoders
    Go To    url=${URL} 
    Wait Until Element Is Visible    locator=${LOGIN}
Digitar email válido 
    Input Text    locator=email   text=${EMAIL_ADM}
Digitar senha válida
    Input Text    locator=password     text=${SENHA_ADM}  
Clicar em Entrar 
    Click Element    locator=login


        # Caso de teste 02  
Digitar email inválido
    Input Text    locator=email    text=Testedois@qacoders.com

Verificar se a mensagem de erro apareceu
    Wait Until Element Is Visible    locator=//div[@class='MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 MuiAlert-root MuiAlert-standardError MuiAlert-standard css-laiely'][contains(.,'E')]


    # Caso de teste 03
Digitar senha inválida
    Input Text    locator=password     text=1234@Testando 

    # Caso de teste 04
Verificar se a mensagem de email obrigatório apareceu
    Wait Until Element Is Visible    locator=//p[@class='css-18xtib3'][contains(.,'O email é obrigatório')]
   
     # Caso de teste 05
Verificar se a mensagem de senha obrigatória apareceu 
    Wait Until Element Is Visible    locator=//p[@class='css-18xtib3'][contains(.,'A senha é obrigatória')]    