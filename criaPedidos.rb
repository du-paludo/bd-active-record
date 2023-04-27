require 'rubygems' 
require 'active_record' 
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 
 
ActiveRecord::Base.connection.create_table :pedidos do |t|
    t.string     :codigo
    t.belongs_to :cliente, foreign_key: { on_delete: :cascade }
end