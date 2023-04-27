require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def exclui_pedido(comando)
    if comando.include?("codigo=")
        codigo = comando.split("codigo=")[1].split(" ")[0].gsub(/"/, '')
        pedido = Pedido.find_by_codigo(codigo)
        if pedido
            pedido.destroy
        else
            puts "Produto com código \"#{codigo}\" não encontrado"
        end
    else
        puts "Código do pedido não informado"
    end
end