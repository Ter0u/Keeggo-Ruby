Dado ('que entro no site') do
    @home = PaginaInicial.new
    @home.load
    sleep(5)
    expect(page).to have_current_path('https://www.advantageonlineshopping.com/#/', url: true)
    sleep(5)

end


Quando ('realizo o login') do
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


E ('clico nos fones') do
    @carrinho_page = CarrinhoPage.new
    @carrinho_page.clico_fones

end

E ('seleciono o primeiro fone') do
    @carrinho_page = CarrinhoPage.new
    @carrinho_page.clicar_primeira_opcao

end


Entao ('adiciono ele no carrinho') do
    @carrinho_page = CarrinhoPage.new
    @carrinho_page.adicionar_ao_carrinho
    @carrinho_page.carrinho_compras

end