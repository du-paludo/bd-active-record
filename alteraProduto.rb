require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def altera_produto(comando)
    if comando.include?("produto=")
        nome = comando.split("produto=")[1].split(" ")[0].gsub(/"/, '')
        produto = Produto.find_by_nome(nome)
        if produto
            if comando.include?("nome=")
                nome = comando.split("nome=")[1].split(" ")[0].gsub(/"/, '')
                produto.nome = nome
            end
            if comando.include?("preco=")
                preco = comando.split("preco=")[1].split(" ")[0].gsub(/"/, '')
                produto.preco = preco
            end
        
            if produto.valid?
                produto.save
            else
                puts produto.errors.full_messages
            end
        else
            puts "Produto #{nome} não encontrado"
        end
    else
        puts "Nome do produto não informado"
    end
end