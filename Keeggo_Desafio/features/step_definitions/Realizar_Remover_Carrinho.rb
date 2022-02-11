Dado ('que acesso a home do site') do
    @home = PaginaInicial.new
    @home.load
    sleep(5)
    expect(page).to have_current_path('https://www.advantageonlineshopping.com/#/', url: true)
    sleep(5)

end


Quando ('logo no site') do
    @login_page = RealizarLoginPage.new
    @login_page.clicar_usuario
    #assert
    find('span[class="facebook ng-scope"]')
    @login_page.digito_usuario
    @login_page.digito_senha
    @login_page.clicar_login
    @login_page.clicar_usuario
    #assert
    find('label[translate="My_account"]')

end


E ('entro no carrinho') do
    @carrinho_page = CarrinhoPage.new
    @carrinho_page.carrinho_compras

end


E ('clico em remover o item do carrinho') do
    @carrinho_page = CarrinhoPage.new
    @carrinho_page.remover_item_carrinho

end


Entao ('removo o item do carrinho com sucesso') do
    @carrinho_page = CarrinhoPage.new
    @carrinho_page.confirmar_item_removido

end