$:.push './'
require 'cliente.rb'
require 'pedido.rb'
require 'produto.rb'

pedido = Pedido.new ({:codigo => "0001"})
pedido.cliente = Cliente.find_by_cpf("28215750095")
pedido.save
pedido.produtos << [Produto.find_by_nome("Teclado"), Produto.find_by_nome("Mouse")]

pedido = Pedido.new ({:codigo => "0002"})
pedido.cliente = Cliente.find_by_cpf("28215750095")
pedido.save
pedido.produtos << [Produto.find_by_nome("Impressora"), Produto.find_by_nome("HD")]

pedido = Pedido.new ({:codigo => "0003"})
pedido.cliente = Cliente.find_by_cpf("33565750095")
pedido.save
pedido.produtos << [Produto.find_by_nome("Monitor"), Produto.find_by_nome("Impressora")]

pedido = Pedido.new ({:codigo => "0004"})
pedido.cliente = Cliente.find_by_cpf("33565750095")
pedido.save
pedido.produtos << [Produto.find_by_nome("Teclado")]

pedido = Pedido.new ({:codigo => "0005"})
pedido.cliente = Cliente.find_by_cpf("07199839324")
pedido.save
pedido.produtos << [Produto.find_by_nome("HD"), Produto.find_by_nome("Teclado")]

pedido = Pedido.new ({:codigo => "0006"})
pedido.cliente = Cliente.find_by_cpf("14147393624")
pedido.save
pedido.produtos << [Produto.find_by_nome("Mouse"), Produto.find_by_nome("Monitor")]

pedido = Pedido.new ({:codigo => "0007"})
pedido.cliente = Cliente.find_by_cpf("89552284570")
pedido.save
pedido.produtos << [Produto.find_by_nome("Impressora"), Produto.find_by_nome("HD")]