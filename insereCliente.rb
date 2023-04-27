require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def insere_cliente(comando)
    if comando.include?("cpf=")
        cpf = comando.split("cpf=")[1].split(" ")[0].gsub(/"/, '')
    end

    if comando.include?("nome=")
        nome = comando.split("nome=")[1].split(" ")[0].gsub(/"/, '')
    end

    if comando.include?("sobrenome=")
        sobrenome = comando.split("sobrenome=\"")[1].split("\"")[0]
    end

    cliente = Cliente.new ({:cpf => cpf, :nome => nome, :sobrenome => sobrenome})

    if cliente.valid?
        cliente.save
    else
        puts cliente.errors.full_messages
    end

    if comando.include?("logradouro=")
        logradouro = comando.split("logradouro=\"")[1].split("\"")[0]
    end
    
    if comando.include?("cep=")
        cep = comando.split("cep=")[1].split(" ")[0].gsub(/"/, '')
    end

    endereco = Endereco.new ({ :logradouro => logradouro, :cep => cep})
    if endereco.valid?
        endereco.cliente = cliente
        endereco.save
    else
        puts endereco.errors.full_messages
    end
end