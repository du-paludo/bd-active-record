require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3"

def insere_produto(comando)
    if comando.include?("nome=")
        nome = comando.split("nome=")[1].split(" ")[0].gsub(/"/, '')
    end

    if comando.include?("preco=")
        preco = comando.split("preco=")[1].split(" ")[0].gsub(/"/, '')
    end

    if comando.include?("estoque=")
        estoque = comando.split("estoque=")[1].split(" ")[0].gsub(/"/, '')
    end

    produto = Produto.new ({:nome => nome, :preco => preco, :estoque => estoque})

    if produto.valid?
        produto.save
    else
        puts produto.errors.full_messages
    end

    if comando.include?("pedidos=")
        pedidos = comando.split("pedidos=")[1].split(" ")[0].gsub(/"/, '').split(",")
        # Para cada código de produto informado, verifica se o produto existe no banco de dados
        pedidos.each do |pedido|
            pedido = pedido.find_by_codigo(codigo)
            if pedido.nil?
                puts "Pedido com código \"#{codigo}\" não encontrado."
            else
                produto.pedidos << pedido
            end
        end
    end
end