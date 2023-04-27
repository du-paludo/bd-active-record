require 'active_record'
 
ActiveRecord::Base.establish_connection :adapter => "sqlite3", 
    :database => "Tabelas.sqlite3" 

def exclui_cliente(comando)
    if comando.include?("cpf=")
        cpf = comando.split("cpf=")[1].split(" ")[0].gsub(/"/, '')
        cliente = Cliente.find_by_cpf(cpf)
        if cliente
            cliente.destroy
        else
            puts "Cliente com CPF #{cpf} não encontrado"
        end
    else
        puts "CPF não informado"
    end
end