Dado('que acesso o site') do
    @home = PaginaInicial.new
    @home.load
    sleep(5)
    expect(page).to have_current_path('https://www.advantageonlineshopping.com/#/', url: true)
    sleep(5)
end
  
Quando('clico no usuario') do
    @login_page = RealizarLoginPage.new
    @login_page.clicar_usuario
end
  
E('seleciono novo cadastro') do
    @cadastro_page = RealizarCadastroPage.new
    @cadastro_page.clico_botao_cadastro
end

E('preencho as informações de cadastro') do
    @cadastro_page = RealizarCadastroPage.new
    @cadastro_page.preencho_usuario_nome
    @cadastro_page.preencho_email
    @cadastro_page.preencho_senha
    @cadastro_page.preencho_confirma_senha
    @cadastro_page.preencho_nome
    @cadastro_page.preencho_sobrenome
    @cadastro_page.preencho_numero
    @cadastro_page.preencho_cidade
    @cadastro_page.preencho_pais
    @cadastro_page.preencho_endereco
    @cadastro_page.preencho_estado
    @cadastro_page.preencho_codigo_postal
    @cadastro_page.clico_botao_termos
end
  
E('clico para registrar') do
    @cadastro_page = RealizarCadastroPage.new
    @cadastro_page.clico_botao_registro
end
  
Entao('realizo o cadastro com sucesso') do
    @login_page = RealizarLoginPage.new
    @login_page.clicar_usuario
    #assert
    find('label[translate="My_account"]')
end