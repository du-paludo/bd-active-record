require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def lista_clientes()
    clientes = Cliente.all
    clientes.each do |cliente|
        puts "CPF: #{cliente.cpf}, Nome: #{cliente.nome}, Sobrenome: #{cliente.sobrenome}"
        puts "Endereço: #{cliente.endereco.logradouro}, CEP: #{cliente.endereco.cep}"
        print "Pedidos:"
        cliente.pedidos.each do |pedido|
            print " #{pedido.codigo}"
        end
        puts
    end
end