$:.push './'
require 'cliente.rb'
require 'endereco.rb'

cliente = Cliente.new({:cpf => "28215750095", :nome => "Esther", :sobrenome => "Roberta"})
cliente.save
endereco = Endereco.new({:logradouro => "Alameda Portugal nº 447", :cep => "69915443"})
endereco.cliente = cliente
endereco.save

cliente = Cliente.new({:cpf => "33565750095", :nome => "Matheus", :sobrenome => "Silva"})
cliente.save
endereco = Endereco.new({:logradouro => "Rua 7 de Setembro nº 100", :cep => "34837211"})
endereco.cliente = cliente
endereco.save

cliente = Cliente.new({:cpf => "07199839324", :nome => "Vanessa", :sobrenome => "Lopes"})
cliente.save
endereco = Endereco.new({:logradouro => "Rua Padre Cícero nº 320", :cep => "69915443"})
endereco.cliente = cliente
endereco.save

cliente = Cliente.new({:cpf => "14147393624", :nome => "Eduardo", :sobrenome => "Pereira"})
cliente.save
endereco = Endereco.new({:logradouro => "Rua Yuri Gagarin nº 167", :cep => "35162422"})
endereco.cliente = cliente
endereco.save

cliente = Cliente.new({:cpf => "89552284570", :nome => "Sebastiana", :sobrenome => "Lima"})
cliente.save
endereco = Endereco.new({:logradouro => "Rua Doutora Maria Antila nº 125", :cep => "69915443"})
endereco.cliente = cliente
endereco.save