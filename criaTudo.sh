rm -f Tabelas.sqlite3

echo "criaClientes..."
ruby criaClientes.rb 
echo "Ok"

echo "criaEndereco..."
ruby criaEndereco.rb
echo "Ok"

echo "criaPedidos..."
ruby criaPedidos.rb
echo "Ok"

echo "criaProdutos..."
ruby criaProdutos.rb 
echo "Ok"

echo "criaPedidoProduto..."
ruby criaPedidoProduto.rb
echo "Ok"

echo "populaClientes..."
ruby populaClientes.rb
echo "Ok"

echo "populaProdutos..."
ruby populaProdutos.rb
echo "Ok"

echo "populaPedidos..."
ruby populaPedidos.rb
echo "Ok"