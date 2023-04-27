require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def lista_pedidos_produtos
    pedidos = Pedido.all
    pedidos.each do |pedido|
        print "Pedido: #{pedido.codigo} -> "
        produtos = pedido.produtos
        produtos.each do |produto|
            print "#{produto.nome} "
        end
        puts
    end

    produtos = Produto.all
    produtos.each do |produto|
        print "Produto: #{produto.nome} -> "
        pedidos = produto.pedidos
        pedidos.each do |pedido|
            print "#{pedido.codigo} "
        end
        puts
    end
end