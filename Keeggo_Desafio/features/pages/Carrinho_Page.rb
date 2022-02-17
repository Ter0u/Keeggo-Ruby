class CarrinhoPage < SitePrism::Page

    element :headphones, :xpath, "//div[@id='headphonesImg']"
    element :primeiro_head, :xpath, "//img[@id='15']"
    element :adicionar_carrinho, :xpath, "//button[@translate='ADD_TO_CART']"
    element :clicar_carrinho, :xpath, "//a[@id='shoppingCartLink']"
    element :botao_remover_item, :xpath, "//a[@class='remove red ng-scope']"


    def clico_fones
        headphones.click
        sleep(5)
    end


    def clicar_primeira_opcao
        primeiro_head.click
        sleep(5)
    end


    def adicionar_ao_carrinho
        adicionar_carrinho.click
        sleep(5)
    end


    def carrinho_compras
        clicar_carrinho.click
        sleep(5)
        find(:xpath, "//div[@id='shoppingCart']")
    end


    def remover_item_carrinho
        botao_remover_item.click
        sleep(5)
    end

    
    def confirmar_item_removido
        page.has_text?('Your shopping cart is empty')
        sleep(3)
    end
    
end