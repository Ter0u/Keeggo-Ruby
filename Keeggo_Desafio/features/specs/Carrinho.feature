#language: pt

@Realizando_Cadastro
Funcionalidade: Adicionar e remover item do Carrinho

Cenario: Adicionar item no carrinho com sucesso
Dado que entro no site
Quando realizo o login
E clico nos fones
E seleciono o primeiro fone
Entao adiciono ele no carrinho

Cenario: Remover item do carrinho com sucesso
Dado que acesso a home do site
Quando logo no site
E entro no carrinho
E clico em remover o item do carrinho
Entao removo o item do carrinho com sucesso