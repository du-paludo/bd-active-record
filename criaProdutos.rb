require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 
 
ActiveRecord::Base.connection.create_table :produtos do |t|
    t.string :nome
    t.float :preco
    t.integer :estoque
end