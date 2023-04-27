require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "Tabelas.sqlite3"

class Endereco < ActiveRecord::Base;
    validates :logradouro, :cep, presence: { message: "deve ser preenchido" }
    validates :cep, numericality: { only_integer: true, message: "deve conter apenas números"}
    validates :cep, length: { is: 8, message: "deve conter 8 dígitos" }

    belongs_to :cliente, dependent: :destroy
end