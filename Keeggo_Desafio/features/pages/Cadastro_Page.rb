class CadastroPage < SitePrism::Page

    element :botao_cadastro, :xpath, "//a[@translate='CREATE_NEW_ACCOUNT']"
    element :nome, :xpath, "//input[@name='usernameRegisterPage']"
    element :email, :xpath, "//input[@name='emailRegisterPage']"
    element :senha, :xpath, "//input[@name='passwordRegisterPage']"
    element :confirma_senha, :xpath, "//input[@name='confirm_passwordRegisterPage']"
    element :primeiro_nome, :xpath, "//input[@name='first_nameRegisterPage']"
    element :sobrenome, :xpath, "//input[@name='last_nameRegisterPage']"
    element :numero_cel, :xpath, "//input[@name='phone_numberRegisterPage']"
    element :cidade, :xpath, "//input[@name='cityRegisterPage']"
    element :pais, :xpath, "//option[@label='Andora']"
    element :endereco, :xpath, "//input[@name='addressRegisterPage']"
    element :estado, :xpath, "//input[@name='state_/_province_/_regionRegisterPage']"
    element :codigo_postal, :xpath, "//input[@name='postal_codeRegisterPage']"    
    element :botao_termos, :xpath, "//input[@name='i_agree']"
    element :botao_registro, :xpath, "//button[@id='register_btnundefined']"


    def clico_botao_cadastro
        botao_cadastro.click
        sleep(5)

    end


    def preencho_usuario_nome
        nome.send_keys('boooba')
        sleep(3)

    end


    def preencho_email
        email.send_keys('fodao04@gmail.com')
        sleep(3)

    end


    def preencho_senha
        senha.send_keys('Abc123')
        sleep(3)

    end


    def preencho_confirma_senha
        confirma_senha.send_keys('Abc123')
        sleep(3)

    end


    def preencho_nome
        primeiro_nome.send_keys('Pineaapple')
        sleep(3)

    end
    

    def preencho_sobrenome
        sobrenome.send_keys('Applepen')
        sleep(3)

    end
    

    def preencho_numero
        numero_cel.send_keys('11 98734675')
        sleep(3)

    end


    def preencho_cidade
        cidade.send_keys('Barueri')
        sleep(3)

    end


    def preencho_pais
        pais.click
        sleep(3)

    end


    def preencho_endereco
        endereco.send_keys('Alameda Grajau 128')
        sleep(3)

    end


    def preencho_estado
        estado.send_keys('São Paulo')
        sleep(3)

    end


    def preencho_codigo_postal
        codigo_postal.send_keys('06454050')
        sleep(3)

    end


    def clico_botao_termos
        botao_termos.click
        sleep(3)

    end


    def clico_botao_registro
        botao_registro.click
        sleep(5)

    end
    
end