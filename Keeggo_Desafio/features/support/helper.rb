module Helper
    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "reports/Teste_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        attach(foto, 'image/png')
    end

end