require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def altera_pedido(comando)
    if comando.include?("pedido=")
        codigo = comando.split("pedido=")[1].split(" ")[0].gsub(/"/, '')
        pedido = Pedido.find_by_codigo(codigo)
        if pedido
            if comando.include?("codigo=")
                codigo = comando.split("codigo=")[1].split(" ")[0].gsub(/"/, '')
                pedido.codigo = codigo
            end
            if comando.include?("cpf=")
                cpf = comando.split("cpf=")[1].split(" ")[0].gsub(/"/, '')
                produto.cpf = cpf
            end
        
            if pedido.valid?
                pedido.save
            else
                puts pedido.errors.full_messages
            end
        else
            puts "Pedido #{codigo} não encontrado"
        end
    else
        puts "Código do pedido não informado"
    end
end