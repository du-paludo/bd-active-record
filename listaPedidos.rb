require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def lista_pedidos
    pedidos = Pedido.all
    pedidos.each do |pedido|
        puts "Código: #{pedido.codigo} Cliente: #{pedido.cliente.nome} #{pedido.cliente.sobrenome}"
    end
end