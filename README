O banco de dados criado implementa quatro classes: Cliente, Endereco, Produto e Pedido
Cada cliente possui (has_one) endereço, que pertence (belongs_to) a um cliente, implementando a relação 1x1 (um para um)
Cada cliente possui vários (has_many) pedidos, que pertencem (belongs_to) a um cliente, implementando a relação 1xn (um para muitos)
Cada produto está em vários pedidos, e cada pedido contém vários produtos, implementando a relação nxn (muitos para muitos)


Para iniciar o programa, execute o comando:
sh criaTudo.sh
Esse comando irá criar as tabelas para cada classe e, em seguida, inicializar alguns registros em cada tabela

Para fazer alterações no banco de dados, execute o programa principal:
ruby main.rb

Para inserir um cliente, digite:
insere clientes cpf="..." nome="..." sobrenome="..." logradouro="..." cep="..."
O campo CPF é obrigatório, único e deve conter 11 dígitos
Os campos Nome e Sobrenome são obrigatórios e devem conter entre 2 e 50 caracteres
Os campos Logradouro e CEP, da classe Endereco, são obrigatórios
O campo CEP deve conter 8 dígitos

Para inserir um produto, digite:
insere produtos nome="..." preco="..." estoque="..." pedidos="...,..."
O campo Nome é obrigatório e deve ser único
O campo Preço é obrigatório e deve ser um número
O campo Estoque é opcional
O campo Pedidos é opcional, mas se for incluído deve conter os códigos dos pedidos em que o produto deve ser incluído, separados por vírgula

Para inserir um pedido, digite:
insere pedidos cpf="..." codigo="..." produtos="...,..."
O campo CPF é obrigatório e deve conter o CPF do cliente a quem pertence o pedido
O campo Código é obrigatório, único e deve conter 4 dígitos
O campo Produtos é opcional, mas se for incluído deve conter os nomes dos produtos que devem ser incluídos no pedido, separados por vírgula

Para alterar um cliente, digite:
altera clientes cliente="..." cpf="..." nome="..." sobrenome="..." logradouro="..." cep="..."
O campo Cliente deve conter o CPF do cliente que se deseja alterar
Os outros campos são opcionais e indicam o atributo a ser alterado no cliente

Para alterar um produto, digite:
altera produtos produto="..." nome="..." preco="..."
O campo Produto deve conter o nome do produto que se deseja alterar
Os outros campos são opcionais e indicam o atributo a ser alterado no produto

Para alterar um pedido, digite:
altera pedidos pedido="..." cpf="..." codigo="..."
O campo Produto deve conter o nome do produto que se deseja alterar
Os outros campos são opcionais e indicam o atributo a ser alterado no pedido

Para excluir um cliente, digite:
exclui clientes cpf="..."
O campo CPF contém o CPF do cliente que se deseja excluir

Para excluir um produto, digite:
exclui produtos nome="..."
O campo Nome contém o nome do produto que se deseja excluir

Para excluir um pedido, digite:
exclui pedidos codigo="..."
O campo Código contém o código do pedido que se deseja excluir

Para listar os clientes, digite:
lista clientes

Para listar os pedidos, digite:
lista pedidos

Para listar os produtos, digite:
lista produtos

Para listar a relação entre pedidos e produtos, digite:
lista pedidos produtos


Detalhe: ao apagar um cliente, seu endereço e pedidos também são excluídos. No entanto, ao apagar um pedido, o cliente não é excluído.
Ao excluir um produto, o produto é removido dos pedidos que o contém. Ao excluir um pedido, o pedido é excluído da lista de pedidos relacionada a um produto.