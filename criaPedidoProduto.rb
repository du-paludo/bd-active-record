require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 
 
ActiveRecord::Base.connection.create_table :pedidos_produtos, id: false do |t|
    t.references :pedido
    t.references :produto
end