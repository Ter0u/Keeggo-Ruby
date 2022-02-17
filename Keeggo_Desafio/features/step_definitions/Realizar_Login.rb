Dado('que acesso ao site') do
    @home = PaginaInicial.new
    @home.load
    sleep(5)
    expect(page).to have_current_path('https://www.advantageonlineshopping.com/#/', url: true)
    sleep(5)

end


Quando('clico pra logar no site') do
    @login_page = LoginPage.new
    @login_page.verifica_login

end
    

E('preencho as informações de usuário e senha') do
    @login_page = LoginPage.new
    @login_page.digito_usuario
    @login_page.digito_senha

end
  

E('clico para realizar login') do
    @login_page = LoginPage.new
    @login_page.clicar_login

end
    

Entao('realizo o login com sucesso') do
    @login_page = LoginPage.new
    @login_page.verifica_login_feito

end
