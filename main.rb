$:.push './'

autoload :Cliente, './cliente.rb'
autoload :Endereco, './endereco.rb'
autoload :Pedido, './pedido.rb'
autoload :Produto, './produto.rb'

require 'insereCliente.rb'
require 'insereProduto.rb'
require 'inserePedido.rb'
require 'listaClientes.rb'
require 'listaProdutos.rb'
require 'listaPedidos.rb'
require 'listaPedidosProdutos.rb'
require 'alteraCliente.rb'
require 'alteraProduto.rb'
require 'alteraPedido.rb'
require 'excluiCliente.rb'
require 'excluiProduto.rb'
require 'excluiPedido.rb'
require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

loop do
    # Solicita ao usuário que informe o comando a ser executado
    puts("Informe o comando a ser executado (ou 'sair' para encerrar):")

    # Lê o comando informado pelo usuário
    comando = gets.chomp

    # Encerra o loop caso o usuário informe o comando 'sair'
    break if comando == "sair"
    
    if comando.start_with? "insere clientes"
        insere_cliente(comando)
    elsif comando.start_with? "insere produtos"
        insere_produto(comando)
    elsif comando.start_with? "insere pedidos"
        insere_pedido(comando)

    elsif comando.start_with? "lista clientes"
        lista_clientes()
    elsif comando.start_with? "lista pedidos produtos"
        lista_pedidos_produtos()
    elsif comando.start_with? "lista pedidos"
        lista_pedidos()
    elsif comando.start_with? "lista produtos"
        lista_produtos()

    elsif comando.start_with? "altera clientes"
        altera_cliente(comando)
    elsif comando.start_with? "altera produtos"
        altera_produto(comando)
    elsif comando.start_with? "altera pedidos"
        altera_pedido(comando)

    elsif comando.start_with? "exclui clientes"
        exclui_cliente(comando)
    elsif comando.start_with? "exclui produtos"
        exclui_produto(comando)
    elsif comando.start_with? "exclui pedidos"
        exclui_pedido(comando)

    # Se o comando não for reconhecido, exibe uma mensagem de erro
    else
        puts "Comando não reconhecido"
    end
end