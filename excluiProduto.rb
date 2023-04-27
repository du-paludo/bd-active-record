require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def exclui_produto(comando)
    if comando.include?("nome=")
        nome = comando.split("nome=\"")[1].split("\"")[0]
        produto = Produto.find_by_nome(nome)
        if produto
            produto.destroy
        else
            puts "Produto \"#{nome}\" não encontrado"
        end
    else
        puts "Nome do produto não informado"
    end
end