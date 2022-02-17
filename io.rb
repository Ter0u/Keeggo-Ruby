class Usuario
    attr_accessor :nome, :senha, :email, :firstname, :lastname, :city, :endereco, :estado, :codigopostal

end

def write(usuario)
    enderecoArquivo = "usuarios.txt"
    File.open(enderecoArquivo,"w") do |out|
        for usuario in usuarios
            out.puts("#{usuario.nome};#{usuario.senha};#{usuario.email};#{firstname.lastname};#{usuario.city};#{usuario.endereco};#{usuario.estado};#{usuario.codigopostal}")
        end
    end

end


def read()
    enderecoArquivo = "usuarios.txt"
    File.readlines(enderecoArquivo).each do |linha|
        valores = linha.split(";")
        nome = valores[0]
        id = valores[1].to_i
        usuario = Usuario.new
        usuario.nome = nome
        usuario.senha = senha
        usuario.email = email
        usuario.firstname = firstname
        usuario.lastname = lastname
        usuario.city = city
        usuario.endereco = endereco
        usuario.estado = estado
        usuario.codigopostal = codigopostal
        
        puts("Nome: #{usuario.nome}, senha #{usuario.senha}, email #{usuario.email}, primeiro nome #{usuario.firstname}, sobrenome #{usuario.lastname}, cidade #{usuario.city}, endereço #{usuario.endereco}, estado #{usuario.estado} e o código postal #{usuario.codigopostal}")
    end

end