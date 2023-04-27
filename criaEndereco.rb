require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 
 
ActiveRecord::Base.connection.create_table :enderecos do |t|  
    t.string :logradouro
    t.string :cep
    t.references :cliente, foreign_key: { on_delete: :cascade }
end