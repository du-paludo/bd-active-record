require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def lista_produtos()
    produtos = Produto.all
    produtos.each do |produto|
        puts "Nome: #{produto.nome}, Preço: #{produto.preco}, Estoque: #{produto.estoque}"
    end
end