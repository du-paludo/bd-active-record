require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "Tabelas.sqlite3"

class Pedido < ActiveRecord::Base;
    validates :codigo, presence: { message: "do pedido deve ser preenchido" }
    validates :codigo, uniqueness: { message: "do pedido já existe" }
    validates :codigo, length: { is: 4, message: "do pedido deve conter 4 dígitos" }
    validates :codigo, numericality: { only_integer: true, message: "do pedido deve conter apenas números" }

    belongs_to :cliente
    has_and_belongs_to_many :produtos
end