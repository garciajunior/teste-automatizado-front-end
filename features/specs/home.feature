# language: pt


Funcionalidade: Realizar testes na pagina de compra da Submarino

Cenario: Home Page
  Dado que estou na Home Page
  Quando pesquiso por notebook
  Entao verifico se a seção notebook foi selecionado

Cenario: Escolher notebook
  Dado que escolho um notebook
  Entao seleciono o notebook
  
Cenario: Garantia estendida
  Dado que estou na pagina de garantia estendida
  Entao seleciono continuar

Cenario: Concluir Compra
  Dado que estou no meu carrinho
  E insiro o cep
  Entao seleciono concluir pedido
  