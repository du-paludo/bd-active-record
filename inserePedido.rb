require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def insere_pedido(comando)
    if comando.include?("cpf=")
        cliente = Cliente.find_by_cpf(comando.split("cpf=")[1].split(" ")[0].gsub(/"/, ''))
        if cliente == nil
            puts "Cliente não encontrado"
            return
        end
    else
        puts "CPF não informado"
        return
    end

    if comando.include?("codigo=")
        codigo = comando.split("codigo=")[1].split(" ")[0].gsub(/"/, '')
    end

    pedido = Pedido.new ({:codigo => codigo})

    if pedido.valid?
        pedido.cliente = cliente
        pedido.save
    else
        puts pedido.errors.full_messages
        return
    end

    if comando.include?("produtos=")
        produtos = comando.split("produtos=")[1].split(" ")[0].gsub(/"/, '').split(",")
        # Para cada código de produto informado, verifica se o produto existe no banco de dados
        produtos.each do |nome|
            produto = Produto.find_by_nome(nome)
            if produto.nil?
                puts "Produto \"#{nome}\" não encontrado."
            else
                pedido.produtos << produto
            end
        end
    else
        puts "Pedido criado sem produtos"
    end
end