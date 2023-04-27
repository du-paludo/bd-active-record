$:.push './'
require 'produto.rb'

produto = Produto.new ({:nome => "Teclado", :preco => 40.00, :estoque => 10})
produto.save

produto = Produto.new ({:nome => "Mouse", :preco => 20.00, :estoque => 20})
produto.save

produto = Produto.new ({:nome => "Monitor", :preco => 200.00, :estoque => 5})
produto.save

produto = Produto.new ({:nome => "Impressora", :preco => 300.00, :estoque => 3})
produto.save

produto = Produto.new ({:nome => "HD", :preco => 100.00, :estoque => 12})
produto.save