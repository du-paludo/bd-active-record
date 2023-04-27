require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def altera_cliente(comando)
    if comando.include?("cliente=")
        cpf = comando.split("cliente=")[1].split(" ")[0].gsub(/"/, '')
        cliente = Cliente.find_by_cpf(cpf)
        if cliente
            if comando.include?("cpf=")
                nome = comando.split("cpf=")[1].split(" ")[0].gsub(/"/, '')
                cliente.cpf = cpf
            end
            if comando.include?("nome=")
                nome = comando.split("nome=")[1].split(" ")[0].gsub(/"/, '')
                cliente.nome = nome
            end
            if comando.include?("sobrenome=")
                sobrenome = comando.split("sobrenome=\"")[1].split("\"")[0]
                cliente.sobrenome = sobrenome
            end

            if comando.include?("logradouro=")
                logradouro = comando.split("logradouro=\"")[1].split("\"")[0]
                cliente.endereco.logradouro = logradouro
            end
            if comando.include?("cep=")
                cep = comando.split("cep=")[1].split(" ")[0].gsub(/"/, '')
                cliente.endereco.cep = cep
            end

            if cliente.valid?
                cliente.save
            else
                puts cliente.errors.full_messages
            end

            if cliente.endereco.valid?
                cliente.endereco.save
            else
                puts cliente.endereco.errors.full_messages
            end
        else
            puts "Cliente com CPF #{cpf} não encontrado"
        end
    else
        puts "CPF não informado"
    end
end